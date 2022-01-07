
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x_virtf {int dummy; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_MAX_NUM_OF_VFS ;
 int BNX2X_VF_CID_WND ;
 struct bnx2x_virtf* bnx2x_vf_by_abs_fid (struct bnx2x*,int) ;

__attribute__((used)) static struct bnx2x_virtf *bnx2x_vf_by_cid(struct bnx2x *bp, int vf_cid)
{




 int abs_vfid = (vf_cid >> BNX2X_VF_CID_WND) & (BNX2X_MAX_NUM_OF_VFS-1);
 return bnx2x_vf_by_abs_fid(bp, abs_vfid);
}
