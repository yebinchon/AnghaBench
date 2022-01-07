
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rave_sp_version {int * letter; int minor; int major; int hardware; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 char const* devm_kasprintf (struct device*,int ,char*,int ,int ,int ,int ,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static const char *devm_rave_sp_version(struct device *dev,
     struct rave_sp_version *version)
{





 return devm_kasprintf(dev, GFP_KERNEL, "%02d%02d%02d.%c%c\n",
         version->hardware,
         le16_to_cpu(version->major),
         version->minor,
         version->letter[0],
         version->letter[1]);
}
