
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct dvb_usb_device {int dummy; } ;
struct TYPE_4__ {int keycode; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int READ_REMOTE_REQ ;
 int REMOTE_KEY_PRESSED ;
 int REMOTE_NO_KEY_PRESSED ;
 int deb_rc (char*,int,int) ;
 int kfree (int*) ;
 int* kmalloc (int,int ) ;
 int rc5_custom (TYPE_1__*) ;
 TYPE_1__* rc_map_vp702x_table ;
 int vp702x_usb_in_op (struct dvb_usb_device*,int ,int ,int ,int*,int) ;

__attribute__((used)) static int vp702x_rc_query(struct dvb_usb_device *d, u32 *event, int *state)
{
 return 0;
}
