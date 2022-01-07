
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_ll2_stats {int dummy; } ;


 int __qed_ll2_get_stats (void*,int ,struct qed_ll2_stats*) ;
 int memset (struct qed_ll2_stats*,int ,int) ;

int qed_ll2_get_stats(void *cxt,
        u8 connection_handle, struct qed_ll2_stats *p_stats)
{
 memset(p_stats, 0, sizeof(*p_stats));
 return __qed_ll2_get_stats(cxt, connection_handle, p_stats);
}
