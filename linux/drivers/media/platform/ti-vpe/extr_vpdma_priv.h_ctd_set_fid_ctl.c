
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CTD_FID1_SHFT ;
 int CTD_FID2_SHFT ;

__attribute__((used)) static inline u32 ctd_set_fid_ctl(int fid0, int fid1, int fid2)
{
 return (fid2 << CTD_FID2_SHFT) | (fid1 << CTD_FID1_SHFT) | fid0;
}
