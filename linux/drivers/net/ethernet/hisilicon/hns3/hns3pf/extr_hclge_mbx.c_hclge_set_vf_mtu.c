
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hclge_vport {int dummy; } ;
struct hclge_mbx_vf_to_pf_cmd {int * msg; } ;
typedef int mtu ;


 int hclge_gen_resp_to_vf (struct hclge_vport*,struct hclge_mbx_vf_to_pf_cmd*,int,int *,int ) ;
 int hclge_set_vport_mtu (struct hclge_vport*,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int hclge_set_vf_mtu(struct hclge_vport *vport,
       struct hclge_mbx_vf_to_pf_cmd *mbx_req)
{
 int ret;
 u32 mtu;

 memcpy(&mtu, &mbx_req->msg[2], sizeof(mtu));
 ret = hclge_set_vport_mtu(vport, mtu);

 return hclge_gen_resp_to_vf(vport, mbx_req, ret, ((void*)0), 0);
}
