
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char *dvb_card_str(unsigned int c)
{
 switch (c) {
 case 133: return "STV0367_TDA18212_NIMA_1";
 case 132: return "STV0367_TDA18212_NIMA_2";
 case 131: return "STV0367_TDA18212_NIMB_1";
 case 130: return "STV0367_TDA18212_NIMB_2";
 case 129: return "STV0903_6110_LNB24_NIMA";
 case 128: return "STV0903_6110_LNB24_NIMB";
 default: return "unknown dvb frontend card";
 }
}
