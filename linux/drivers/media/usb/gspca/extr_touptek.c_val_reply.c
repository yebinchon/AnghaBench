
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int EIO ;
 int gspca_err (struct gspca_dev*,char*,int) ;

__attribute__((used)) static int val_reply(struct gspca_dev *gspca_dev, const char *reply, int rc)
{
 if (rc < 0) {
  gspca_err(gspca_dev, "reply has error %d\n", rc);
  return -EIO;
 }
 if (rc != 1) {
  gspca_err(gspca_dev, "Bad reply size %d\n", rc);
  return -EIO;
 }
 if (reply[0] != 0x08) {
  gspca_err(gspca_dev, "Bad reply 0x%02x\n", (int)reply[0]);
  return -EIO;
 }
 return 0;
}
