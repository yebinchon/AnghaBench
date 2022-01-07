
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_tlv {int len; } ;


 int ROCKER_TLV_HDRLEN ;

__attribute__((used)) static inline int rocker_tlv_ok(const struct rocker_tlv *tlv, int remaining)
{
 return remaining >= (int) ROCKER_TLV_HDRLEN &&
        tlv->len >= ROCKER_TLV_HDRLEN &&
        tlv->len <= remaining;
}
