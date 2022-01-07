
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cosa_data {int rxbitmap; int txbitmap; int enabled; } ;


 int DRIVER_RX_READY ;
 int DRIVER_TXMAP_MASK ;
 int DRIVER_TXMAP_SHIFT ;
 int DRIVER_TX_READY ;
 int SR_RX_INT_ENA ;
 int cosa_putdata8 (struct cosa_data*,int) ;
 int cosa_putstatus (struct cosa_data*,int ) ;
 int debug_data_cmd (struct cosa_data*,int) ;
 int debug_status_out (struct cosa_data*,int ) ;

__attribute__((used)) static void put_driver_status_nolock(struct cosa_data *cosa)
{
 int status;

 status = (cosa->rxbitmap ? DRIVER_RX_READY : 0)
  | (cosa->txbitmap ? DRIVER_TX_READY : 0)
  | (cosa->txbitmap? ~(cosa->txbitmap<<DRIVER_TXMAP_SHIFT)
   &DRIVER_TXMAP_MASK : 0);

 if (cosa->rxbitmap|cosa->txbitmap) {
  cosa_putstatus(cosa, SR_RX_INT_ENA);



  cosa->enabled = 1;
 } else {
  cosa_putstatus(cosa, 0);



  cosa->enabled = 0;
 }
 cosa_putdata8(cosa, status);



}
