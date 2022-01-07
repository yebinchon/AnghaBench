
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sd {int last_pts; int last_fid; } ;
struct TYPE_2__ {scalar_t__ bulk; } ;
struct gspca_dev {scalar_t__ last_packet_type; TYPE_1__ cam; } ;
typedef int __u32 ;


 scalar_t__ DISCARD_PACKET ;
 int D_PACK ;
 scalar_t__ FIRST_PACKET ;
 scalar_t__ INTER_PACKET ;
 scalar_t__ LAST_PACKET ;
 int UVC_STREAM_EOF ;
 int UVC_STREAM_ERR ;
 int UVC_STREAM_FID ;
 int UVC_STREAM_PTS ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int gspca_frame_add (struct gspca_dev*,scalar_t__,int*,int) ;
 int min (int,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data, int len)
{
 struct sd *sd = (struct sd *) gspca_dev;
 __u32 this_pts;
 u8 this_fid;
 int remaining_len = len;
 int payload_len;

 payload_len = gspca_dev->cam.bulk ? 2048 : 2040;
 do {
  len = min(remaining_len, payload_len);







  if (data[0] != 12 || len < 12) {
   gspca_dbg(gspca_dev, D_PACK, "bad header\n");
   goto discard;
  }


  if (data[1] & UVC_STREAM_ERR) {
   gspca_dbg(gspca_dev, D_PACK, "payload error\n");
   goto discard;
  }


  if (!(data[1] & UVC_STREAM_PTS)) {
   gspca_dbg(gspca_dev, D_PACK, "PTS not present\n");
   goto discard;
  }
  this_pts = (data[5] << 24) | (data[4] << 16)
      | (data[3] << 8) | data[2];
  this_fid = data[1] & UVC_STREAM_FID;


  if (this_pts != sd->last_pts || this_fid != sd->last_fid) {
   if (gspca_dev->last_packet_type == INTER_PACKET)
    gspca_frame_add(gspca_dev, LAST_PACKET,
      ((void*)0), 0);
   sd->last_pts = this_pts;
   sd->last_fid = this_fid;
   gspca_frame_add(gspca_dev, FIRST_PACKET,
     data + 12, len - 12);

  } else if (data[1] & UVC_STREAM_EOF) {
   sd->last_pts = 0;
   gspca_frame_add(gspca_dev, LAST_PACKET,
     data + 12, len - 12);
  } else {


   gspca_frame_add(gspca_dev, INTER_PACKET,
     data + 12, len - 12);
  }


  goto scan_next;

discard:

  gspca_dev->last_packet_type = DISCARD_PACKET;

scan_next:
  remaining_len -= len;
  data += len;
 } while (remaining_len > 0);
}
