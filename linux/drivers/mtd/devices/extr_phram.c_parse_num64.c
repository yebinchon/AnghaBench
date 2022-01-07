
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int EINVAL ;
 int kstrtou64 (char*,int ,int*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int parse_num64(uint64_t *num64, char *token)
{
 size_t len;
 int shift = 0;
 int ret;

 len = strlen(token);

 if (len > 2) {
  if (token[len - 1] == 'i') {
   switch (token[len - 2]) {
   case 'G':
    shift += 10;

   case 'M':
    shift += 10;

   case 'k':
    shift += 10;
    token[len - 2] = 0;
    break;
   default:
    return -EINVAL;
   }
  }
 }

 ret = kstrtou64(token, 0, num64);
 *num64 <<= shift;

 return ret;
}
