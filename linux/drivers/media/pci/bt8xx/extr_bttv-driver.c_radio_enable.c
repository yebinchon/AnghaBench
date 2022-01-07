
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bttv {int has_radio_tuner; int audio_input; } ;


 int TVAUDIO_INPUT_RADIO ;
 int audio_input (struct bttv*,int ) ;
 int bttv_call_all (struct bttv*,int ,int ) ;
 int s_radio ;
 int tuner ;

__attribute__((used)) static void radio_enable(struct bttv *btv)
{

 if (!btv->has_radio_tuner) {
  btv->has_radio_tuner = 1;
  bttv_call_all(btv, tuner, s_radio);
  btv->audio_input = TVAUDIO_INPUT_RADIO;
  audio_input(btv, btv->audio_input);
 }
}
