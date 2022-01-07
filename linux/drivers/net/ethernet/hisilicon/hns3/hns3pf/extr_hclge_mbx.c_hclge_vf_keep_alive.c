
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hclge_vport {int last_active_jiffies; } ;
struct hclge_mbx_vf_to_pf_cmd {int dummy; } ;


 int jiffies ;

__attribute__((used)) static void hclge_vf_keep_alive(struct hclge_vport *vport,
    struct hclge_mbx_vf_to_pf_cmd *mbx_req)
{
 vport->last_active_jiffies = jiffies;
}
