
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xbox_remote {unsigned char* inbuf; int rdev; } ;
struct urb {int actual_length; TYPE_1__* dev; struct xbox_remote* context; } ;
typedef int __le16 ;
struct TYPE_2__ {int dev; } ;


 int RC_PROTO_XBOX_DVD ;
 int dev_warn (int *,char*,unsigned char,unsigned char,unsigned char*) ;
 int le16_to_cpup (int *) ;
 int rc_keydown (int ,int ,int ,int ) ;

__attribute__((used)) static void xbox_remote_input_report(struct urb *urb)
{
 struct xbox_remote *xbox_remote = urb->context;
 unsigned char *data = xbox_remote->inbuf;
 if (urb->actual_length != 6 || urb->actual_length != data[1]) {
  dev_warn(&urb->dev->dev, "Weird data, len=%d: %*ph\n",
    urb->actual_length, urb->actual_length, data);
  return;
 }

 rc_keydown(xbox_remote->rdev, RC_PROTO_XBOX_DVD,
     le16_to_cpup((__le16 *)(data + 2)), 0);
}
