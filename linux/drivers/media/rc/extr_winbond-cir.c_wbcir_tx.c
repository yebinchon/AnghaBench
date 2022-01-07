
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wbcir_data {scalar_t__ txstate; unsigned int* txbuf; unsigned int txlen; int spinlock; scalar_t__ txoff; } ;
struct rc_dev {struct wbcir_data* priv; } ;


 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;
 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ WBCIR_TXSTATE_INACTIVE ;
 int kfree (unsigned int*) ;
 unsigned int* kmalloc_array (unsigned int,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wbcir_irq_tx (struct wbcir_data*) ;

__attribute__((used)) static int
wbcir_tx(struct rc_dev *dev, unsigned *b, unsigned count)
{
 struct wbcir_data *data = dev->priv;
 unsigned *buf;
 unsigned i;
 unsigned long flags;

 buf = kmalloc_array(count, sizeof(*b), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;


 for (i = 0; i < count; i++)
  buf[i] = DIV_ROUND_CLOSEST(b[i], 10);


 spin_lock_irqsave(&data->spinlock, flags);
 if (data->txstate != WBCIR_TXSTATE_INACTIVE) {
  spin_unlock_irqrestore(&data->spinlock, flags);
  kfree(buf);
  return -EBUSY;
 }


 data->txbuf = buf;
 data->txlen = count;
 data->txoff = 0;
 wbcir_irq_tx(data);


 spin_unlock_irqrestore(&data->spinlock, flags);
 return count;
}
