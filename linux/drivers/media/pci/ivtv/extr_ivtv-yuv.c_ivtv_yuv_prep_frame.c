
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ivtv_dma_frame {int dummy; } ;
struct ivtv {int serialize_lock; } ;


 int ivtv_yuv_next_free (struct ivtv*) ;
 int ivtv_yuv_setup_frame (struct ivtv*,struct ivtv_dma_frame*) ;
 int ivtv_yuv_udma_frame (struct ivtv*,struct ivtv_dma_frame*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ivtv_yuv_prep_frame(struct ivtv *itv, struct ivtv_dma_frame *args)
{
 int res;


 ivtv_yuv_next_free(itv);
 ivtv_yuv_setup_frame(itv, args);



 mutex_unlock(&itv->serialize_lock);
 res = ivtv_yuv_udma_frame(itv, args);
 mutex_lock(&itv->serialize_lock);
 return res;
}
