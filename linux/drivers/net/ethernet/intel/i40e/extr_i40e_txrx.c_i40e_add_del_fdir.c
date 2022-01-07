
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {TYPE_1__* pdev; } ;
struct i40e_fdir_filter {int flow_type; int ip4_proto; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int FLOW_EXT ;
 int dev_info (int *,char*,int) ;
 int i40e_add_del_fdir_ipv4 (struct i40e_vsi*,struct i40e_fdir_filter*,int) ;
 int i40e_add_del_fdir_sctpv4 (struct i40e_vsi*,struct i40e_fdir_filter*,int) ;
 int i40e_add_del_fdir_tcpv4 (struct i40e_vsi*,struct i40e_fdir_filter*,int) ;
 int i40e_add_del_fdir_udpv4 (struct i40e_vsi*,struct i40e_fdir_filter*,int) ;

int i40e_add_del_fdir(struct i40e_vsi *vsi,
        struct i40e_fdir_filter *input, bool add)
{
 struct i40e_pf *pf = vsi->back;
 int ret;

 switch (input->flow_type & ~FLOW_EXT) {
 case 129:
  ret = i40e_add_del_fdir_tcpv4(vsi, input, add);
  break;
 case 128:
  ret = i40e_add_del_fdir_udpv4(vsi, input, add);
  break;
 case 130:
  ret = i40e_add_del_fdir_sctpv4(vsi, input, add);
  break;
 case 131:
  switch (input->ip4_proto) {
  case 133:
   ret = i40e_add_del_fdir_tcpv4(vsi, input, add);
   break;
  case 132:
   ret = i40e_add_del_fdir_udpv4(vsi, input, add);
   break;
  case 134:
   ret = i40e_add_del_fdir_sctpv4(vsi, input, add);
   break;
  case 135:
   ret = i40e_add_del_fdir_ipv4(vsi, input, add);
   break;
  default:

   dev_info(&pf->pdev->dev, "Unsupported IPv4 protocol 0x%02x\n",
     input->ip4_proto);
   return -EINVAL;
  }
  break;
 default:
  dev_info(&pf->pdev->dev, "Unsupported flow type 0x%02x\n",
    input->flow_type);
  return -EINVAL;
 }







 return ret;
}
