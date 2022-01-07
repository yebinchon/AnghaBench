
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sd {scalar_t__ sensor_page; } ;
struct gspca_dev {int dummy; } ;


 int sensor_write_16 (struct gspca_dev*,int,scalar_t__) ;

__attribute__((used)) static void sensor_set_page(struct gspca_dev *gspca_dev, u8 page)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (page != sd->sensor_page) {
  sensor_write_16(gspca_dev, 0xf0, page);
  sd->sensor_page = page;
 }
}
