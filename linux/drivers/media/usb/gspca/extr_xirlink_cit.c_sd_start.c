
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int model; } ;
struct gspca_dev {int dummy; } ;
 int cit_get_packet_size (struct gspca_dev*) ;
 int cit_restart_stream (struct gspca_dev*) ;
 int cit_start_ibm_netcam_pro (struct gspca_dev*) ;
 int cit_start_model0 (struct gspca_dev*) ;
 int cit_start_model1 (struct gspca_dev*) ;
 int cit_start_model2 (struct gspca_dev*) ;
 int cit_start_model3 (struct gspca_dev*) ;
 int cit_start_model4 (struct gspca_dev*) ;
 int cit_write_reg (struct gspca_dev*,int,int) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int packet_size;

 packet_size = cit_get_packet_size(gspca_dev);
 if (packet_size < 0)
  return packet_size;

 switch (sd->model) {
 case 132:
  cit_start_model0(gspca_dev);
  break;
 case 131:
  cit_start_model1(gspca_dev);
  break;
 case 130:
  cit_start_model2(gspca_dev);
  break;
 case 129:
  cit_start_model3(gspca_dev);
  break;
 case 128:
  cit_start_model4(gspca_dev);
  break;
 case 133:
  cit_start_ibm_netcam_pro(gspca_dev);
  break;
 }


 cit_write_reg(gspca_dev, packet_size >> 8, 0x0106);
 cit_write_reg(gspca_dev, packet_size & 0xff, 0x0107);

 cit_restart_stream(gspca_dev);

 return 0;
}
