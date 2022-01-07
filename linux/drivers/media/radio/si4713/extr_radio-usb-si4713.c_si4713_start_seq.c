
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct si4713_usb_device {int* buffer; } ;
struct TYPE_3__ {int len; int * payload; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int BUFFER_LENGTH ;
 int memcpy (int*,int const*,int) ;
 int memset (int*,int ,int) ;
 int si4713_send_startup_command (struct si4713_usb_device*) ;
 TYPE_1__* start_seq ;

__attribute__((used)) static int si4713_start_seq(struct si4713_usb_device *radio)
{
 int retval = 0;
 int i;

 radio->buffer[0] = 0x3f;

 for (i = 0; i < ARRAY_SIZE(start_seq); i++) {
  int len = start_seq[i].len;
  const u8 *payload = start_seq[i].payload;

  memcpy(radio->buffer + 1, payload, len);
  memset(radio->buffer + len + 1, 0, BUFFER_LENGTH - 1 - len);
  retval = si4713_send_startup_command(radio);
 }

 return retval;
}
