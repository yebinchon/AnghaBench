
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hwtstamp_config {scalar_t__ tx_type; scalar_t__ flags; } ;
struct efx_nic {TYPE_2__* ptp_data; TYPE_1__* type; } ;
struct TYPE_4__ {struct hwtstamp_config config; } ;
struct TYPE_3__ {int (* ptp_set_ts_config ) (struct efx_nic*,struct hwtstamp_config*) ;} ;


 int EINVAL ;
 int ERANGE ;
 scalar_t__ HWTSTAMP_TX_OFF ;
 scalar_t__ HWTSTAMP_TX_ON ;
 int stub1 (struct efx_nic*,struct hwtstamp_config*) ;

__attribute__((used)) static int efx_ptp_ts_init(struct efx_nic *efx, struct hwtstamp_config *init)
{
 int rc;

 if (init->flags)
  return -EINVAL;

 if ((init->tx_type != HWTSTAMP_TX_OFF) &&
     (init->tx_type != HWTSTAMP_TX_ON))
  return -ERANGE;

 rc = efx->type->ptp_set_ts_config(efx, init);
 if (rc)
  return rc;

 efx->ptp_data->config = *init;
 return 0;
}
