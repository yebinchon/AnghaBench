
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_eth_io_rx_cdesc_base {int dummy; } ;
struct ena_com_io_cq {int dummy; } ;


 struct ena_eth_io_rx_cdesc_base* ena_com_get_next_rx_cdesc (struct ena_com_io_cq*) ;

bool ena_com_cq_empty(struct ena_com_io_cq *io_cq)
{
 struct ena_eth_io_rx_cdesc_base *cdesc;

 cdesc = ena_com_get_next_rx_cdesc(io_cq);
 if (cdesc)
  return 0;
 else
  return 1;
}
