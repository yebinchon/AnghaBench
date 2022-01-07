
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum nfp_bpf_map_use { ____Placeholder_nfp_bpf_map_use } nfp_bpf_map_use ;


 int ARRAY_SIZE (char const* const*) ;





__attribute__((used)) static const char *nfp_bpf_map_use_name(enum nfp_bpf_map_use use)
{
 static const char * const names[] = {
  [131] = "unused",
  [129] = "read",
  [128] = "write",
  [130] = "atomic",
 };

 if (use >= ARRAY_SIZE(names) || !names[use])
  return "unknown";
 return names[use];
}
