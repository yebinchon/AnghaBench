
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int complete; } ;
struct TYPE_3__ {int len; } ;
struct mrf24j40 {TYPE_2__ rx_msg; int spi; int * rx_buf; TYPE_1__ rx_trx; } ;


 int BIT_RXDECINV ;
 int MRF24J40_WRITESHORT (int ) ;
 int REG_BBREG1 ;
 int mrf24j40_handle_rx_read_len ;
 int spi_async (int ,TYPE_2__*) ;

__attribute__((used)) static int mrf24j40_handle_rx(struct mrf24j40 *devrec)
{



 devrec->rx_msg.complete = mrf24j40_handle_rx_read_len;
 devrec->rx_trx.len = 2;
 devrec->rx_buf[0] = MRF24J40_WRITESHORT(REG_BBREG1);
 devrec->rx_buf[1] = BIT_RXDECINV;

 return spi_async(devrec->spi, &devrec->rx_msg);
}
