
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_hwinfo {char* data; int size; } ;


 int le32_to_cpu (int ) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strlen (char const*) ;

const char *nfp_hwinfo_lookup(struct nfp_hwinfo *hwinfo, const char *lookup)
{
 const char *key, *val, *end;

 if (!hwinfo || !lookup)
  return ((void*)0);

 end = hwinfo->data + le32_to_cpu(hwinfo->size) - sizeof(u32);

 for (key = hwinfo->data; *key && key < end;
      key = val + strlen(val) + 1) {

  val = key + strlen(key) + 1;

  if (strcmp(key, lookup) == 0)
   return val;
 }

 return ((void*)0);
}
