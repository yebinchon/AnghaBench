
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct sd {int sof_read; } ;
struct gspca_dev {int dummy; } ;


 int FIRST_PACKET ;
 int INTER_PACKET ;
 int LAST_PACKET ;
 int gspca_frame_add (struct gspca_dev*,int ,unsigned char*,int) ;
 unsigned char* pac_find_sof (struct gspca_dev*,int *,unsigned char*,int) ;
 unsigned char* pac_sof_marker ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;
 unsigned char *sof;

 sof = pac_find_sof(gspca_dev, &sd->sof_read, data, len);
 if (sof) {
  int n;


  n = sof - data;
  if (n > sizeof pac_sof_marker)
   n -= sizeof pac_sof_marker;
  else
   n = 0;
  gspca_frame_add(gspca_dev, LAST_PACKET,
     data, n);

  gspca_frame_add(gspca_dev, FIRST_PACKET,
   pac_sof_marker, sizeof pac_sof_marker);
  len -= sof - data;
  data = sof;
 }
 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
}
