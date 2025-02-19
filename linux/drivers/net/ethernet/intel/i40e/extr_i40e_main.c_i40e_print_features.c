
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_vsis; } ;
struct i40e_hw {int pf_id; TYPE_1__ func_caps; } ;
struct i40e_pf {int num_req_vfs; size_t lan_vsi; int flags; TYPE_3__* pdev; TYPE_2__** vsi; struct i40e_hw hw; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {int num_queue_pairs; } ;


 int GFP_KERNEL ;
 int I40E_FLAG_DCB_CAPABLE ;
 int I40E_FLAG_FD_ATR_ENABLED ;
 int I40E_FLAG_FD_SB_ENABLED ;
 int I40E_FLAG_PTP ;
 int I40E_FLAG_RSS_ENABLED ;
 int I40E_FLAG_VEB_MODE_ENABLED ;
 int INFO_STRING_LEN ;
 int REMAIN (int) ;
 int WARN_ON (int) ;
 int dev_info (int *,char*,char*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static void i40e_print_features(struct i40e_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 char *buf;
 int i;

 buf = kmalloc(INFO_STRING_LEN, GFP_KERNEL);
 if (!buf)
  return;

 i = snprintf(buf, INFO_STRING_LEN, "Features: PF-id[%d]", hw->pf_id);



 i += snprintf(&buf[i], REMAIN(i), " VSIs: %d QP: %d",
        pf->hw.func_caps.num_vsis,
        pf->vsi[pf->lan_vsi]->num_queue_pairs);
 if (pf->flags & I40E_FLAG_RSS_ENABLED)
  i += snprintf(&buf[i], REMAIN(i), " RSS");
 if (pf->flags & I40E_FLAG_FD_ATR_ENABLED)
  i += snprintf(&buf[i], REMAIN(i), " FD_ATR");
 if (pf->flags & I40E_FLAG_FD_SB_ENABLED) {
  i += snprintf(&buf[i], REMAIN(i), " FD_SB");
  i += snprintf(&buf[i], REMAIN(i), " NTUPLE");
 }
 if (pf->flags & I40E_FLAG_DCB_CAPABLE)
  i += snprintf(&buf[i], REMAIN(i), " DCB");
 i += snprintf(&buf[i], REMAIN(i), " VxLAN");
 i += snprintf(&buf[i], REMAIN(i), " Geneve");
 if (pf->flags & I40E_FLAG_PTP)
  i += snprintf(&buf[i], REMAIN(i), " PTP");
 if (pf->flags & I40E_FLAG_VEB_MODE_ENABLED)
  i += snprintf(&buf[i], REMAIN(i), " VEB");
 else
  i += snprintf(&buf[i], REMAIN(i), " VEPA");

 dev_info(&pf->pdev->dev, "%s\n", buf);
 kfree(buf);
 WARN_ON(i > INFO_STRING_LEN);
}
