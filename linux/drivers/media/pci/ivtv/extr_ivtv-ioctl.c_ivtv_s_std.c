
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ v4l2_std_id ;
struct ivtv {scalar_t__ std; int v4l2_cap; int decoding; int capturing; int i_flags; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct ivtv* itv; } ;


 int EBUSY ;
 int EINVAL ;
 int IVTV_DEBUG_INFO (char*,unsigned long long) ;
 int IVTV_F_I_RADIO_USER ;
 int V4L2_CAP_VIDEO_OUTPUT ;
 scalar_t__ V4L2_STD_ALL ;
 scalar_t__ atomic_read (int *) ;
 TYPE_1__* fh2id (void*) ;
 int ivtv_s_std_dec (struct ivtv*,scalar_t__) ;
 int ivtv_s_std_enc (struct ivtv*,scalar_t__) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int ivtv_s_std(struct file *file, void *fh, v4l2_std_id std)
{
 struct ivtv *itv = fh2id(fh)->itv;

 if ((std & V4L2_STD_ALL) == 0)
  return -EINVAL;

 if (std == itv->std)
  return 0;

 if (test_bit(IVTV_F_I_RADIO_USER, &itv->i_flags) ||
     atomic_read(&itv->capturing) > 0 ||
     atomic_read(&itv->decoding) > 0) {


  return -EBUSY;
 }

 IVTV_DEBUG_INFO("Switching standard to %llx.\n",
  (unsigned long long)itv->std);

 ivtv_s_std_enc(itv, std);
 if (itv->v4l2_cap & V4L2_CAP_VIDEO_OUTPUT)
  ivtv_s_std_dec(itv, std);

 return 0;
}
