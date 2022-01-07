
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct qed_dev {int dummy; } ;


 scalar_t__ GET_FIELD (int ,int ) ;
 scalar_t__ MAX_NUM_PFS ;
 int PXP_CONCRETE_FID_PFID ;
 int PXP_CONCRETE_FID_VFID ;
 int PXP_CONCRETE_FID_VFVALID ;

__attribute__((used)) static inline u8 qed_concrete_to_sw_fid(struct qed_dev *cdev,
     u32 concrete_fid)
{
 u8 vfid = GET_FIELD(concrete_fid, PXP_CONCRETE_FID_VFID);
 u8 pfid = GET_FIELD(concrete_fid, PXP_CONCRETE_FID_PFID);
 u8 vf_valid = GET_FIELD(concrete_fid,
    PXP_CONCRETE_FID_VFVALID);
 u8 sw_fid;

 if (vf_valid)
  sw_fid = vfid + MAX_NUM_PFS;
 else
  sw_fid = pfid;

 return sw_fid;
}
