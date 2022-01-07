
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct niu {int port; TYPE_1__* parent; } ;
struct TYPE_2__ {int port_phy; } ;




 int PT_DRR_WEIGHT_DEFAULT_10G ;
 int PT_DRR_WEIGHT_DEFAULT_1G ;
 int PT_DRR_WT (int ) ;
 int nw64 (int ,int ) ;
 int phy_decode (int ,int ) ;

__attribute__((used)) static void niu_init_drr_weight(struct niu *np)
{
 int type = phy_decode(np->parent->port_phy, np->port);
 u64 val;

 switch (type) {
 case 129:
  val = PT_DRR_WEIGHT_DEFAULT_10G;
  break;

 case 128:
 default:
  val = PT_DRR_WEIGHT_DEFAULT_1G;
  break;
 }
 nw64(PT_DRR_WT(np->port), val);
}
