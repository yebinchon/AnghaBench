
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int EINVAL ;
 scalar_t__ NFP_CPP_INTERFACE_TYPE_INVALID ;
 scalar_t__ NFP_CPP_INTERFACE_TYPE_of (int ) ;
 int NFP_CPP_TARGET_MU ;

__attribute__((used)) static int
nfp_cpp_mutex_validate(u16 interface, int *target, unsigned long long address)
{

 if (NFP_CPP_INTERFACE_TYPE_of(interface) ==
     NFP_CPP_INTERFACE_TYPE_INVALID)
  return -EINVAL;


 if (address & 7)
  return -EINVAL;

 if (*target != NFP_CPP_TARGET_MU)
  return -EINVAL;

 return 0;
}
