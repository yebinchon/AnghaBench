
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long BIT (int ) ;
 int EGRESS ;
 int ESW_OFFLOAD ;
 int INGRESS ;
 int MLX5E_TC_FLOW_FLAG_EGRESS ;
 int MLX5E_TC_FLOW_FLAG_ESWITCH ;
 int MLX5E_TC_FLOW_FLAG_INGRESS ;
 int MLX5E_TC_FLOW_FLAG_NIC ;
 int MLX5_TC_FLAG (int ) ;
 int NIC_OFFLOAD ;

__attribute__((used)) static void get_flags(int flags, unsigned long *flow_flags)
{
 unsigned long __flow_flags = 0;

 if (flags & MLX5_TC_FLAG(INGRESS))
  __flow_flags |= BIT(MLX5E_TC_FLOW_FLAG_INGRESS);
 if (flags & MLX5_TC_FLAG(EGRESS))
  __flow_flags |= BIT(MLX5E_TC_FLOW_FLAG_EGRESS);

 if (flags & MLX5_TC_FLAG(ESW_OFFLOAD))
  __flow_flags |= BIT(MLX5E_TC_FLOW_FLAG_ESWITCH);
 if (flags & MLX5_TC_FLAG(NIC_OFFLOAD))
  __flow_flags |= BIT(MLX5E_TC_FLOW_FLAG_NIC);

 *flow_flags = __flow_flags;
}
