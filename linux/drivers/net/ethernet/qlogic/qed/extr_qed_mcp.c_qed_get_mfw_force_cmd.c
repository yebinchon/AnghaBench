
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_hwfn {int dummy; } ;
typedef enum qed_load_req_force { ____Placeholder_qed_load_req_force } qed_load_req_force ;


 int LOAD_REQ_FORCE_ALL ;
 int LOAD_REQ_FORCE_NONE ;
 int LOAD_REQ_FORCE_PF ;




__attribute__((used)) static void qed_get_mfw_force_cmd(struct qed_hwfn *p_hwfn,

      enum qed_load_req_force force_cmd,
      u8 *p_mfw_force_cmd)
{
 switch (force_cmd) {
 case 129:
  *p_mfw_force_cmd = LOAD_REQ_FORCE_NONE;
  break;
 case 128:
  *p_mfw_force_cmd = LOAD_REQ_FORCE_PF;
  break;
 case 130:
  *p_mfw_force_cmd = LOAD_REQ_FORCE_ALL;
  break;
 }
}
