
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_tunn_update_type {int b_update_mode; int b_mode_enabled; } ;


 int EINVAL ;

__attribute__((used)) static void qed_pf_validate_tunn_mode(struct qed_tunn_update_type *tun, int *rc)
{
 if (tun->b_update_mode && !tun->b_mode_enabled) {
  tun->b_update_mode = 0;
  *rc = -EINVAL;
 }
}
