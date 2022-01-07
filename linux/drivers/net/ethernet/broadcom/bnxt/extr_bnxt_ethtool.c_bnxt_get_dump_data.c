
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_dump {int len; } ;
struct bnxt {int hwrm_spec_code; } ;


 int EOPNOTSUPP ;
 int bnxt_get_coredump (struct bnxt*,void*,int *) ;
 int memset (void*,int ,int ) ;
 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnxt_get_dump_data(struct net_device *dev, struct ethtool_dump *dump,
         void *buf)
{
 struct bnxt *bp = netdev_priv(dev);

 if (bp->hwrm_spec_code < 0x10801)
  return -EOPNOTSUPP;

 memset(buf, 0, dump->len);

 return bnxt_get_coredump(bp, buf, &dump->len);
}
