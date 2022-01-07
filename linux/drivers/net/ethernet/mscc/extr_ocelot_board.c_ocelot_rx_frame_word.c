
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ocelot {int dummy; } ;


 int EIO ;
 int QS_XTR_RD ;






 int XTR_NOT_READY ;

 int XTR_VALID_BYTES (int) ;
 int ocelot_read_rix (struct ocelot*,int ,int ) ;

__attribute__((used)) static int ocelot_rx_frame_word(struct ocelot *ocelot, u8 grp, bool ifh,
    u32 *rval)
{
 u32 val;
 u32 bytes_valid;

 val = ocelot_read_rix(ocelot, QS_XTR_RD, grp);
 if (val == XTR_NOT_READY) {
  if (ifh)
   return -EIO;

  do {
   val = ocelot_read_rix(ocelot, QS_XTR_RD, grp);
  } while (val == XTR_NOT_READY);
 }

 switch (val) {
 case 134:
  return -EIO;
 case 133:
 case 132:
 case 131:
 case 130:
 case 128:
  bytes_valid = XTR_VALID_BYTES(val);
  val = ocelot_read_rix(ocelot, QS_XTR_RD, grp);
  if (val == 129)
   *rval = ocelot_read_rix(ocelot, QS_XTR_RD, grp);
  else
   *rval = val;

  return bytes_valid;
 case 129:
  *rval = ocelot_read_rix(ocelot, QS_XTR_RD, grp);

  return 4;
 default:
  *rval = val;

  return 4;
 }
}
