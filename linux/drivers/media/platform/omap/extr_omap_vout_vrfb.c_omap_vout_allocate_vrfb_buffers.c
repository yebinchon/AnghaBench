
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ memory; } ;
struct omap_vout_device {int smsshado_size; scalar_t__* smsshado_virt_addr; scalar_t__* smsshado_phy_addr; TYPE_1__ vq; } ;


 int ENOMEM ;
 scalar_t__ V4L2_MEMORY_MMAP ;
 int memset (void*,int ,int ) ;
 scalar_t__ omap_vout_alloc_buffer (int ,scalar_t__*) ;
 int omap_vout_free_buffer (scalar_t__,int ) ;

__attribute__((used)) static int omap_vout_allocate_vrfb_buffers(struct omap_vout_device *vout,
  unsigned int *count, int startindex)
{
 int i, j;

 for (i = 0; i < *count; i++) {
  if (!vout->smsshado_virt_addr[i]) {
   vout->smsshado_virt_addr[i] =
    omap_vout_alloc_buffer(vout->smsshado_size,
      &vout->smsshado_phy_addr[i]);
  }
  if (!vout->smsshado_virt_addr[i] && startindex != -1) {
   if (vout->vq.memory == V4L2_MEMORY_MMAP && i >= startindex)
    break;
  }
  if (!vout->smsshado_virt_addr[i]) {
   for (j = 0; j < i; j++) {
    omap_vout_free_buffer(
      vout->smsshado_virt_addr[j],
      vout->smsshado_size);
    vout->smsshado_virt_addr[j] = 0;
    vout->smsshado_phy_addr[j] = 0;
   }
   *count = 0;
   return -ENOMEM;
  }
  memset((void *)(long)vout->smsshado_virt_addr[i], 0,
         vout->smsshado_size);
 }
 return 0;
}
