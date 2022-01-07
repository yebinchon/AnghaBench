
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer_string_format {int hlist; } ;


 int hlist_del (int *) ;
 int kfree (struct tracer_string_format*) ;

__attribute__((used)) static void mlx5_tracer_clean_message(struct tracer_string_format *str_frmt)
{
 hlist_del(&str_frmt->hlist);
 kfree(str_frmt);
}
