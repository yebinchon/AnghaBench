
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rocker_tlv {int dummy; } ;


 scalar_t__ rocker_tlv_data (struct rocker_tlv const*) ;

__attribute__((used)) static inline u8 rocker_tlv_get_u8(const struct rocker_tlv *tlv)
{
 return *(u8 *) rocker_tlv_data(tlv);
}
