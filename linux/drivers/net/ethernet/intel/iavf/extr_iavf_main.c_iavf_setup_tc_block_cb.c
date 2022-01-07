
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;

 int iavf_setup_tc_cls_flower (void*,void*) ;

__attribute__((used)) static int iavf_setup_tc_block_cb(enum tc_setup_type type, void *type_data,
      void *cb_priv)
{
 switch (type) {
 case 128:
  return iavf_setup_tc_cls_flower(cb_priv, type_data);
 default:
  return -EOPNOTSUPP;
 }
}
