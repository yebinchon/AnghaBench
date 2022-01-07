
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_tlv {int type; int len; } ;
struct rocker_desc_info {int data_size; int tlv_size; } ;


 int EMSGSIZE ;
 int memcpy (int ,void const*,int) ;
 int memset (char*,int ,int ) ;
 int rocker_tlv_attr_size (int) ;
 int rocker_tlv_data (struct rocker_tlv*) ;
 int rocker_tlv_padlen (int) ;
 struct rocker_tlv* rocker_tlv_start (struct rocker_desc_info*) ;
 int rocker_tlv_total_size (int) ;
 scalar_t__ unlikely (int) ;

int rocker_tlv_put(struct rocker_desc_info *desc_info,
     int attrtype, int attrlen, const void *data)
{
 int tail_room = desc_info->data_size - desc_info->tlv_size;
 int total_size = rocker_tlv_total_size(attrlen);
 struct rocker_tlv *tlv;

 if (unlikely(tail_room < total_size))
  return -EMSGSIZE;

 tlv = rocker_tlv_start(desc_info);
 desc_info->tlv_size += total_size;
 tlv->type = attrtype;
 tlv->len = rocker_tlv_attr_size(attrlen);
 memcpy(rocker_tlv_data(tlv), data, attrlen);
 memset((char *) tlv + tlv->len, 0, rocker_tlv_padlen(attrlen));
 return 0;
}
