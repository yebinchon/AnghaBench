
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ivtv_card {int v4l2_dev; } ;
struct ivtv {int serialize_lock; } ;


 int mutex_unlock (int *) ;
 struct ivtv* to_ivtv (int ) ;

__attribute__((used)) static inline void snd_ivtv_unlock(struct snd_ivtv_card *itvsc)
{
 struct ivtv *itv = to_ivtv(itvsc->v4l2_dev);
 mutex_unlock(&itv->serialize_lock);
}
