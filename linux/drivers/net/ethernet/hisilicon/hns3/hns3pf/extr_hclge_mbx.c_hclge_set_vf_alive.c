
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_vport {int dummy; } ;
struct hclge_mbx_vf_to_pf_cmd {int * msg; } ;


 int hclge_vport_start (struct hclge_vport*) ;
 int hclge_vport_stop (struct hclge_vport*) ;

__attribute__((used)) static int hclge_set_vf_alive(struct hclge_vport *vport,
         struct hclge_mbx_vf_to_pf_cmd *mbx_req,
         bool gen_resp)
{
 bool alive = !!mbx_req->msg[2];
 int ret = 0;

 if (alive)
  ret = hclge_vport_start(vport);
 else
  hclge_vport_stop(vport);

 return ret;
}
