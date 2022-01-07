
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm831x {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int WM831X_UNIQUE_ID_LEN ;
 struct wm831x* dev_get_drvdata (struct device*) ;
 int sprintf (char*,char*,int,char*) ;
 int wm831x_unique_id_read (struct wm831x*,char*) ;

__attribute__((used)) static ssize_t wm831x_unique_id_show(struct device *dev,
         struct device_attribute *attr, char *buf)
{
 struct wm831x *wm831x = dev_get_drvdata(dev);
 int rval;
 char id[WM831X_UNIQUE_ID_LEN];

 rval = wm831x_unique_id_read(wm831x, id);
 if (rval < 0)
  return 0;

 return sprintf(buf, "%*phN\n", WM831X_UNIQUE_ID_LEN, id);
}
