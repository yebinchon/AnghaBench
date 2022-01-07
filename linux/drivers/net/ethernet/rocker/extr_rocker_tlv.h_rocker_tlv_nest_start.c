
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_tlv {int dummy; } ;
struct rocker_desc_info {int dummy; } ;


 scalar_t__ rocker_tlv_put (struct rocker_desc_info*,int,int ,int *) ;
 struct rocker_tlv* rocker_tlv_start (struct rocker_desc_info*) ;

__attribute__((used)) static inline struct rocker_tlv *
rocker_tlv_nest_start(struct rocker_desc_info *desc_info, int attrtype)
{
 struct rocker_tlv *start = rocker_tlv_start(desc_info);

 if (rocker_tlv_put(desc_info, attrtype, 0, ((void*)0)) < 0)
  return ((void*)0);

 return start;
}
