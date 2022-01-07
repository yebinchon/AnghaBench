
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_tlv {int len; } ;
struct rocker_desc_info {int dummy; } ;


 scalar_t__ rocker_tlv_start (struct rocker_desc_info*) ;

__attribute__((used)) static inline void rocker_tlv_nest_end(struct rocker_desc_info *desc_info,
           struct rocker_tlv *start)
{
 start->len = (char *) rocker_tlv_start(desc_info) - (char *) start;
}
