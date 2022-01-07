
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bfa_cee_stats {int dummy; } ;


 int ntohl (int ) ;

__attribute__((used)) static void
bfa_cee_stats_swap(struct bfa_cee_stats *stats)
{
 u32 *buffer = (u32 *)stats;
 int i;

 for (i = 0; i < (sizeof(struct bfa_cee_stats) / sizeof(u32));
  i++) {
  buffer[i] = ntohl(buffer[i]);
 }
}
