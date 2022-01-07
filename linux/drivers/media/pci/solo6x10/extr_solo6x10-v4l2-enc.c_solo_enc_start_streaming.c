
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct solo_enc_dev {int dummy; } ;


 int solo_enc_on (struct solo_enc_dev*) ;
 struct solo_enc_dev* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int solo_enc_start_streaming(struct vb2_queue *q, unsigned int count)
{
 struct solo_enc_dev *solo_enc = vb2_get_drv_priv(q);

 return solo_enc_on(solo_enc);
}
