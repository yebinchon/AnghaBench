
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int quality; scalar_t__ sensor; int * jpeg_hdr; } ;
struct gspca_dev {int dummy; } ;


 int * DQT ;
 int D_STREAM ;
 int JPEG_QT0_OFFSET ;
 scalar_t__ SENSOR_SOI763A ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int,int) ;
 int * jpeg_q ;
 int jpeg_set_qual (int *,int ) ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static void set_dqt(struct gspca_dev *gspca_dev, u8 q)
{
 struct sd *sd = (struct sd *) gspca_dev;


 gspca_dbg(gspca_dev, D_STREAM, "q %d -> %d\n", sd->quality, q);
 sd->quality = q;
 if (q > 16)
  q = 16;
 if (sd->sensor == SENSOR_SOI763A)
  jpeg_set_qual(sd->jpeg_hdr, jpeg_q[q]);
 else
  memcpy(&sd->jpeg_hdr[JPEG_QT0_OFFSET - 1],
   DQT[q], sizeof DQT[0]);
}
