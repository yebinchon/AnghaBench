
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_eswitch {struct mlx5_core_dev* dev; } ;
struct mlx5_core_dev {int dummy; } ;


 int ELEMENT_TYPE_CAP_MASK_PARA_VPORT_TC ;
 int ELEMENT_TYPE_CAP_MASK_TASR ;
 int ELEMENT_TYPE_CAP_MASK_VPORT ;
 int ELEMENT_TYPE_CAP_MASK_VPORT_TC ;
 int MLX5_CAP_QOS (struct mlx5_core_dev const*,int ) ;




 int esw_element_type ;

__attribute__((used)) static bool element_type_supported(struct mlx5_eswitch *esw, int type)
{
 const struct mlx5_core_dev *dev = esw->dev;

 switch (type) {
 case 130:
  return MLX5_CAP_QOS(dev, esw_element_type) &
         ELEMENT_TYPE_CAP_MASK_TASR;
 case 129:
  return MLX5_CAP_QOS(dev, esw_element_type) &
         ELEMENT_TYPE_CAP_MASK_VPORT;
 case 128:
  return MLX5_CAP_QOS(dev, esw_element_type) &
         ELEMENT_TYPE_CAP_MASK_VPORT_TC;
 case 131:
  return MLX5_CAP_QOS(dev, esw_element_type) &
         ELEMENT_TYPE_CAP_MASK_PARA_VPORT_TC;
 }
 return 0;
}
