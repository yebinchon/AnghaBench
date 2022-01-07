
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fman_mac {TYPE_1__* dtsec_drv_param; } ;
struct TYPE_2__ {int tx_pad_crc; } ;


 int EINVAL ;
 scalar_t__ is_init_done (TYPE_1__*) ;

int dtsec_cfg_pad_and_crc(struct fman_mac *dtsec, bool new_val)
{
 if (is_init_done(dtsec->dtsec_drv_param))
  return -EINVAL;

 dtsec->dtsec_drv_param->tx_pad_crc = new_val;

 return 0;
}
