
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ethoc {int dummy; } ;


 int MODER ;
 int MODER_RXEN ;
 int MODER_TXEN ;
 int ethoc_read (struct ethoc*,int ) ;
 int ethoc_write (struct ethoc*,int ,int) ;

__attribute__((used)) static inline void ethoc_enable_rx_and_tx(struct ethoc *dev)
{
 u32 mode = ethoc_read(dev, MODER);
 mode |= MODER_RXEN | MODER_TXEN;
 ethoc_write(dev, MODER, mode);
}
