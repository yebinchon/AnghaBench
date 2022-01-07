
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_enc_dev {int ch; struct solo_dev* solo_dev; } ;
struct solo_dev {int motion_mask; } ;



__attribute__((used)) static int solo_is_motion_on(struct solo_enc_dev *solo_enc)
{
 struct solo_dev *solo_dev = solo_enc->solo_dev;

 return (solo_dev->motion_mask >> solo_enc->ch) & 1;
}
