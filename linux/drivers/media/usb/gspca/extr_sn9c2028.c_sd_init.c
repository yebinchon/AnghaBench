
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int sn9c2028_read1 (struct gspca_dev*) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 int status = -1;

 sn9c2028_read1(gspca_dev);
 sn9c2028_read1(gspca_dev);
 status = sn9c2028_read1(gspca_dev);

 return (status < 0) ? status : 0;
}
