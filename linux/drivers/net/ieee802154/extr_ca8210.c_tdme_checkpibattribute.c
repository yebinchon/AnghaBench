
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
 int MAC_INVALID_PARAMETER ;
 int MAC_SUCCESS ;

 int MAX_BEACON_PAYLOAD_LENGTH ;



__attribute__((used)) static u8 tdme_checkpibattribute(
 u8 pib_attribute,
 u8 pib_attribute_length,
 const void *pib_attribute_value
)
{
 u8 status = MAC_SUCCESS;
 u8 value;

 value = *((u8 *)pib_attribute_value);

 switch (pib_attribute) {

 case 128:
  if (value > 0x3F)
   status = MAC_INVALID_PARAMETER;
  break;
 case 129:
  if (value > 0x03)
   status = MAC_INVALID_PARAMETER;
  break;

 case 143:
  if (value < 6 || value > 41)
   status = MAC_INVALID_PARAMETER;
  break;
 case 141:
  if (pib_attribute_length > MAX_BEACON_PAYLOAD_LENGTH)
   status = MAC_INVALID_PARAMETER;
  break;
 case 140:
  if (value > MAX_BEACON_PAYLOAD_LENGTH)
   status = MAC_INVALID_PARAMETER;
  break;
 case 142:
  if (value > 15)
   status = MAC_INVALID_PARAMETER;
  break;
 case 138:
  if (value < 3 || value > 8)
   status = MAC_INVALID_PARAMETER;
  break;
 case 137:
  if (value > 5)
   status = MAC_INVALID_PARAMETER;
  break;
 case 136:
  if (value > 7)
   status = MAC_INVALID_PARAMETER;
  break;
 case 135:
  if (value > 8)
   status = MAC_INVALID_PARAMETER;
  break;
 case 133:
  if (value < 2 || value > 64)
   status = MAC_INVALID_PARAMETER;
  break;
 case 130:
  if (value > 15)
   status = MAC_INVALID_PARAMETER;
  break;

 case 149:
 case 148:
 case 147:
 case 144:
 case 139:
 case 134:
 case 132:
 case 131:
  if (value > 1)
   status = MAC_INVALID_PARAMETER;
  break;

 case 145:
  if (value > 7)
   status = MAC_INVALID_PARAMETER;
  break;
 case 146:
  if (value > 3)
   status = MAC_INVALID_PARAMETER;
  break;
 default:
  break;
 }

 return status;
}
