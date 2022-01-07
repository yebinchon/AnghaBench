
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iavf_hw {int dummy; } ;


 int EBUSY ;
 int IAVF_VFGEN_RSTAT ;
 int IAVF_VFGEN_RSTAT_VFR_STATE_MASK ;
 int VIRTCHNL_VFR_COMPLETED ;
 int VIRTCHNL_VFR_VFACTIVE ;
 int rd32 (struct iavf_hw*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int iavf_check_reset_complete(struct iavf_hw *hw)
{
 u32 rstat;
 int i;

 for (i = 0; i < 100; i++) {
  rstat = rd32(hw, IAVF_VFGEN_RSTAT) &
        IAVF_VFGEN_RSTAT_VFR_STATE_MASK;
  if ((rstat == VIRTCHNL_VFR_VFACTIVE) ||
      (rstat == VIRTCHNL_VFR_COMPLETED))
   return 0;
  usleep_range(10, 20);
 }
 return -EBUSY;
}
