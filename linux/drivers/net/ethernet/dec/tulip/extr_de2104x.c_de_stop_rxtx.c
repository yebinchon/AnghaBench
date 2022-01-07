
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct de_private {int dev; } ;


 int MacMode ;
 int RxTx ;
 int de_is_running (struct de_private*) ;
 int dr32 (int ) ;
 int dw32 (int ,int) ;
 int netdev_warn (int ,char*) ;
 int udelay (int) ;

__attribute__((used)) static void de_stop_rxtx (struct de_private *de)
{
 u32 macmode;
 unsigned int i = 1300/100;

 macmode = dr32(MacMode);
 if (macmode & RxTx) {
  dw32(MacMode, macmode & ~RxTx);
  dr32(MacMode);
 }





 while (--i) {
  if (!de_is_running(de))
   return;
  udelay(100);
 }

 netdev_warn(de->dev, "timeout expired, stopping DMA\n");
}
