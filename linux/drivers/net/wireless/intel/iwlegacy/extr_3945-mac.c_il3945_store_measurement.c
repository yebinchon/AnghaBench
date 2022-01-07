
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef char u8 ;
struct TYPE_4__ {int last_tsf; } ;
struct TYPE_3__ {int channel; } ;
struct il_priv {TYPE_2__ _3945; TYPE_1__ active; } ;
struct ieee80211_measurement_params {char channel; int duration; int start_time; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;
typedef int buffer ;


 int D_INFO (char*,char,char,char const*) ;
 char IL_MEASURE_BASIC ;
 int cpu_to_le16 (int) ;
 int cpu_to_le64 (int ) ;
 struct il_priv* dev_get_drvdata (struct device*) ;
 int il3945_get_measurement (struct il_priv*,struct ieee80211_measurement_params*,char) ;
 char le16_to_cpu (int ) ;
 char simple_strtoul (char*,int *,int ) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static ssize_t
il3945_store_measurement(struct device *d, struct device_attribute *attr,
    const char *buf, size_t count)
{
 struct il_priv *il = dev_get_drvdata(d);
 struct ieee80211_measurement_params params = {
  .channel = le16_to_cpu(il->active.channel),
  .start_time = cpu_to_le64(il->_3945.last_tsf),
  .duration = cpu_to_le16(1),
 };
 u8 type = IL_MEASURE_BASIC;
 u8 buffer[32];
 u8 channel;

 if (count) {
  char *p = buffer;
  strlcpy(buffer, buf, sizeof(buffer));
  channel = simple_strtoul(p, ((void*)0), 0);
  if (channel)
   params.channel = channel;

  p = buffer;
  while (*p && *p != ' ')
   p++;
  if (*p)
   type = simple_strtoul(p + 1, ((void*)0), 0);
 }

 D_INFO("Invoking measurement of type %d on " "channel %d (for '%s')\n",
        type, params.channel, buf);
 il3945_get_measurement(il, &params, type);

 return count;
}
