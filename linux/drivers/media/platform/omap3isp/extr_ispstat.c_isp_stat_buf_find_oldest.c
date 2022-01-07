
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ispstat_buffer {int dummy; } ;
struct ispstat {int dummy; } ;


 struct ispstat_buffer* __isp_stat_buf_find (struct ispstat*,int ) ;

__attribute__((used)) static inline struct ispstat_buffer *
isp_stat_buf_find_oldest(struct ispstat *stat)
{
 return __isp_stat_buf_find(stat, 0);
}
