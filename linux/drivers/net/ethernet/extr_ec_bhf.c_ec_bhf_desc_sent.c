
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sent; } ;
struct tx_desc {TYPE_1__ header; } ;


 int TX_HDR_SENT ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ec_bhf_desc_sent(struct tx_desc *desc)
{
 return le32_to_cpu(desc->header.sent) & TX_HDR_SENT;
}
