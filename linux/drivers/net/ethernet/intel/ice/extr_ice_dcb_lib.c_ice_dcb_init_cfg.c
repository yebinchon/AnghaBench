
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ice_port_info {int local_dcbx_cfg; } ;
struct TYPE_4__ {struct ice_port_info* port_info; } ;
struct ice_pf {TYPE_1__* pdev; TYPE_2__ hw; } ;
struct ice_dcbx_cfg {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_info (int *,char*) ;
 int devm_kfree (int *,struct ice_dcbx_cfg*) ;
 struct ice_dcbx_cfg* devm_kzalloc (int *,int,int ) ;
 scalar_t__ ice_pf_dcb_cfg (struct ice_pf*,struct ice_dcbx_cfg*,int) ;
 int memcpy (struct ice_dcbx_cfg*,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int ice_dcb_init_cfg(struct ice_pf *pf, bool locked)
{
 struct ice_dcbx_cfg *newcfg;
 struct ice_port_info *pi;
 int ret = 0;

 pi = pf->hw.port_info;
 newcfg = devm_kzalloc(&pf->pdev->dev, sizeof(*newcfg), GFP_KERNEL);
 if (!newcfg)
  return -ENOMEM;

 memcpy(newcfg, &pi->local_dcbx_cfg, sizeof(*newcfg));
 memset(&pi->local_dcbx_cfg, 0, sizeof(*newcfg));

 dev_info(&pf->pdev->dev, "Configuring initial DCB values\n");
 if (ice_pf_dcb_cfg(pf, newcfg, locked))
  ret = -EINVAL;

 devm_kfree(&pf->pdev->dev, newcfg);

 return ret;
}
