
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amradio_device {int* buffer; } ;


 int AMRADIO_GET_SIGNAL ;
 int amradio_send_cmd (struct amradio_device*,int ,int ,int *,int ,int) ;

__attribute__((used)) static int amradio_get_stat(struct amradio_device *radio, bool *is_stereo, u32 *signal)
{
 int ret = amradio_send_cmd(radio,
   AMRADIO_GET_SIGNAL, 0, ((void*)0), 0, 1);

 if (ret)
  return ret;
 *is_stereo = radio->buffer[2] >> 7;
 *signal = (radio->buffer[3] & 0xf0) << 8;
 return 0;
}
