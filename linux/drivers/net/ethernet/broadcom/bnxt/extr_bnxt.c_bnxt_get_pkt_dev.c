
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct bnxt {struct net_device* dev; } ;


 struct net_device* bnxt_get_vf_rep (struct bnxt*,int ) ;

__attribute__((used)) static struct net_device *bnxt_get_pkt_dev(struct bnxt *bp, u16 cfa_code)
{
 struct net_device *dev = bnxt_get_vf_rep(bp, cfa_code);


 return dev ? dev : bp->dev;
}
