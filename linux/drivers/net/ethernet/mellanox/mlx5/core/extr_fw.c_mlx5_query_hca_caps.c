
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_core_dev {int dummy; } ;


 int MLX5_CAP_ATOMIC ;
 int MLX5_CAP_DEBUG ;
 int MLX5_CAP_DEV_EVENT ;
 int MLX5_CAP_DEV_MEM ;
 int MLX5_CAP_ESWITCH ;
 int MLX5_CAP_ESWITCH_FLOW_TABLE ;
 int MLX5_CAP_ETHERNET_OFFLOADS ;
 int MLX5_CAP_FLOW_TABLE ;
 scalar_t__ MLX5_CAP_GEN (struct mlx5_core_dev*,int ) ;
 int MLX5_CAP_GENERAL ;
 int MLX5_CAP_IPOIB_ENHANCED_OFFLOADS ;
 int MLX5_CAP_ODP ;
 int MLX5_CAP_QOS ;
 int MLX5_CAP_ROCE ;
 int MLX5_CAP_TLS ;
 int MLX5_CAP_VECTOR_CALC ;
 scalar_t__ MLX5_ESWITCH_MANAGER (struct mlx5_core_dev*) ;
 int atomic ;
 int debug ;
 int device_memory ;
 int eth_net_offloads ;
 int event_cap ;
 int ipoib_enhanced_offloads ;
 int mcam_reg ;
 int mlx5_core_get_caps (struct mlx5_core_dev*,int ) ;
 int mlx5_get_mcam_reg (struct mlx5_core_dev*) ;
 int mlx5_get_pcam_reg (struct mlx5_core_dev*) ;
 int mlx5_get_qcam_reg (struct mlx5_core_dev*) ;
 int nic_flow_table ;
 int pcam_reg ;
 int pg ;
 int qcam_reg ;
 int qos ;
 int roce ;
 int tls ;
 int vector_calc ;
 int vport_group_manager ;

int mlx5_query_hca_caps(struct mlx5_core_dev *dev)
{
 int err;

 err = mlx5_core_get_caps(dev, MLX5_CAP_GENERAL);
 if (err)
  return err;

 if (MLX5_CAP_GEN(dev, eth_net_offloads)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_ETHERNET_OFFLOADS);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, ipoib_enhanced_offloads)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_IPOIB_ENHANCED_OFFLOADS);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, pg)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_ODP);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, atomic)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_ATOMIC);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, roce)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_ROCE);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, nic_flow_table) ||
     MLX5_CAP_GEN(dev, ipoib_enhanced_offloads)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_FLOW_TABLE);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, vport_group_manager) &&
     MLX5_ESWITCH_MANAGER(dev)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_ESWITCH_FLOW_TABLE);
  if (err)
   return err;
 }

 if (MLX5_ESWITCH_MANAGER(dev)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_ESWITCH);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, vector_calc)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_VECTOR_CALC);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, qos)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_QOS);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, debug))
  mlx5_core_get_caps(dev, MLX5_CAP_DEBUG);

 if (MLX5_CAP_GEN(dev, pcam_reg))
  mlx5_get_pcam_reg(dev);

 if (MLX5_CAP_GEN(dev, mcam_reg))
  mlx5_get_mcam_reg(dev);

 if (MLX5_CAP_GEN(dev, qcam_reg))
  mlx5_get_qcam_reg(dev);

 if (MLX5_CAP_GEN(dev, device_memory)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_DEV_MEM);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, event_cap)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_DEV_EVENT);
  if (err)
   return err;
 }

 if (MLX5_CAP_GEN(dev, tls)) {
  err = mlx5_core_get_caps(dev, MLX5_CAP_TLS);
  if (err)
   return err;
 }

 return 0;
}
