
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_hwinfo {char* data; } ;
struct nfp_cpp {int dummy; } ;


 int EINVAL ;
 int nfp_warn (struct nfp_cpp*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static int
hwinfo_db_walk(struct nfp_cpp *cpp, struct nfp_hwinfo *hwinfo, u32 size)
{
 const char *key, *val, *end = hwinfo->data + size;

 for (key = hwinfo->data; *key && key < end;
      key = val + strlen(val) + 1) {

  val = key + strlen(key) + 1;
  if (val >= end) {
   nfp_warn(cpp, "Bad HWINFO - overflowing key\n");
   return -EINVAL;
  }

  if (val + strlen(val) + 1 > end) {
   nfp_warn(cpp, "Bad HWINFO - overflowing value\n");
   return -EINVAL;
  }
 }

 return 0;
}
