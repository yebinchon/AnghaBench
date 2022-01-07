
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amradio_device {int muted; } ;


 int AMRADIO_SET_MUTE ;
 int amradio_send_cmd (struct amradio_device*,int ,int,int *,int ,int) ;

__attribute__((used)) static int amradio_set_mute(struct amradio_device *radio, bool mute)
{
 int ret = amradio_send_cmd(radio,
   AMRADIO_SET_MUTE, mute, ((void*)0), 0, 0);

 if (!ret)
  radio->muted = mute;
 return ret;
}
