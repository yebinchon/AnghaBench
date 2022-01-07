
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vsi {int xdp_prog; } ;



__attribute__((used)) static inline bool i40e_enabled_xdp_vsi(struct i40e_vsi *vsi)
{
 return !!vsi->xdp_prog;
}
