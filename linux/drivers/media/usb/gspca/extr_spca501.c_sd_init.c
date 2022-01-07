
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int subtype; } ;
struct gspca_dev {int dummy; } ;



 int D_STREAM ;
 int EINVAL ;


 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int spca501_init_data ;
 int spca501c_arowana_init_data ;
 int spca501c_mysterious_open_data ;
 int write_vector (struct gspca_dev*,int ) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->subtype) {
 case 130:
 case 128:

  if (write_vector(gspca_dev, spca501c_arowana_init_data))
   goto error;
  break;
 case 129:

  if (write_vector(gspca_dev, spca501c_mysterious_open_data))
   goto error;
  break;
 default:

  if (write_vector(gspca_dev, spca501_init_data))
   goto error;
  break;
 }
 gspca_dbg(gspca_dev, D_STREAM, "Initializing SPCA501 finished\n");
 return 0;
error:
 return -EINVAL;
}
