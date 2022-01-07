
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_load_req_params {int override_force_load; int avoid_eng_reset; int timeout_val; int drv_role; } ;
struct qed_drv_load_params {int override_force_load; int avoid_eng_reset; int mfw_timeout_val; scalar_t__ is_crash_kernel; } ;


 int QED_DRV_ROLE_KDUMP ;
 int QED_DRV_ROLE_OS ;
 int memset (struct qed_load_req_params*,int ,int) ;

__attribute__((used)) static void
qed_fill_load_req_params(struct qed_load_req_params *p_load_req,
    struct qed_drv_load_params *p_drv_load)
{
 memset(p_load_req, 0, sizeof(*p_load_req));

 p_load_req->drv_role = p_drv_load->is_crash_kernel ?
          QED_DRV_ROLE_KDUMP : QED_DRV_ROLE_OS;
 p_load_req->timeout_val = p_drv_load->mfw_timeout_val;
 p_load_req->avoid_eng_reset = p_drv_load->avoid_eng_reset;
 p_load_req->override_force_load = p_drv_load->override_force_load;
}
