
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_tlv {int dummy; } ;
typedef int __be16 ;


 scalar_t__ rocker_tlv_data (struct rocker_tlv const*) ;

__attribute__((used)) static inline __be16 rocker_tlv_get_be16(const struct rocker_tlv *tlv)
{
 return *(__be16 *) rocker_tlv_data(tlv);
}
