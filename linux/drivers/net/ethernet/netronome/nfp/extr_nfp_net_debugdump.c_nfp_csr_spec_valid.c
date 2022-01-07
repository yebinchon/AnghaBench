
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int length; } ;
struct nfp_dumpspec_csr {int register_width; TYPE_1__ tl; } ;


 scalar_t__ be32_to_cpu (int ) ;

__attribute__((used)) static bool nfp_csr_spec_valid(struct nfp_dumpspec_csr *spec_csr)
{
 u32 required_read_sz = sizeof(*spec_csr) - sizeof(spec_csr->tl);
 u32 available_sz = be32_to_cpu(spec_csr->tl.length);
 u32 reg_width;

 if (available_sz < required_read_sz)
  return 0;

 reg_width = be32_to_cpu(spec_csr->register_width);

 return reg_width == 32 || reg_width == 64;
}
