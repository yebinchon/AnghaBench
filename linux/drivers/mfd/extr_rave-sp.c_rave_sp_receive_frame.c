
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned char u8 ;
struct rave_sp {TYPE_3__* variant; TYPE_1__* serdev; } ;
struct device {int dummy; } ;
typedef int crc_calculated ;
struct TYPE_6__ {TYPE_2__* checksum; } ;
struct TYPE_5__ {size_t length; int (* subroutine ) (unsigned char const*,size_t const,unsigned char*) ;} ;
struct TYPE_4__ {struct device dev; } ;


 int DUMP_PREFIX_NONE ;
 int RAVE_SP_CHECKSUM_SIZE ;
 int dev_warn (struct device*,char*) ;
 scalar_t__ memcmp (unsigned char*,unsigned char const*,size_t const) ;
 int print_hex_dump_debug (char*,int ,int,int,unsigned char const*,size_t,int) ;
 scalar_t__ rave_sp_id_is_event (unsigned char const) ;
 int rave_sp_receive_event (struct rave_sp*,unsigned char const*,size_t) ;
 int rave_sp_receive_reply (struct rave_sp*,unsigned char const*,size_t) ;
 int stub1 (unsigned char const*,size_t const,unsigned char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void rave_sp_receive_frame(struct rave_sp *sp,
      const unsigned char *data,
      size_t length)
{
 const size_t checksum_length = sp->variant->checksum->length;
 const size_t payload_length = length - checksum_length;
 const u8 *crc_reported = &data[payload_length];
 struct device *dev = &sp->serdev->dev;
 u8 crc_calculated[RAVE_SP_CHECKSUM_SIZE];

 if (unlikely(checksum_length > sizeof(crc_calculated))) {
  dev_warn(dev, "Checksum too long, dropping\n");
  return;
 }

 print_hex_dump_debug("rave-sp rx: ", DUMP_PREFIX_NONE,
        16, 1, data, length, 0);

 if (unlikely(length <= checksum_length)) {
  dev_warn(dev, "Dropping short frame\n");
  return;
 }

 sp->variant->checksum->subroutine(data, payload_length,
       crc_calculated);

 if (memcmp(crc_calculated, crc_reported, checksum_length)) {
  dev_warn(dev, "Dropping bad frame\n");
  return;
 }

 if (rave_sp_id_is_event(data[0]))
  rave_sp_receive_event(sp, data, length);
 else
  rave_sp_receive_reply(sp, data, length);
}
