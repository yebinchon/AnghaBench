
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct ice_vsi {scalar_t__ alloc_txq; } ;
struct ice_vf {int pf; } ;


 struct ice_vsi* ice_find_vsi_from_id (int ,int ) ;

__attribute__((used)) static bool ice_vc_isvalid_q_id(struct ice_vf *vf, u16 vsi_id, u8 qid)
{
 struct ice_vsi *vsi = ice_find_vsi_from_id(vf->pf, vsi_id);

 return (vsi && (qid < vsi->alloc_txq));
}
