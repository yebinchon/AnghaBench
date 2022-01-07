
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int dummy; } ;


 int EIO ;
 int QLCNIC_PEG_TUNE_CAPABILITY ;
 int QLCNIC_PEG_TUNE_MN_PRESENT ;
 int QLCRD32 (struct qlcnic_adapter*,int ,int*) ;

__attribute__((used)) static int
qlcnic_has_mn(struct qlcnic_adapter *adapter)
{
 u32 capability = 0;
 int err = 0;

 capability = QLCRD32(adapter, QLCNIC_PEG_TUNE_CAPABILITY, &err);
 if (err == -EIO)
  return err;
 if (capability & QLCNIC_PEG_TUNE_MN_PRESENT)
  return 1;

 return 0;
}
