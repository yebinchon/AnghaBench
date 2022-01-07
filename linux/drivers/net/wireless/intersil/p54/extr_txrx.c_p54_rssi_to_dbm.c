
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct p54_common {int rxhw; TYPE_1__* cur_rssi; } ;
struct TYPE_2__ {int mul; int add; } ;



__attribute__((used)) static int p54_rssi_to_dbm(struct p54_common *priv, int rssi)
{
 if (priv->rxhw != 5) {
  return ((rssi * priv->cur_rssi->mul) / 64 +
    priv->cur_rssi->add) / 4;
 } else {



  return rssi / 2 - 110;
 }
}
