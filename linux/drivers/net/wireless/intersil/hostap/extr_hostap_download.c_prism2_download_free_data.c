
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct prism2_download_data {int num_areas; TYPE_1__* data; } ;
struct TYPE_2__ {struct prism2_download_data* data; } ;


 int kfree (struct prism2_download_data*) ;

__attribute__((used)) static void prism2_download_free_data(struct prism2_download_data *dl)
{
 int i;

 if (dl == ((void*)0))
  return;

 for (i = 0; i < dl->num_areas; i++)
  kfree(dl->data[i].data);
 kfree(dl);
}
