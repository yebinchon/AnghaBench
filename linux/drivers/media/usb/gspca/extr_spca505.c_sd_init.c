
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ subtype; } ;
struct gspca_dev {int dummy; } ;


 int EIO ;
 scalar_t__ Nxultra ;
 int spca505_init_data ;
 int spca505b_init_data ;
 scalar_t__ write_vector (struct gspca_dev*,int ) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (write_vector(gspca_dev,
    sd->subtype == Nxultra
    ? spca505b_init_data
    : spca505_init_data))
  return -EIO;
 return 0;
}
