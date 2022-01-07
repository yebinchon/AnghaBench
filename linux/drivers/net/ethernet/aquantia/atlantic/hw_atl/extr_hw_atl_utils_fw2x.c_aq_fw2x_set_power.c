
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct aq_hw_s {TYPE_1__* aq_nic_cfg; } ;
struct TYPE_2__ {int wol; } ;


 int AQ_NIC_WOL_ENABLED ;
 int aq_fw2x_set_sleep_proxy (struct aq_hw_s*,int *) ;
 int aq_fw2x_set_wol_params (struct aq_hw_s*,int *) ;

__attribute__((used)) static int aq_fw2x_set_power(struct aq_hw_s *self, unsigned int power_state,
        u8 *mac)
{
 int err = 0;

 if (self->aq_nic_cfg->wol & AQ_NIC_WOL_ENABLED) {
  err = aq_fw2x_set_sleep_proxy(self, mac);
  if (err < 0)
   goto err_exit;
  err = aq_fw2x_set_wol_params(self, mac);
 }

err_exit:
 return err;
}
