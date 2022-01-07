
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ microsoft_gen1; } ;
struct mceusb_dev {TYPE_1__ flags; struct device* dev; } ;
struct device {int dummy; } ;


 int DIV_ROUND_CLOSEST (unsigned int,int) ;
 int MCE_COMMAND_IRDATA ;
 int MCE_IRDATA_TRAILER ;
 int MCE_PACKET_LENGTH_MASK ;
 int MCE_PORT_MASK ;
 int MCE_TIME_UNIT ;
 int dev_dbg (struct device*,char*,...) ;
 int min (int,int) ;

__attribute__((used)) static void mceusb_dev_printdata(struct mceusb_dev *ir, u8 *buf, int buf_len,
     int offset, int len, bool out)
{
}
