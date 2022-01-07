
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_filter; int tx_type; } ;
struct mlx5e_priv {TYPE_1__ tstamp; } ;


 int HWTSTAMP_FILTER_NONE ;
 int HWTSTAMP_TX_OFF ;

void mlx5e_timestamp_init(struct mlx5e_priv *priv)
{
 priv->tstamp.tx_type = HWTSTAMP_TX_OFF;
 priv->tstamp.rx_filter = HWTSTAMP_FILTER_NONE;
}
