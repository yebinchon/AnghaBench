
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct il3945_rate_scale_data {int success_ratio; scalar_t__ stamp; int average_tpt; scalar_t__ counter; scalar_t__ success_counter; scalar_t__ data; } ;


 int IL_INVALID_VALUE ;

__attribute__((used)) static void
il3945_clear_win(struct il3945_rate_scale_data *win)
{
 win->data = 0;
 win->success_counter = 0;
 win->success_ratio = -1;
 win->counter = 0;
 win->average_tpt = IL_INVALID_VALUE;
 win->stamp = 0;
}
