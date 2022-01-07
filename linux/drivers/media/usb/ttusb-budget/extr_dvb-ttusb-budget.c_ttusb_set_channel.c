
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ttusb {int c; } ;
typedef int b ;


 int ttusb_cmd (struct ttusb*,int*,int,int ) ;

__attribute__((used)) static int ttusb_set_channel(struct ttusb *ttusb, int chan_id, int filter_type,
        int pid)
{
 int err;

 u8 b[] = { 0xaa, ++ttusb->c, 0x22, 4, chan_id, filter_type,
  (pid >> 8) & 0xff, pid & 0xff
 };

 err = ttusb_cmd(ttusb, b, sizeof(b), 0);
 return err;
}
