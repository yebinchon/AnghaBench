
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __be16 ;


 int GVE_RXF_FRAG ;
 int GVE_RXF_IPV4 ;
 int GVE_RXF_IPV6 ;

__attribute__((used)) static inline bool gve_needs_rss(__be16 flag)
{
 if (flag & GVE_RXF_FRAG)
  return 0;
 if (flag & (GVE_RXF_IPV4 | GVE_RXF_IPV6))
  return 1;
 return 0;
}
