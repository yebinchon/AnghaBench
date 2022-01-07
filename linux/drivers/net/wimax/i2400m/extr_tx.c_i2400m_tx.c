
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2400m_msg_hdr {scalar_t__ num_pls; scalar_t__ size; TYPE_1__* pld; } ;
struct i2400m {void* tx_buf; int (* bus_tx_kick ) (struct i2400m*) ;int tx_lock; struct i2400m_msg_hdr* tx_msg; int bus_tx_block_size; } ;
struct device {int dummy; } ;
typedef enum i2400m_pt { ____Placeholder_i2400m_pt } i2400m_pt ;
struct TYPE_2__ {int val; } ;


 size_t ALIGN (size_t,int ) ;
 int ENOSPC ;
 int ESHUTDOWN ;
 int I2400M_PL_ALIGN ;
 int I2400M_PT_RESET_COLD ;
 int I2400M_PT_RESET_WARM ;
 scalar_t__ I2400M_TX_MSG_SIZE ;
 void* TAIL_FULL ;
 int d_fnend (int,struct device*,char*,struct i2400m*,void const*,size_t,int,int) ;
 int d_fnstart (int,struct device*,char*,struct i2400m*,void const*,size_t,int) ;
 int d_printf (int,struct device*,char*,...) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_pld_set (TYPE_1__*,size_t,int) ;
 int i2400m_tx_close (struct i2400m*) ;
 void* i2400m_tx_fifo_push (struct i2400m*,size_t,int ,int) ;
 int i2400m_tx_fits (struct i2400m*) ;
 int i2400m_tx_new (struct i2400m*) ;
 int i2400m_tx_skip_tail (struct i2400m*) ;
 void* le16_to_cpu (unsigned int) ;
 int le32_to_cpu (int ) ;
 scalar_t__ likely (int) ;
 int memcpy (void*,void const*,size_t) ;
 int memset (void*,int,size_t) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct i2400m*) ;
 scalar_t__ unlikely (int) ;

int i2400m_tx(struct i2400m *i2400m, const void *buf, size_t buf_len,
       enum i2400m_pt pl_type)
{
 int result = -ENOSPC;
 struct device *dev = i2400m_dev(i2400m);
 unsigned long flags;
 size_t padded_len;
 void *ptr;
 bool try_head = 0;
 unsigned is_singleton = pl_type == I2400M_PT_RESET_WARM
  || pl_type == I2400M_PT_RESET_COLD;

 d_fnstart(3, dev, "(i2400m %p skb %p [%zu bytes] pt %u)\n",
    i2400m, buf, buf_len, pl_type);
 padded_len = ALIGN(buf_len, I2400M_PL_ALIGN);
 d_printf(5, dev, "padded_len %zd buf_len %zd\n", padded_len, buf_len);



 spin_lock_irqsave(&i2400m->tx_lock, flags);

 if (i2400m->tx_buf == ((void*)0)) {
  result = -ESHUTDOWN;
  goto error_tx_new;
 }
try_new:
 if (unlikely(i2400m->tx_msg == ((void*)0)))
  i2400m_tx_new(i2400m);
 else if (unlikely(!i2400m_tx_fits(i2400m)
     || (is_singleton && i2400m->tx_msg->num_pls != 0))) {
  d_printf(2, dev, "closing TX message (fits %u singleton "
    "%u num_pls %u)\n", i2400m_tx_fits(i2400m),
    is_singleton, i2400m->tx_msg->num_pls);
  i2400m_tx_close(i2400m);
  i2400m_tx_new(i2400m);
 }
 if (i2400m->tx_msg == ((void*)0))
  goto error_tx_new;






 if (i2400m->tx_msg->size + padded_len > I2400M_TX_MSG_SIZE) {
  d_printf(2, dev, "TX: message too big, going new\n");
  i2400m_tx_close(i2400m);
  i2400m_tx_new(i2400m);
 }
 if (i2400m->tx_msg == ((void*)0))
  goto error_tx_new;


 ptr = i2400m_tx_fifo_push(i2400m, padded_len,
      i2400m->bus_tx_block_size, try_head);
 if (ptr == TAIL_FULL) {
  d_printf(2, dev, "pl append: tail full\n");
  i2400m_tx_close(i2400m);
  i2400m_tx_skip_tail(i2400m);
  try_head = 1;
  goto try_new;
 } else if (ptr == ((void*)0)) {
  result = -ENOSPC;
  d_printf(2, dev, "pl append: all full\n");
 } else {
  struct i2400m_msg_hdr *tx_msg = i2400m->tx_msg;
  unsigned num_pls = le16_to_cpu(tx_msg->num_pls);
  memcpy(ptr, buf, buf_len);
  memset(ptr + buf_len, 0xad, padded_len - buf_len);
  i2400m_pld_set(&tx_msg->pld[num_pls], buf_len, pl_type);
  d_printf(3, dev, "pld 0x%08x (type 0x%1x len 0x%04zx\n",
    le32_to_cpu(tx_msg->pld[num_pls].val),
    pl_type, buf_len);
  tx_msg->num_pls = le16_to_cpu(num_pls+1);
  tx_msg->size += padded_len;
  d_printf(2, dev, "TX: appended %zu b (up to %u b) pl #%u\n",
   padded_len, tx_msg->size, num_pls+1);
  d_printf(2, dev,
    "TX: appended hdr @%zu %zu b pl #%u @%zu %zu/%zu b\n",
    (void *)tx_msg - i2400m->tx_buf, (size_t)tx_msg->size,
    num_pls+1, ptr - i2400m->tx_buf, buf_len, padded_len);
  result = 0;
  if (is_singleton)
   i2400m_tx_close(i2400m);
 }
error_tx_new:
 spin_unlock_irqrestore(&i2400m->tx_lock, flags);


 if (likely(result != -ESHUTDOWN))
  i2400m->bus_tx_kick(i2400m);
 d_fnend(3, dev, "(i2400m %p skb %p [%zu bytes] pt %u) = %d\n",
  i2400m, buf, buf_len, pl_type, result);
 return result;
}
