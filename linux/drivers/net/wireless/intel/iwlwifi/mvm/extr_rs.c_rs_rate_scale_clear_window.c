
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rate_scale_data {void* average_tpt; scalar_t__ counter; void* success_ratio; scalar_t__ success_counter; scalar_t__ data; } ;


 void* IWL_INVALID_VALUE ;

__attribute__((used)) static void rs_rate_scale_clear_window(struct iwl_rate_scale_data *window)
{
 window->data = 0;
 window->success_counter = 0;
 window->success_ratio = IWL_INVALID_VALUE;
 window->counter = 0;
 window->average_tpt = IWL_INVALID_VALUE;
}
