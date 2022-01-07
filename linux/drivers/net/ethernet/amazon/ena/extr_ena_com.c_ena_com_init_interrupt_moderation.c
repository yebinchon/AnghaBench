
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct ena_com_dev {int dummy; } ;
struct TYPE_3__ {int intr_delay_resolution; } ;
struct TYPE_4__ {TYPE_1__ intr_moderation; } ;
struct ena_admin_get_feat_resp {TYPE_2__ u; } ;


 int ENA_ADMIN_INTERRUPT_MODERATION ;
 int EOPNOTSUPP ;
 int ena_com_disable_adaptive_moderation (struct ena_com_dev*) ;
 int ena_com_get_feature (struct ena_com_dev*,struct ena_admin_get_feat_resp*,int ,int ) ;
 int ena_com_update_intr_delay_resolution (struct ena_com_dev*,int ) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int) ;

int ena_com_init_interrupt_moderation(struct ena_com_dev *ena_dev)
{
 struct ena_admin_get_feat_resp get_resp;
 u16 delay_resolution;
 int rc;

 rc = ena_com_get_feature(ena_dev, &get_resp,
     ENA_ADMIN_INTERRUPT_MODERATION, 0);

 if (rc) {
  if (rc == -EOPNOTSUPP) {
   pr_debug("Feature %d isn't supported\n",
     ENA_ADMIN_INTERRUPT_MODERATION);
   rc = 0;
  } else {
   pr_err("Failed to get interrupt moderation admin cmd. rc: %d\n",
          rc);
  }


  ena_com_disable_adaptive_moderation(ena_dev);
  return rc;
 }


 delay_resolution = get_resp.u.intr_moderation.intr_delay_resolution;
 ena_com_update_intr_delay_resolution(ena_dev, delay_resolution);


 ena_com_disable_adaptive_moderation(ena_dev);

 return 0;
}
