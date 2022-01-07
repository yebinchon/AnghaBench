
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_tlv {int len; } ;


 int ROCKER_TLV_ALIGN (int ) ;

__attribute__((used)) static inline struct rocker_tlv *rocker_tlv_next(const struct rocker_tlv *tlv,
       int *remaining)
{
 int totlen = ROCKER_TLV_ALIGN(tlv->len);

 *remaining -= totlen;
 return (struct rocker_tlv *) ((char *) tlv + totlen);
}
