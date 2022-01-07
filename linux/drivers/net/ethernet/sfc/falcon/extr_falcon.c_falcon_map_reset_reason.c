
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum reset_type { ____Placeholder_reset_type } reset_type ;


 int RESET_TYPE_ALL ;

 int RESET_TYPE_INVISIBLE ;



__attribute__((used)) static enum reset_type falcon_map_reset_reason(enum reset_type reason)
{
 switch (reason) {
 case 129:
 case 130:
 case 128:



  return RESET_TYPE_INVISIBLE;
 default:
  return RESET_TYPE_ALL;
 }
}
