
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const u32 ;


 int EOPNOTSUPP ;

__attribute__((used)) static int hw_atl_utils_ver_match(u32 ver_expected, u32 ver_actual)
{
 int err = 0;
 const u32 dw_major_mask = 0xff000000U;
 const u32 dw_minor_mask = 0x00ffffffU;

 err = (dw_major_mask & (ver_expected ^ ver_actual)) ? -EOPNOTSUPP : 0;
 if (err < 0)
  goto err_exit;
 err = ((dw_minor_mask & ver_expected) > (dw_minor_mask & ver_actual)) ?
  -EOPNOTSUPP : 0;
err_exit:
 return err;
}
