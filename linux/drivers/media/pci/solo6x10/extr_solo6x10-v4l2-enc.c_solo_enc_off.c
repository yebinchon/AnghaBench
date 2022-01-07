
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct solo_enc_dev {int ch; scalar_t__ bw_weight; struct solo_dev* solo_dev; } ;
struct solo_dev {int enc_bw_remain; } ;


 int SOLO_CAP_CH_COMP_ENA_E (int ) ;
 int SOLO_CAP_CH_SCALE (int ) ;
 int solo_reg_write (struct solo_dev*,int ,int ) ;

__attribute__((used)) static void solo_enc_off(struct solo_enc_dev *solo_enc)
{
 struct solo_dev *solo_dev = solo_enc->solo_dev;

 solo_dev->enc_bw_remain += solo_enc->bw_weight;

 solo_reg_write(solo_dev, SOLO_CAP_CH_SCALE(solo_enc->ch), 0);
 solo_reg_write(solo_dev, SOLO_CAP_CH_COMP_ENA_E(solo_enc->ch), 0);
}
