
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ethtool_dump {int version; int len; } ;
struct TYPE_2__ {int hwrm_fw_maj_8b; int hwrm_fw_min_8b; int hwrm_fw_bld_8b; int hwrm_fw_rsvd_8b; } ;
struct bnxt {int hwrm_spec_code; TYPE_1__ ver_resp; } ;


 int EOPNOTSUPP ;
 int bnxt_get_coredump (struct bnxt*,int *,int *) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_get_dump_flag(struct net_device *dev, struct ethtool_dump *dump)
{
 struct bnxt *bp = netdev_priv(dev);

 if (bp->hwrm_spec_code < 0x10801)
  return -EOPNOTSUPP;

 dump->version = bp->ver_resp.hwrm_fw_maj_8b << 24 |
   bp->ver_resp.hwrm_fw_min_8b << 16 |
   bp->ver_resp.hwrm_fw_bld_8b << 8 |
   bp->ver_resp.hwrm_fw_rsvd_8b;

 return bnxt_get_coredump(bp, ((void*)0), &dump->len);
}
