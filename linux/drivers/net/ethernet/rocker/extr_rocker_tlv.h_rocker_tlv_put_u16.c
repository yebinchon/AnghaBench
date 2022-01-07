
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rocker_desc_info {int dummy; } ;


 int rocker_tlv_put (struct rocker_desc_info*,int,int,int *) ;

__attribute__((used)) static inline int
rocker_tlv_put_u16(struct rocker_desc_info *desc_info, int attrtype, u16 value)
{
 u16 tmp = value;

 return rocker_tlv_put(desc_info, attrtype, sizeof(u16), &tmp);
}
