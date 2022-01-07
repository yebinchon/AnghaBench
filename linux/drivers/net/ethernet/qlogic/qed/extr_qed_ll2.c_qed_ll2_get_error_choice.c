
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum qed_ll2_error_handle { ____Placeholder_qed_ll2_error_handle } qed_ll2_error_handle ;
typedef enum core_error_handle { ____Placeholder_core_error_handle } core_error_handle ;


 int LL2_ASSERT ;
 int LL2_DO_NOTHING ;
 int LL2_DROP_PACKET ;




__attribute__((used)) static enum core_error_handle
qed_ll2_get_error_choice(enum qed_ll2_error_handle err)
{
 switch (err) {
 case 128:
  return LL2_DROP_PACKET;
 case 129:
  return LL2_DO_NOTHING;
 case 130:
  return LL2_ASSERT;
 default:
  return LL2_DO_NOTHING;
 }
}
