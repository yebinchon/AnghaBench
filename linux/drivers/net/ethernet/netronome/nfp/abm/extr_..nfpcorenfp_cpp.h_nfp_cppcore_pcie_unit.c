
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nfp_cpp {int dummy; } ;


 int NFP_CPP_INTERFACE_UNIT_of (int ) ;
 int nfp_cpp_interface (struct nfp_cpp*) ;

__attribute__((used)) static inline u8 nfp_cppcore_pcie_unit(struct nfp_cpp *cpp)
{
 return NFP_CPP_INTERFACE_UNIT_of(nfp_cpp_interface(cpp));
}
