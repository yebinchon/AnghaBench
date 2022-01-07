
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 unsigned long INT_MAX ;
 int pr_err (char*,char const*) ;
 unsigned long simple_strtoul (char const*,char**,int ) ;

__attribute__((used)) static int bytes_str_to_int(const char *str)
{
 char *endp;
 unsigned long result;

 result = simple_strtoul(str, &endp, 0);
 if (str == endp || result >= INT_MAX) {
  pr_err("UBI error: incorrect bytes count: \"%s\"\n", str);
  return -EINVAL;
 }

 switch (*endp) {
 case 'G':
  result *= 1024;

 case 'M':
  result *= 1024;

 case 'K':
  result *= 1024;
  if (endp[1] == 'i' && endp[2] == 'B')
   endp += 2;
 case '\0':
  break;
 default:
  pr_err("UBI error: incorrect bytes count: \"%s\"\n", str);
  return -EINVAL;
 }

 return result;
}
