
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ena_com_dev {int supported_features; } ;
typedef enum ena_admin_aq_feature_id { ____Placeholder_ena_admin_aq_feature_id } ena_admin_aq_feature_id ;


 int ENA_ADMIN_DEVICE_ATTRIBUTES ;

__attribute__((used)) static bool ena_com_check_supported_feature_id(struct ena_com_dev *ena_dev,
            enum ena_admin_aq_feature_id feature_id)
{
 u32 feature_mask = 1 << feature_id;


 if ((feature_id != ENA_ADMIN_DEVICE_ATTRIBUTES) &&
     !(ena_dev->supported_features & feature_mask))
  return 0;

 return 1;
}
