
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnxt_vf_info {int mac_addr; } ;
struct TYPE_3__ {int mac_addr; } ;
struct bnxt {TYPE_2__* dev; struct bnxt_vf_info vf; TYPE_1__ pf; } ;
struct TYPE_4__ {int dev_addr; } ;


 scalar_t__ BNXT_PF (struct bnxt*) ;
 int ETH_ALEN ;
 int bnxt_approve_mac (struct bnxt*,int ,int) ;
 int eth_hw_addr_random (TYPE_2__*) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int bnxt_init_mac_addr(struct bnxt *bp)
{
 int rc = 0;

 if (BNXT_PF(bp)) {
  memcpy(bp->dev->dev_addr, bp->pf.mac_addr, ETH_ALEN);
 } else {
 }
 return rc;
}
