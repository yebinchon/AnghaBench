
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CTD_PKT_TYPE ;
 int CTD_PKT_TYPE_SHFT ;
 int CTD_SOURCE_SHFT ;

__attribute__((used)) static inline u32 ctd_type_source_ctl(int source, int control)
{
 return (CTD_PKT_TYPE << CTD_PKT_TYPE_SHFT) |
  (source << CTD_SOURCE_SHFT) | control;
}
