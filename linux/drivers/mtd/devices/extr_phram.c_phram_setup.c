
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int buf ;


 int kfree (char*) ;
 int kill_final_newline (char*) ;
 int parse_err (char*) ;
 int parse_name (char**,char*) ;
 int parse_num64 (int *,char*) ;
 int pr_info (char*,char*,int ,int ) ;
 int register_device (char*,int ,int ) ;
 int strcpy (char*,char const*) ;
 int strnlen (char const*,int) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int phram_setup(const char *val)
{
 char buf[64 + 20 + 20], *str = buf;
 char *token[3];
 char *name;
 uint64_t start;
 uint64_t len;
 int i, ret;

 if (strnlen(val, sizeof(buf)) >= sizeof(buf))
  parse_err("parameter too long\n");

 strcpy(str, val);
 kill_final_newline(str);

 for (i = 0; i < 3; i++)
  token[i] = strsep(&str, ",");

 if (str)
  parse_err("too many arguments\n");

 if (!token[2])
  parse_err("not enough arguments\n");

 ret = parse_name(&name, token[0]);
 if (ret)
  return ret;

 ret = parse_num64(&start, token[1]);
 if (ret) {
  kfree(name);
  parse_err("illegal start address\n");
 }

 ret = parse_num64(&len, token[2]);
 if (ret) {
  kfree(name);
  parse_err("illegal device length\n");
 }

 ret = register_device(name, start, len);
 if (!ret)
  pr_info("%s device: %#llx at %#llx\n", name, len, start);
 else
  kfree(name);

 return ret;
}
