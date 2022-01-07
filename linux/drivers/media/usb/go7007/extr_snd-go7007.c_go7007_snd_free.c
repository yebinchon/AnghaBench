
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_device {struct go7007* device_data; } ;
struct go7007 {int * snd_context; } ;


 int kfree (int *) ;

__attribute__((used)) static int go7007_snd_free(struct snd_device *device)
{
 struct go7007 *go = device->device_data;

 kfree(go->snd_context);
 go->snd_context = ((void*)0);
 return 0;
}
