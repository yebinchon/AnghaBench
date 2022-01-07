
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ice_vsi {int dummy; } ;
struct ice_port_info {int dummy; } ;
struct ice_pf {int dummy; } ;


 int ICE_VSI_VF ;
 struct ice_vsi* ice_vsi_setup (struct ice_pf*,struct ice_port_info*,int ,int ) ;

__attribute__((used)) static struct ice_vsi *
ice_vf_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi, u16 vf_id)
{
 return ice_vsi_setup(pf, pi, ICE_VSI_VF, vf_id);
}
