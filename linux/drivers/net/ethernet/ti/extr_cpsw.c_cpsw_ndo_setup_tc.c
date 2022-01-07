
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;


 int cpsw_set_cbs (struct net_device*,void*) ;
 int cpsw_set_mqprio (struct net_device*,void*) ;

__attribute__((used)) static int cpsw_ndo_setup_tc(struct net_device *ndev, enum tc_setup_type type,
        void *type_data)
{
 switch (type) {
 case 129:
  return cpsw_set_cbs(ndev, type_data);

 case 128:
  return cpsw_set_mqprio(ndev, type_data);

 default:
  return -EOPNOTSUPP;
 }
}
