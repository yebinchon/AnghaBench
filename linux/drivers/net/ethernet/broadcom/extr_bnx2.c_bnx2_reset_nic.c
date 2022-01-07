
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int dummy; } ;


 int bnx2_free_skbs (struct bnx2*) ;
 int bnx2_init_all_rings (struct bnx2*) ;
 int bnx2_init_chip (struct bnx2*) ;
 int bnx2_reset_chip (struct bnx2*,int ) ;

__attribute__((used)) static int
bnx2_reset_nic(struct bnx2 *bp, u32 reset_code)
{
 int rc;

 rc = bnx2_reset_chip(bp, reset_code);
 bnx2_free_skbs(bp);
 if (rc)
  return rc;

 if ((rc = bnx2_init_chip(bp)) != 0)
  return rc;

 bnx2_init_all_rings(bp);
 return 0;
}
