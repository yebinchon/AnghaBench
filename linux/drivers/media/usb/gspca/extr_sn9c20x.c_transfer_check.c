
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct sd {int pktsz; int npkt; int nchg; int work; TYPE_4__* jpegqual; } ;
struct gspca_dev {TYPE_2__** urb; int last_packet_type; } ;
typedef int s32 ;
struct TYPE_7__ {int val; } ;
struct TYPE_8__ {int minimum; int maximum; TYPE_3__ cur; } ;
struct TYPE_6__ {TYPE_1__* iso_frame_desc; } ;
struct TYPE_5__ {int length; } ;


 int DISCARD_PACKET ;
 int schedule_work (int *) ;

__attribute__((used)) static void transfer_check(struct gspca_dev *gspca_dev,
   u8 *data)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int new_qual, r;

 new_qual = 0;


 if (data[6] & 0x08) {
  gspca_dev->last_packet_type = DISCARD_PACKET;
  new_qual = -5;
 } else {


  r = (sd->pktsz * 100) /
   (sd->npkt *
    gspca_dev->urb[0]->iso_frame_desc[0].length);
  if (r >= 85)
   new_qual = -3;
  else if (r < 75)
   new_qual = 2;
 }
 if (new_qual != 0) {
  sd->nchg += new_qual;
  if (sd->nchg < -6 || sd->nchg >= 12) {



   s32 curqual = sd->jpegqual->cur.val;
   sd->nchg = 0;
   new_qual += curqual;
   if (new_qual < sd->jpegqual->minimum)
    new_qual = sd->jpegqual->minimum;
   else if (new_qual > sd->jpegqual->maximum)
    new_qual = sd->jpegqual->maximum;
   if (new_qual != curqual) {
    sd->jpegqual->cur.val = new_qual;
    schedule_work(&sd->work);
   }
  }
 } else {
  sd->nchg = 0;
 }
 sd->pktsz = sd->npkt = 0;
}
