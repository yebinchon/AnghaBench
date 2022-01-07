
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct nfp_app {TYPE_1__* pf; } ;
struct TYPE_2__ {int num_vfs; int cpp; scalar_t__ vfcfg_tbl2; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ NFP_NET_VF_CFG_MB_CAP ;
 int nfp_warn (int ,char*,...) ;
 int readw (scalar_t__) ;

__attribute__((used)) static int
nfp_net_sriov_check(struct nfp_app *app, int vf, u16 cap, const char *msg)
{
 u16 cap_vf;

 if (!app || !app->pf->vfcfg_tbl2)
  return -EOPNOTSUPP;

 cap_vf = readw(app->pf->vfcfg_tbl2 + NFP_NET_VF_CFG_MB_CAP);
 if ((cap_vf & cap) != cap) {
  nfp_warn(app->pf->cpp, "ndo_set_vf_%s not supported\n", msg);
  return -EOPNOTSUPP;
 }

 if (vf < 0 || vf >= app->pf->num_vfs) {
  nfp_warn(app->pf->cpp, "invalid VF id %d\n", vf);
  return -EINVAL;
 }

 return 0;
}
