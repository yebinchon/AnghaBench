
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ice_vsi {int dummy; } ;
struct ice_pf {struct ice_vsi** vsi; } ;



__attribute__((used)) static inline struct ice_vsi *ice_get_main_vsi(struct ice_pf *pf)
{
 if (pf->vsi)
  return pf->vsi[0];

 return ((void*)0);
}
