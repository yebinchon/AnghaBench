
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct cmac {TYPE_1__* adapter; } ;
struct TYPE_3__ {scalar_t__ regs; } ;


 int A_ELMER0_INT_CAUSE ;
 scalar_t__ A_PL_CAUSE ;
 int ELMER0_GP_BIT1 ;
 int F_PL_INTR_EXT ;
 int SUNI1x10GEXP_REG_EFLX_FIFO_OVERFLOW_ERROR_INDICATION ;
 int SUNI1x10GEXP_REG_IFLX_FIFO_OVERFLOW_INTERRUPT ;
 int SUNI1x10GEXP_REG_MASTER_INTERRUPT_STATUS ;
 int SUNI1x10GEXP_REG_PL4IDU_INTERRUPT ;
 int SUNI1x10GEXP_REG_PL4IO_LOCK_DETECT_CHANGE ;
 int SUNI1x10GEXP_REG_PL4IO_LOCK_DETECT_STATUS ;
 int SUNI1x10GEXP_REG_PL4ODP_INTERRUPT ;
 int SUNI1x10GEXP_REG_RXOAM_INTERRUPT_STATUS ;
 int SUNI1x10GEXP_REG_RXXG_INTERRUPT ;
 int SUNI1x10GEXP_REG_SERDES_3125_INTERRUPT_STATUS ;
 int SUNI1x10GEXP_REG_TXOAM_INTERRUPT_STATUS ;
 int SUNI1x10GEXP_REG_TXXG_INTERRUPT ;
 int SUNI1x10GEXP_REG_XRF_DIAG_INTERRUPT_STATUS ;
 int SUNI1x10GEXP_REG_XRF_INTERRUPT_STATUS ;
 int SUNI1x10GEXP_REG_XTEF_INTERRUPT_STATUS ;
 int pmread (struct cmac*,int ,int *) ;
 int readl (scalar_t__) ;
 int t1_tpi_read (TYPE_1__*,int ,int *) ;
 int t1_tpi_write (TYPE_1__*,int ,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int pm3393_interrupt_clear(struct cmac *cmac)
{
 u32 elmer;
 u32 pl_intr;
 u32 val32;




 pmread(cmac, SUNI1x10GEXP_REG_SERDES_3125_INTERRUPT_STATUS, &val32);
 pmread(cmac, SUNI1x10GEXP_REG_XRF_INTERRUPT_STATUS, &val32);
 pmread(cmac, SUNI1x10GEXP_REG_XRF_DIAG_INTERRUPT_STATUS, &val32);
 pmread(cmac, SUNI1x10GEXP_REG_RXOAM_INTERRUPT_STATUS, &val32);
 pmread(cmac, SUNI1x10GEXP_REG_PL4ODP_INTERRUPT, &val32);
 pmread(cmac, SUNI1x10GEXP_REG_XTEF_INTERRUPT_STATUS, &val32);
 pmread(cmac, SUNI1x10GEXP_REG_IFLX_FIFO_OVERFLOW_INTERRUPT, &val32);
 pmread(cmac, SUNI1x10GEXP_REG_TXOAM_INTERRUPT_STATUS, &val32);
 pmread(cmac, SUNI1x10GEXP_REG_RXXG_INTERRUPT, &val32);
 pmread(cmac, SUNI1x10GEXP_REG_TXXG_INTERRUPT, &val32);
 pmread(cmac, SUNI1x10GEXP_REG_PL4IDU_INTERRUPT, &val32);
 pmread(cmac, SUNI1x10GEXP_REG_EFLX_FIFO_OVERFLOW_ERROR_INDICATION,
        &val32);
 pmread(cmac, SUNI1x10GEXP_REG_PL4IO_LOCK_DETECT_STATUS, &val32);
 pmread(cmac, SUNI1x10GEXP_REG_PL4IO_LOCK_DETECT_CHANGE, &val32);



 pmread(cmac, SUNI1x10GEXP_REG_MASTER_INTERRUPT_STATUS, &val32);



 t1_tpi_read(cmac->adapter, A_ELMER0_INT_CAUSE, &elmer);
 elmer |= ELMER0_GP_BIT1;
 t1_tpi_write(cmac->adapter, A_ELMER0_INT_CAUSE, elmer);



 pl_intr = readl(cmac->adapter->regs + A_PL_CAUSE);
 pl_intr |= F_PL_INTR_EXT;
 writel(pl_intr, cmac->adapter->regs + A_PL_CAUSE);

 return 0;
}
