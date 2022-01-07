
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct i2400m_pld {int dummy; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;
typedef enum i2400m_pt { ____Placeholder_i2400m_pt } i2400m_pt ;






 int d_dump (int,struct device*,void const*,size_t) ;
 int d_printf (int,struct device*,char*,size_t,...) ;
 int dev_err (struct device*,char*,int) ;
 struct device* i2400m_dev (struct i2400m*) ;
 int i2400m_net_rx (struct i2400m*,struct sk_buff*,unsigned int,void const*,size_t) ;
 size_t i2400m_pld_size (struct i2400m_pld const*) ;
 int i2400m_pld_type (struct i2400m_pld const*) ;
 int i2400m_rx_ctl (struct i2400m*,struct sk_buff*,void const*,size_t) ;
 int i2400m_rx_edata (struct i2400m*,struct sk_buff*,unsigned int,void const*,size_t) ;
 int i2400m_rx_trace (struct i2400m*,void const*,size_t) ;
 int printk_ratelimit () ;

__attribute__((used)) static
void i2400m_rx_payload(struct i2400m *i2400m, struct sk_buff *skb_rx,
         unsigned single_last, const struct i2400m_pld *pld,
         const void *payload)
{
 struct device *dev = i2400m_dev(i2400m);
 size_t pl_size = i2400m_pld_size(pld);
 enum i2400m_pt pl_type = i2400m_pld_type(pld);

 d_printf(7, dev, "RX: received payload type %u, %zu bytes\n",
   pl_type, pl_size);
 d_dump(8, dev, payload, pl_size);

 switch (pl_type) {
 case 130:
  d_printf(3, dev, "RX: data payload %zu bytes\n", pl_size);
  i2400m_net_rx(i2400m, skb_rx, single_last, payload, pl_size);
  break;
 case 131:
  i2400m_rx_ctl(i2400m, skb_rx, payload, pl_size);
  break;
 case 128:
  i2400m_rx_trace(i2400m, payload, pl_size);
  break;
 case 129:
  d_printf(3, dev, "ERX: data payload %zu bytes\n", pl_size);
  i2400m_rx_edata(i2400m, skb_rx, single_last, payload, pl_size);
  break;
 default:
  if (printk_ratelimit())
   dev_err(dev, "RX: HW BUG? unexpected payload type %u\n",
    pl_type);
 }
}
