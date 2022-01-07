
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_dev {int nr_chans; } ;


 int SOLO_CAP_CH_COMP_ENA_E (int) ;
 int SOLO_CAP_CH_SCALE (int) ;
 int solo_capture_config (struct solo_dev*) ;
 int solo_jpeg_config (struct solo_dev*) ;
 int solo_mp4e_config (struct solo_dev*) ;
 int solo_reg_write (struct solo_dev*,int ,int ) ;

int solo_enc_init(struct solo_dev *solo_dev)
{
 int i;

 solo_capture_config(solo_dev);
 solo_mp4e_config(solo_dev);
 solo_jpeg_config(solo_dev);

 for (i = 0; i < solo_dev->nr_chans; i++) {
  solo_reg_write(solo_dev, SOLO_CAP_CH_SCALE(i), 0);
  solo_reg_write(solo_dev, SOLO_CAP_CH_COMP_ENA_E(i), 0);
 }

 return 0;
}
