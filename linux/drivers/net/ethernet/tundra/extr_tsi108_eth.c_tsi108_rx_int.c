
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tsi108_prv_data {int napi; } ;
struct net_device {int dummy; } ;


 int TSI108_EC_INTMASK ;
 int TSI108_INT_RXERROR ;
 int TSI108_INT_RXOVERRUN ;
 int TSI108_INT_RXQUEUE0 ;
 int TSI108_INT_RXTHRESH ;
 int TSI108_INT_RXWAIT ;
 int TSI_READ (int ) ;
 int TSI_WRITE (int ,int) ;
 int __napi_schedule (int *) ;
 scalar_t__ napi_schedule_prep (int *) ;
 struct tsi108_prv_data* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static void tsi108_rx_int(struct net_device *dev)
{
 struct tsi108_prv_data *data = netdev_priv(dev);
 if (napi_schedule_prep(&data->napi)) {




  TSI_WRITE(TSI108_EC_INTMASK,
         TSI_READ(TSI108_EC_INTMASK) |
         TSI108_INT_RXQUEUE0
         | TSI108_INT_RXTHRESH |
         TSI108_INT_RXOVERRUN | TSI108_INT_RXERROR |
         TSI108_INT_RXWAIT);
  __napi_schedule(&data->napi);
 } else {
  if (!netif_running(dev)) {
   TSI_WRITE(TSI108_EC_INTMASK,
          TSI_READ
          (TSI108_EC_INTMASK) |
          TSI108_INT_RXQUEUE0 |
          TSI108_INT_RXTHRESH |
          TSI108_INT_RXOVERRUN |
          TSI108_INT_RXERROR |
          TSI108_INT_RXWAIT);
  }
 }
}
