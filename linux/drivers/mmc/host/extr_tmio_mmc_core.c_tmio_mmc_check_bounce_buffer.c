
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
struct tmio_mmc_host {int sg_orig; TYPE_1__ bounce_sg; int bounce_buf; TYPE_1__* sg_ptr; } ;


 int memcpy (void*,int ,int ) ;
 void* tmio_mmc_kmap_atomic (int ,unsigned long*) ;
 int tmio_mmc_kunmap_atomic (int ,unsigned long*,void*) ;

__attribute__((used)) static void tmio_mmc_check_bounce_buffer(struct tmio_mmc_host *host)
{
 if (host->sg_ptr == &host->bounce_sg) {
  unsigned long flags;
  void *sg_vaddr = tmio_mmc_kmap_atomic(host->sg_orig, &flags);

  memcpy(sg_vaddr, host->bounce_buf, host->bounce_sg.length);
  tmio_mmc_kunmap_atomic(host->sg_orig, &flags, sg_vaddr);
 }
}
