
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct mwifiex_pcie_card_reg* reg; } ;
struct pcie_service_card {int txbd_wrptr; int txbd_rdptr; TYPE_2__* dev; TYPE_1__ pcie; } ;
struct mwifiex_pcie_card_reg {int tx_mask; int tx_rollover_ind; } ;
struct TYPE_4__ {int device; } ;






__attribute__((used)) static inline int
mwifiex_pcie_txbd_not_full(struct pcie_service_card *card)
{
 const struct mwifiex_pcie_card_reg *reg = card->pcie.reg;

 switch (card->dev->device) {
 case 130:
  if (((card->txbd_wrptr & reg->tx_mask) !=
       (card->txbd_rdptr & reg->tx_mask)) ||
      ((card->txbd_wrptr & reg->tx_rollover_ind) !=
       (card->txbd_rdptr & reg->tx_rollover_ind)))
   return 1;
  break;
 case 129:
 case 128:
  if (((card->txbd_wrptr & reg->tx_mask) !=
       (card->txbd_rdptr & reg->tx_mask)) ||
      ((card->txbd_wrptr & reg->tx_rollover_ind) ==
       (card->txbd_rdptr & reg->tx_rollover_ind)))
   return 1;
  break;
 }

 return 0;
}
