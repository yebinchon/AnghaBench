
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long u32 ;
struct ddb {TYPE_2__* link; } ;
typedef enum fe_sec_tone_mode { ____Placeholder_fe_sec_tone_mode } fe_sec_tone_mode ;
struct TYPE_3__ {unsigned long long tone; } ;
struct TYPE_4__ {TYPE_1__ lnb; } ;


 int EINVAL ;
 int LNB_CMD_NOP ;


 int lnb_command (struct ddb*,unsigned long long,unsigned long long,int ) ;

__attribute__((used)) static int lnb_set_tone(struct ddb *dev, u32 link, u32 input,
   enum fe_sec_tone_mode tone)
{
 int s = 0;
 u32 mask = (1ULL << input);

 switch (tone) {
 case 129:
  if (!(dev->link[link].lnb.tone & mask))
   return 0;
  dev->link[link].lnb.tone &= ~(1ULL << input);
  break;
 case 128:
  if (dev->link[link].lnb.tone & mask)
   return 0;
  dev->link[link].lnb.tone |= (1ULL << input);
  break;
 default:
  s = -EINVAL;
  break;
 }
 if (!s)
  s = lnb_command(dev, link, input, LNB_CMD_NOP);
 return s;
}
