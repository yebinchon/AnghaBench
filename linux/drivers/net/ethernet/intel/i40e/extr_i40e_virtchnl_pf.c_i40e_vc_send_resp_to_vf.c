
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_vf {int dummy; } ;
typedef int i40e_status ;
typedef enum virtchnl_ops { ____Placeholder_virtchnl_ops } virtchnl_ops ;


 int i40e_vc_send_msg_to_vf (struct i40e_vf*,int,int ,int *,int ) ;

__attribute__((used)) static int i40e_vc_send_resp_to_vf(struct i40e_vf *vf,
       enum virtchnl_ops opcode,
       i40e_status retval)
{
 return i40e_vc_send_msg_to_vf(vf, opcode, retval, ((void*)0), 0);
}
