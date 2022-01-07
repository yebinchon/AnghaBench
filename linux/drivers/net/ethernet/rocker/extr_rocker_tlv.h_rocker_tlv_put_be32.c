
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_desc_info {int dummy; } ;
typedef int __be32 ;


 int rocker_tlv_put (struct rocker_desc_info*,int,int,int *) ;

__attribute__((used)) static inline int
rocker_tlv_put_be32(struct rocker_desc_info *desc_info, int attrtype, __be32 value)
{
 __be32 tmp = value;

 return rocker_tlv_put(desc_info, attrtype, sizeof(__be32), &tmp);
}
