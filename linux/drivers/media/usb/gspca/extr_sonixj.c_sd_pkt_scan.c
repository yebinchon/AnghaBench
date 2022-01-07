
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sd {int npkt; int pktsz; int short_mark; int* jpeg_hdr; int nchg; int quality; scalar_t__ ag_cnt; int work; } ;
struct gspca_dev {scalar_t__ last_packet_type; TYPE_2__** urb; } ;
struct TYPE_4__ {TYPE_1__* iso_frame_desc; } ;
struct TYPE_3__ {int length; } ;


 void* DISCARD_PACKET ;
 scalar_t__ FIRST_PACKET ;
 scalar_t__ INTER_PACKET ;
 int JPEG_HDR_SZ ;
 scalar_t__ LAST_PACKET ;
 int QUALITY_MAX ;
 int QUALITY_MIN ;
 int gspca_frame_add (struct gspca_dev*,scalar_t__,int*,int) ;
 int schedule_work (int *) ;
 int set_lum (struct sd*,int*) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int i, new_qual;
 sd->npkt++;
 sd->pktsz += len;






 i = sd->short_mark;
 if (i != 0) {
  sd->short_mark = 0;
  if (i < 0
   && data[0] == 0xff
   && data[1] == 0x00)
   goto marker_found;
  if (data[0] == 0xff && data[1] == 0xff) {
   i = 0;
   goto marker_found;
  }
  len -= i;
  if (len <= 0)
   return;
  data += i;
 }


 for (i = len - 1; --i >= 0; ) {
  if (data[i] != 0xff) {
   i--;
   continue;
  }
  if (data[i + 1] == 0xff) {


   if (i + 2 >= len || data[i + 2] == 0x00)
    goto marker_found;
  }
 }



 if (data[len - 1] == 0xff)
  sd->short_mark = -1;
 if (gspca_dev->last_packet_type == LAST_PACKET)
  gspca_frame_add(gspca_dev, FIRST_PACKET,
    sd->jpeg_hdr, JPEG_HDR_SZ);
 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
 return;



marker_found:
 new_qual = 0;
 if (i > 2) {
  if (data[i - 2] != 0xff || data[i - 1] != 0xd9) {
   gspca_dev->last_packet_type = DISCARD_PACKET;
   new_qual = -3;
  }
 } else if (i + 6 < len) {
  if (data[i + 6] & 0x08) {
   gspca_dev->last_packet_type = DISCARD_PACKET;
   new_qual = -5;
  }
 }

 gspca_frame_add(gspca_dev, LAST_PACKET, data, i);


 if (new_qual == 0) {
  int r;

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
   sd->nchg = 0;
   new_qual += sd->quality;
   if (new_qual < QUALITY_MIN)
    new_qual = QUALITY_MIN;
   else if (new_qual > QUALITY_MAX)
    new_qual = QUALITY_MAX;
   if (new_qual != sd->quality) {
    sd->quality = new_qual;
    schedule_work(&sd->work);
   }
  }
 } else {
  sd->nchg = 0;
 }
 sd->pktsz = sd->npkt = 0;



 if (i + 62 > len) {
  sd->short_mark = i + 62 - len;
  return;
 }
 if (sd->ag_cnt >= 0)
  set_lum(sd, data + i);


 i += 62;
 if (i < len) {
  data += i;
  len -= i;
  gspca_frame_add(gspca_dev, FIRST_PACKET,
    sd->jpeg_hdr, JPEG_HDR_SZ);
  gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
 }
}
