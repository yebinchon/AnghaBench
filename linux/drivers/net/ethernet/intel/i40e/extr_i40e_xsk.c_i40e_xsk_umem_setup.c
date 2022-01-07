
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xdp_umem {int dummy; } ;
struct i40e_vsi {int dummy; } ;


 int i40e_xsk_umem_disable (struct i40e_vsi*,int ) ;
 int i40e_xsk_umem_enable (struct i40e_vsi*,struct xdp_umem*,int ) ;

int i40e_xsk_umem_setup(struct i40e_vsi *vsi, struct xdp_umem *umem,
   u16 qid)
{
 return umem ? i40e_xsk_umem_enable(vsi, umem, qid) :
  i40e_xsk_umem_disable(vsi, qid);
}
