
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ethoc {int dummy; } ;


 int INT_MASK_ALL ;
 int IPGT ;
 int MODER ;
 int MODER_CRC ;
 int MODER_FULLD ;
 int MODER_PAD ;
 int ethoc_ack_irq (struct ethoc*,int ) ;
 int ethoc_disable_rx_and_tx (struct ethoc*) ;
 int ethoc_enable_irq (struct ethoc*,int ) ;
 int ethoc_enable_rx_and_tx (struct ethoc*) ;
 int ethoc_read (struct ethoc*,int ) ;
 int ethoc_write (struct ethoc*,int ,int) ;

__attribute__((used)) static int ethoc_reset(struct ethoc *dev)
{
 u32 mode;



 ethoc_disable_rx_and_tx(dev);




 mode = ethoc_read(dev, MODER);
 mode |= MODER_CRC | MODER_PAD;
 ethoc_write(dev, MODER, mode);


 mode = ethoc_read(dev, MODER);
 mode |= MODER_FULLD;
 ethoc_write(dev, MODER, mode);
 ethoc_write(dev, IPGT, 0x15);

 ethoc_ack_irq(dev, INT_MASK_ALL);
 ethoc_enable_irq(dev, INT_MASK_ALL);
 ethoc_enable_rx_and_tx(dev);
 return 0;
}
