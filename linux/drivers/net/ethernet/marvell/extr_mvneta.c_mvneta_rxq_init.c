
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_rx_queue {int dummy; } ;
struct mvneta_port {int dummy; } ;


 int mvneta_rxq_hw_init (struct mvneta_port*,struct mvneta_rx_queue*) ;
 int mvneta_rxq_sw_init (struct mvneta_port*,struct mvneta_rx_queue*) ;

__attribute__((used)) static int mvneta_rxq_init(struct mvneta_port *pp,
      struct mvneta_rx_queue *rxq)

{
 int ret;

 ret = mvneta_rxq_sw_init(pp, rxq);
 if (ret < 0)
  return ret;

 mvneta_rxq_hw_init(pp, rxq);

 return 0;
}
