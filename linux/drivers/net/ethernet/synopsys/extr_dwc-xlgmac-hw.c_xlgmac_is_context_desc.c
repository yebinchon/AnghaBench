
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlgmac_dma_desc {int desc3; } ;


 int TX_NORMAL_DESC3_CTXT_LEN ;
 int TX_NORMAL_DESC3_CTXT_POS ;
 int XLGMAC_GET_REG_BITS_LE (int ,int ,int ) ;

__attribute__((used)) static int xlgmac_is_context_desc(struct xlgmac_dma_desc *dma_desc)
{

 return XLGMAC_GET_REG_BITS_LE(dma_desc->desc3,
    TX_NORMAL_DESC3_CTXT_POS,
    TX_NORMAL_DESC3_CTXT_LEN);
}
