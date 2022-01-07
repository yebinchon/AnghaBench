
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char const*,char*,int*) ;

__attribute__((used)) static inline int fw_major_num(const char *fw_ver)
{
 int fw_major = 0, i;

 i = sscanf(fw_ver, "%d.", &fw_major);
 if (i != 1)
  return 0;

 return fw_major;
}
