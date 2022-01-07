
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg3 {int phy_id; } ;
 int TG3_PHY_ID_MASK ;

__attribute__((used)) static char *tg3_phy_string(struct tg3 *tp)
{
 switch (tp->phy_id & TG3_PHY_ID_MASK) {
 case 151: return "5400";
 case 150: return "5401";
 case 149: return "5411";
 case 148: return "5701";
 case 147: return "5703";
 case 146: return "5704";
 case 145: return "5705";
 case 139: return "5750";
 case 138: return "5752";
 case 144: return "5714";
 case 132: return "5780";
 case 137: return "5755";
 case 130: return "5787";
 case 131: return "5784";
 case 136: return "5722/5756";
 case 129: return "5906";
 case 135: return "5761";
 case 143: return "5718C";
 case 142: return "5718S";
 case 133: return "57765";
 case 141: return "5719C";
 case 140: return "5720C";
 case 134: return "5762C";
 case 128: return "8002/serdes";
 case 0: return "serdes";
 default: return "unknown";
 }
}
