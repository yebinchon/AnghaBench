
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ end; } ;
struct bttv_fh {int resources; TYPE_3__ vbi_fmt; int do_crop; } ;
struct bttv {int resources; scalar_t__ vbi_end; scalar_t__ crop_start; TYPE_2__* crop; } ;
typedef scalar_t__ __s32 ;
struct TYPE_4__ {scalar_t__ top; } ;
struct TYPE_5__ {TYPE_1__ rect; } ;


 int RESOURCE_VIDEO_READ ;
 int RESOURCE_VIDEO_STREAM ;
 int VBI_RESOURCES ;
 int VIDEO_RESOURCES ;

__attribute__((used)) static
int check_alloc_btres_lock(struct bttv *btv, struct bttv_fh *fh, int bit)
{
 int xbits;

 if (fh->resources & bit)

  return 1;

 xbits = bit;
 if (bit & (RESOURCE_VIDEO_READ | RESOURCE_VIDEO_STREAM))
  xbits |= RESOURCE_VIDEO_READ | RESOURCE_VIDEO_STREAM;


 if (btv->resources & xbits) {

  goto fail;
 }

 if ((bit & VIDEO_RESOURCES)
     && 0 == (btv->resources & VIDEO_RESOURCES)) {

  __s32 top = btv->crop[!!fh->do_crop].rect.top;

  if (btv->vbi_end > top)
   goto fail;



  btv->crop_start = top;
 } else if (bit & VBI_RESOURCES) {
  __s32 end = fh->vbi_fmt.end;

  if (end > btv->crop_start)
   goto fail;


  btv->vbi_end = end;
 }


 fh->resources |= bit;
 btv->resources |= bit;
 return 1;

 fail:
 return 0;
}
