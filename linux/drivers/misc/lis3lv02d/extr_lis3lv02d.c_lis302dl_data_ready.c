
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3lv02d {int * data_ready_count; } ;


 int lis3lv02d_get_xyz (struct lis3lv02d*,int*,int*,int*) ;

__attribute__((used)) static inline void lis302dl_data_ready(struct lis3lv02d *lis3, int index)
{
 int dummy;


 lis3lv02d_get_xyz(lis3, &dummy, &dummy, &dummy);
 lis3->data_ready_count[index]++;
}
