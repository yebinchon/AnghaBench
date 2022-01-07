
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int BNX2X_L2_MAX_CID (struct bnx2x*) ;
 scalar_t__ BNX2X_VF_CIDS ;
 scalar_t__ CNIC_CID_MAX ;
 scalar_t__ CNIC_SUPPORT (struct bnx2x*) ;
 scalar_t__ IS_SRIOV (struct bnx2x*) ;
 int QM_CID_ROUND ;
 int roundup (int,int ) ;

__attribute__((used)) static int bnx2x_set_qm_cid_count(struct bnx2x *bp)
{
 int cid_count = BNX2X_L2_MAX_CID(bp);

 if (IS_SRIOV(bp))
  cid_count += BNX2X_VF_CIDS;

 if (CNIC_SUPPORT(bp))
  cid_count += CNIC_CID_MAX;

 return roundup(cid_count, QM_CID_ROUND);
}
