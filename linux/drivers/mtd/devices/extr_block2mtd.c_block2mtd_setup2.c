
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 unsigned long MTD_DEFAULT_TIMEOUT ;
 size_t PAGE_SIZE ;
 int add_device (char*,size_t,unsigned long) ;
 int kill_final_newline (char*) ;
 int parse_num (size_t*,char*) ;
 int pr_err (char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char*) ;
 int strnlen (char const*,int) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int block2mtd_setup2(const char *val)
{

 char buf[80 + 12 + 80 + 8];
 char *str = buf;
 char *token[2];
 char *name;
 size_t erase_size = PAGE_SIZE;
 unsigned long timeout = MTD_DEFAULT_TIMEOUT;
 int i, ret;

 if (strnlen(val, sizeof(buf)) >= sizeof(buf)) {
  pr_err("parameter too long\n");
  return 0;
 }

 strcpy(str, val);
 kill_final_newline(str);

 for (i = 0; i < 2; i++)
  token[i] = strsep(&str, ",");

 if (str) {
  pr_err("too many arguments\n");
  return 0;
 }

 if (!token[0]) {
  pr_err("no argument\n");
  return 0;
 }

 name = token[0];
 if (strlen(name) + 1 > 80) {
  pr_err("device name too long\n");
  return 0;
 }

 if (token[1]) {
  ret = parse_num(&erase_size, token[1]);
  if (ret) {
   pr_err("illegal erase size\n");
   return 0;
  }
 }

 add_device(name, erase_size, timeout);

 return 0;
}
