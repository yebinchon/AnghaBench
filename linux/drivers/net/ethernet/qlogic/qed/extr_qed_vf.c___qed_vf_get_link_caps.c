
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_mcp_link_capabilities {int speed_capabilities; } ;
struct qed_hwfn {int dummy; } ;
struct qed_bulletin_content {int capability_speed; } ;


 int memset (struct qed_mcp_link_capabilities*,int ,int) ;

void __qed_vf_get_link_caps(struct qed_hwfn *p_hwfn,
       struct qed_mcp_link_capabilities *p_link_caps,
       struct qed_bulletin_content *p_bulletin)
{
 memset(p_link_caps, 0, sizeof(*p_link_caps));
 p_link_caps->speed_capabilities = p_bulletin->capability_speed;
}
