
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_ring_desc {int desc3; } ;


 int CTXT ;
 int TX_NORMAL_DESC3 ;
 int XGMAC_GET_BITS_LE (int ,int ,int ) ;

__attribute__((used)) static int xgbe_is_context_desc(struct xgbe_ring_desc *rdesc)
{

 return XGMAC_GET_BITS_LE(rdesc->desc3, TX_NORMAL_DESC3, CTXT);
}
