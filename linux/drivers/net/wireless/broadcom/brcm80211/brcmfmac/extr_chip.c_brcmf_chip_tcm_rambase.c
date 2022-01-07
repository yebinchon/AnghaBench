
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int chip; int name; } ;
struct brcmf_chip_priv {TYPE_1__ pub; } ;
 int brcmf_err (char*,int ) ;

__attribute__((used)) static u32 brcmf_chip_tcm_rambase(struct brcmf_chip_priv *ci)
{
 switch (ci->pub.chip) {
 case 144:
  return 0x198000;
 case 146:
 case 145:
 case 142:
 case 140:
 case 137:
 case 139:
 case 138:
 case 136:
 case 135:
 case 134:
 case 133:
 case 129:
  return 0x180000;
 case 143:
 case 141:
 case 132:
 case 130:
 case 131:
  return 0x200000;
 case 128:
  return 0x160000;
 default:
  brcmf_err("unknown chip: %s\n", ci->pub.name);
  break;
 }
 return 0;
}
