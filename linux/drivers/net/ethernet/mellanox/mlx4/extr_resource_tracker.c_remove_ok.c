
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct res_xrcdn {int dummy; } ;
struct res_srq {int dummy; } ;
struct res_qp {int dummy; } ;
struct res_mtt {int dummy; } ;
struct res_mpt {int dummy; } ;
struct res_fs_rule {int dummy; } ;
struct res_eq {int dummy; } ;
struct res_cq {int dummy; } ;
struct res_counter {int dummy; } ;
struct res_common {int dummy; } ;
typedef enum mlx4_resource { ____Placeholder_mlx4_resource } mlx4_resource ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int remove_counter_ok (struct res_counter*) ;
 int remove_cq_ok (struct res_cq*) ;
 int remove_eq_ok (struct res_eq*) ;
 int remove_fs_rule_ok (struct res_fs_rule*) ;
 int remove_mpt_ok (struct res_mpt*) ;
 int remove_mtt_ok (struct res_mtt*,int) ;
 int remove_qp_ok (struct res_qp*) ;
 int remove_srq_ok (struct res_srq*) ;
 int remove_xrcdn_ok (struct res_xrcdn*) ;

__attribute__((used)) static int remove_ok(struct res_common *res, enum mlx4_resource type, int extra)
{
 switch (type) {
 case 130:
  return remove_qp_ok((struct res_qp *)res);
 case 136:
  return remove_cq_ok((struct res_cq *)res);
 case 129:
  return remove_srq_ok((struct res_srq *)res);
 case 132:
  return remove_mpt_ok((struct res_mpt *)res);
 case 131:
  return remove_mtt_ok((struct res_mtt *)res, extra);
 case 133:
  return -EOPNOTSUPP;
 case 135:
  return remove_eq_ok((struct res_eq *)res);
 case 137:
  return remove_counter_ok((struct res_counter *)res);
 case 128:
  return remove_xrcdn_ok((struct res_xrcdn *)res);
 case 134:
  return remove_fs_rule_ok((struct res_fs_rule *)res);
 default:
  return -EINVAL;
 }
}
