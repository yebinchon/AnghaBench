
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef scalar_t__ s32 ;


 int BRCMF_C_SET_LRL ;
 int BRCMF_C_SET_SRL ;
 int bphy_err (struct brcmf_pub*,char*,int ,scalar_t__) ;
 scalar_t__ brcmf_fil_cmd_int_set (struct brcmf_if*,int ,int ) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;

__attribute__((used)) static s32 brcmf_set_retry(struct net_device *ndev, u32 retry, bool l)
{
 struct brcmf_if *ifp = netdev_priv(ndev);
 struct brcmf_pub *drvr = ifp->drvr;
 s32 err = 0;
 u32 cmd = (l ? BRCMF_C_SET_LRL : BRCMF_C_SET_SRL);

 err = brcmf_fil_cmd_int_set(ifp, cmd, retry);
 if (err) {
  bphy_err(drvr, "cmd (%d) , error (%d)\n", cmd, err);
  return err;
 }
 return err;
}
