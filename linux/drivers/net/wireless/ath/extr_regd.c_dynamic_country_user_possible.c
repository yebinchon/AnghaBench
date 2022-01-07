
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_regulatory {int country_code; } ;


 int CONFIG_ATH_REG_DYNAMIC_USER_CERT_TESTING ;
 scalar_t__ IS_ENABLED (int ) ;

__attribute__((used)) static bool dynamic_country_user_possible(struct ath_regulatory *reg)
{
 if (IS_ENABLED(CONFIG_ATH_REG_DYNAMIC_USER_CERT_TESTING))
  return 1;

 switch (reg->country_code) {
 case 128:
 case 187:
 case 176:
 case 165:
 case 154:
 case 143:
 case 132:
 case 131:
 case 130:
 case 129:
 case 186:
 case 185:
 case 184:
 case 183:
 case 182:
 case 181:
 case 180:
 case 179:
 case 178:
 case 177:
 case 175:
 case 174:
 case 173:
 case 172:
 case 171:
 case 170:
 case 169:
 case 168:
 case 167:
 case 166:
 case 164:
 case 163:
 case 162:
 case 161:
 case 160:
 case 159:
 case 158:
 case 157:
 case 156:
 case 155:
 case 153:
 case 152:
 case 151:
 case 150:
 case 149:
 case 148:
 case 147:
 case 146:
 case 145:
 case 144:
 case 142:
 case 141:
 case 140:
 case 139:
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 133:
  return 0;
 }

 return 1;
}
