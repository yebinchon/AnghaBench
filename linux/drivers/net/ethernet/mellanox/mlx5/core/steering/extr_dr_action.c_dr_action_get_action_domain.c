
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mlx5dr_ste_entry_type { ____Placeholder_mlx5dr_ste_entry_type } mlx5dr_ste_entry_type ;
typedef enum mlx5dr_domain_type { ____Placeholder_mlx5dr_domain_type } mlx5dr_domain_type ;
typedef enum dr_action_domain { ____Placeholder_dr_action_domain } dr_action_domain ;


 int DR_ACTION_DOMAIN_FDB_EGRESS ;
 int DR_ACTION_DOMAIN_FDB_INGRESS ;
 int DR_ACTION_DOMAIN_MAX ;
 int DR_ACTION_DOMAIN_NIC_EGRESS ;
 int DR_ACTION_DOMAIN_NIC_INGRESS ;



 int MLX5DR_STE_TYPE_RX ;
 int WARN_ON (int) ;

__attribute__((used)) static enum dr_action_domain
dr_action_get_action_domain(enum mlx5dr_domain_type domain,
       enum mlx5dr_ste_entry_type ste_type)
{
 switch (domain) {
 case 129:
  return DR_ACTION_DOMAIN_NIC_INGRESS;
 case 128:
  return DR_ACTION_DOMAIN_NIC_EGRESS;
 case 130:
  if (ste_type == MLX5DR_STE_TYPE_RX)
   return DR_ACTION_DOMAIN_FDB_INGRESS;
  return DR_ACTION_DOMAIN_FDB_EGRESS;
 default:
  WARN_ON(1);
  return DR_ACTION_DOMAIN_MAX;
 }
}
