
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_end; int vm_start; struct videobuf_mapping* vm_private_data; } ;
struct videobuf_mapping {int count; TYPE_1__* q; } ;
struct TYPE_2__ {int dev; } ;


 int dev_dbg (int ,char*,struct videobuf_mapping*,int ,int ,int ) ;

__attribute__((used)) static void videobuf_vm_open(struct vm_area_struct *vma)
{
 struct videobuf_mapping *map = vma->vm_private_data;

 dev_dbg(map->q->dev, "vm_open %p [count=%u,vma=%08lx-%08lx]\n",
  map, map->count, vma->vm_start, vma->vm_end);

 map->count++;
}
