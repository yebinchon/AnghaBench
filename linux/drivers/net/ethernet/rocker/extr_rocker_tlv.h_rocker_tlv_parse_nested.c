
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_tlv {int dummy; } ;


 int rocker_tlv_data (struct rocker_tlv const*) ;
 int rocker_tlv_len (struct rocker_tlv const*) ;
 int rocker_tlv_parse (struct rocker_tlv const**,int,int ,int ) ;

__attribute__((used)) static inline void rocker_tlv_parse_nested(const struct rocker_tlv **tb,
        int maxtype,
        const struct rocker_tlv *tlv)
{
 rocker_tlv_parse(tb, maxtype, rocker_tlv_data(tlv),
    rocker_tlv_len(tlv));
}
