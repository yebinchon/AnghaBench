
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_device {int stepping; } ;
struct cosm_device {int dummy; } ;
typedef int ssize_t ;






 int PAGE_SIZE ;
 struct mic_device* cosmdev_to_mdev (struct cosm_device*) ;
 int scnprintf (char*,int ,char*,char const*) ;

__attribute__((used)) static ssize_t _mic_stepping(struct cosm_device *cdev, char *buf)
{
 struct mic_device *mdev = cosmdev_to_mdev(cdev);
 const char *string = "??";

 switch (mdev->stepping) {
 case 131:
  string = "A0";
  break;
 case 130:
  string = "B0";
  break;
 case 129:
  string = "B1";
  break;
 case 128:
  string = "C0";
  break;
 default:
  break;
 }
 return scnprintf(buf, PAGE_SIZE, "%s\n", string);
}
