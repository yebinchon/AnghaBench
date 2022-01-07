
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;
typedef enum storms { ____Placeholder_storms } storms ;


 int BNX2X_ERR (char*) ;

 int CSTORM_ASSERT_LIST_OFFSET (int) ;
 int EINVAL ;


 int TSTORM_ASSERT_LIST_OFFSET (int) ;

 int USTORM_ASSERT_LIST_OFFSET (int) ;

 int XSTORM_ASSERT_LIST_OFFSET (int) ;

__attribute__((used)) static inline int bnx2x_get_assert_list_entry(struct bnx2x *bp,
           enum storms storm,
           int entry)
{
 switch (storm) {
 case 128:
  return XSTORM_ASSERT_LIST_OFFSET(entry);
 case 130:
  return TSTORM_ASSERT_LIST_OFFSET(entry);
 case 132:
  return CSTORM_ASSERT_LIST_OFFSET(entry);
 case 129:
  return USTORM_ASSERT_LIST_OFFSET(entry);
 case 131:
 default:
  BNX2X_ERR("unknown storm\n");
 }
 return -EINVAL;
}
