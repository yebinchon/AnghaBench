
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int I40E_NVM_PRESERVATION_FLAGS_MASK ;
 int I40E_NVM_PRESERVATION_FLAGS_SHIFT ;

__attribute__((used)) static inline u8 i40e_nvmupd_get_preservation_flags(u32 val)
{
 return (u8)((val & I40E_NVM_PRESERVATION_FLAGS_MASK) >>
      I40E_NVM_PRESERVATION_FLAGS_SHIFT);
}
