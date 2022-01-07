
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msix_entry {int dummy; } ;
struct mic_irq_info {int num_vectors; struct msix_entry* msix_entries; int * mic_msi_map; } ;
struct mic_device {struct mic_irq_info irq_info; } ;



__attribute__((used)) static struct msix_entry *mic_get_available_vector(struct mic_device *mdev)
{
 int i;
 struct mic_irq_info *info = &mdev->irq_info;

 for (i = 0; i < info->num_vectors; i++)
  if (!info->mic_msi_map[i])
   return &info->msix_entries[i];
 return ((void*)0);
}
