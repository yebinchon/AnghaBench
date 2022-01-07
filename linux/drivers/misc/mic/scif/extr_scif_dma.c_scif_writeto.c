
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int scif_epd_t ;
typedef size_t off_t ;
struct TYPE_3__ {int this_device; } ;
struct TYPE_4__ {TYPE_1__ mdev; } ;


 int SCIF_LOCAL_TO_REMOTE ;
 size_t SCIF_MAX_UNALIGNED_BUF_SIZE ;
 int dev_dbg (int ,char*,int ,size_t,size_t,size_t,int) ;
 TYPE_2__ scif_info ;
 int scif_rma_copy (int ,size_t,int,size_t,size_t,int,int ,int) ;
 scalar_t__ scif_unaligned (size_t,size_t) ;

int scif_writeto(scif_epd_t epd, off_t loffset, size_t len,
   off_t roffset, int flags)
{
 int err;

 dev_dbg(scif_info.mdev.this_device,
  "SCIFAPI writeto: ep %p loffset 0x%lx len 0x%lx roffset 0x%lx flags 0x%x\n",
  epd, loffset, len, roffset, flags);
 if (scif_unaligned(loffset, roffset)) {
  while (len > SCIF_MAX_UNALIGNED_BUF_SIZE) {
   err = scif_rma_copy(epd, loffset, 0x0,
         SCIF_MAX_UNALIGNED_BUF_SIZE,
         roffset, flags,
         SCIF_LOCAL_TO_REMOTE, 0);
   if (err)
    goto writeto_err;
   loffset += SCIF_MAX_UNALIGNED_BUF_SIZE;
   roffset += SCIF_MAX_UNALIGNED_BUF_SIZE;
   len -= SCIF_MAX_UNALIGNED_BUF_SIZE;
  }
 }
 err = scif_rma_copy(epd, loffset, 0x0, len,
       roffset, flags, SCIF_LOCAL_TO_REMOTE, 1);
writeto_err:
 return err;
}
