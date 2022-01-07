
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_filter_spec {int match_flags; } ;


 int EF4_FILTER_MATCH_LOC_MAC_IG ;

__attribute__((used)) static inline int ef4_filter_set_uc_def(struct ef4_filter_spec *spec)
{
 spec->match_flags |= EF4_FILTER_MATCH_LOC_MAC_IG;
 return 0;
}
