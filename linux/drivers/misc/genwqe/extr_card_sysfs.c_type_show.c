
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct genwqe_dev {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 size_t ARRAY_SIZE (char**) ;
 struct genwqe_dev* dev_get_drvdata (struct device*) ;
 size_t genwqe_card_type (struct genwqe_dev*) ;
 char** genwqe_types ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t type_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 u8 card_type;
 struct genwqe_dev *cd = dev_get_drvdata(dev);

 card_type = genwqe_card_type(cd);
 return sprintf(buf, "%s\n", (card_type >= ARRAY_SIZE(genwqe_types)) ?
         "invalid" : genwqe_types[card_type]);
}
