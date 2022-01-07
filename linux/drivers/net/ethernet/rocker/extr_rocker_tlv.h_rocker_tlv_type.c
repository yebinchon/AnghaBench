
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_tlv {int type; } ;



__attribute__((used)) static inline int rocker_tlv_type(const struct rocker_tlv *tlv)
{
 return tlv->type;
}
