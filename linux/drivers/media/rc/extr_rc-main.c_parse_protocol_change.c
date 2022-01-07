
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct rc_dev {int dev; } ;
struct TYPE_3__ {char* name; int type; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int dev_dbg (int *,char*,...) ;
 TYPE_1__* proto_names ;
 int strcasecmp (char const*,char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int parse_protocol_change(struct rc_dev *dev, u64 *protocols,
     const char *buf)
{
 const char *tmp;
 unsigned count = 0;
 bool enable, disable;
 u64 mask;
 int i;

 while ((tmp = strsep((char **)&buf, " \n")) != ((void*)0)) {
  if (!*tmp)
   break;

  if (*tmp == '+') {
   enable = 1;
   disable = 0;
   tmp++;
  } else if (*tmp == '-') {
   enable = 0;
   disable = 1;
   tmp++;
  } else {
   enable = 0;
   disable = 0;
  }

  for (i = 0; i < ARRAY_SIZE(proto_names); i++) {
   if (!strcasecmp(tmp, proto_names[i].name)) {
    mask = proto_names[i].type;
    break;
   }
  }

  if (i == ARRAY_SIZE(proto_names)) {
   if (!strcasecmp(tmp, "lirc"))
    mask = 0;
   else {
    dev_dbg(&dev->dev, "Unknown protocol: '%s'\n",
     tmp);
    return -EINVAL;
   }
  }

  count++;

  if (enable)
   *protocols |= mask;
  else if (disable)
   *protocols &= ~mask;
  else
   *protocols = mask;
 }

 if (!count) {
  dev_dbg(&dev->dev, "Protocol not specified\n");
  return -EINVAL;
 }

 return count;
}
