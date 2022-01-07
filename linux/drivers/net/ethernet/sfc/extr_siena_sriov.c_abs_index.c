
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siena_vf {int index; int efx; } ;


 int EFX_VI_BASE ;
 int efx_vf_size (int ) ;

__attribute__((used)) static unsigned abs_index(struct siena_vf *vf, unsigned index)
{
 return EFX_VI_BASE + vf->index * efx_vf_size(vf->efx) + index;
}
