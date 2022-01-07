
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum iwl_amsdu_size { ____Placeholder_iwl_amsdu_size } iwl_amsdu_size ;






 int WARN_ON (int) ;
 int get_order (int) ;

__attribute__((used)) static inline int
iwl_trans_get_rb_size_order(enum iwl_amsdu_size rb_size)
{
 switch (rb_size) {
 case 130:
  return get_order(2 * 1024);
 case 129:
  return get_order(4 * 1024);
 case 128:
  return get_order(8 * 1024);
 case 131:
  return get_order(12 * 1024);
 default:
  WARN_ON(1);
  return -1;
 }
}
