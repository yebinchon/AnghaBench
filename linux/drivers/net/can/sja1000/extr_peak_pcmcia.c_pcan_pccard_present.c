
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcan_pccard {scalar_t__ fw_major; scalar_t__ fw_minor; } ;


 int PCC_FW_MAJOR ;
 int PCC_FW_MINOR ;
 scalar_t__ pcan_read_reg (struct pcan_pccard*,int ) ;

__attribute__((used)) static inline int pcan_pccard_present(struct pcan_pccard *card)
{
 return ((pcan_read_reg(card, PCC_FW_MAJOR) == card->fw_major) &&
  (pcan_read_reg(card, PCC_FW_MINOR) == card->fw_minor));
}
