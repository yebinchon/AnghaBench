
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * complete; } ;
struct mrf24j40 {int* rx_buf; TYPE_1__ rx_msg; int spi; } ;


 int MRF24J40_WRITESHORT (int ) ;
 int REG_BBREG1 ;
 int dev_err (int ,char*) ;
 int printdev (struct mrf24j40*) ;
 int spi_async (int ,TYPE_1__*) ;

__attribute__((used)) static void mrf24j40_handle_rx_read_buf_unlock(struct mrf24j40 *devrec)
{
 int ret;


 devrec->rx_msg.complete = ((void*)0);
 devrec->rx_buf[0] = MRF24J40_WRITESHORT(REG_BBREG1);
 devrec->rx_buf[1] = 0x00;
 ret = spi_async(devrec->spi, &devrec->rx_msg);
 if (ret)
  dev_err(printdev(devrec), "failed to unlock rx buffer\n");
}
