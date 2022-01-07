
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtk_nfc {int dev; scalar_t__ regs; } ;


 int MTK_TIMEOUT ;
 scalar_t__ NFI_PIO_DIRDY ;
 int PIO_DI_RDY ;
 int dev_err (int ,char*) ;
 int readb_poll_timeout_atomic (scalar_t__,int,int,int,int ) ;

__attribute__((used)) static inline void mtk_nfc_wait_ioready(struct mtk_nfc *nfc)
{
 int rc;
 u8 val;

 rc = readb_poll_timeout_atomic(nfc->regs + NFI_PIO_DIRDY, val,
           val & PIO_DI_RDY, 10, MTK_TIMEOUT);
 if (rc < 0)
  dev_err(nfc->dev, "data not ready\n");
}
