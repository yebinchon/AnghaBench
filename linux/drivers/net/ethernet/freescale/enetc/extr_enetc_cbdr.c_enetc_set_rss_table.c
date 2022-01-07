
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct enetc_si {int dummy; } ;


 int enetc_cmd_rss_table (struct enetc_si*,int *,int,int) ;

int enetc_set_rss_table(struct enetc_si *si, const u32 *table, int count)
{
 return enetc_cmd_rss_table(si, (u32 *)table, count, 0);
}
