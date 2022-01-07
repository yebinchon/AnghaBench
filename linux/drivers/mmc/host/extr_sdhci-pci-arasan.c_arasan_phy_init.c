
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sdhci_host {int dummy; } ;


 int CALDONE_MASK ;
 int CLKBUF_SEL ;
 int CLK_CTRL ;
 int CMD_CTRL ;
 int DATA_CTRL ;
 int EBUSY ;
 int IOPU_CTRL1 ;
 int IOPU_CTRL2 ;
 int IOREN_CTRL1 ;
 int IOREN_CTRL2 ;
 int IPAD_CTRL1 ;
 int IPAD_CTRL2 ;
 int IPAD_STS ;
 int LEGACY_MODE ;
 int MAX_CLK_BUF ;
 int MODE_CTRL ;
 int PDB_CLOCK ;
 int PDB_CMND ;
 int PDB_DATA ;
 int PDB_ENBL ;
 int PDB_STRB ;
 int PU_CMD ;
 int PU_DAT ;
 int REN_CMND ;
 int REN_DATA ;
 int REN_STRB ;
 int RETB_ENBL ;
 int RTRIM_EN ;
 int STRB_CTRL ;
 scalar_t__ arasan_phy_read (struct sdhci_host*,int ,int*) ;
 int arasan_phy_sts_poll (struct sdhci_host*,int ,int ) ;
 scalar_t__ arasan_phy_write (struct sdhci_host*,int,int ) ;

__attribute__((used)) static int arasan_phy_init(struct sdhci_host *host)
{
 int ret;
 u8 val;


 if (arasan_phy_read(host, IPAD_CTRL1, &val) ||
     arasan_phy_write(host, val | RETB_ENBL | PDB_ENBL, IPAD_CTRL1) ||
     arasan_phy_read(host, IPAD_CTRL2, &val) ||
     arasan_phy_write(host, val | RTRIM_EN, IPAD_CTRL2))
  return -EBUSY;
 ret = arasan_phy_sts_poll(host, IPAD_STS, CALDONE_MASK);
 if (ret)
  return -EBUSY;


 if (arasan_phy_read(host, IOREN_CTRL1, &val) ||
     arasan_phy_write(host, val | REN_CMND | REN_STRB, IOREN_CTRL1) ||
     arasan_phy_read(host, IOPU_CTRL1, &val) ||
     arasan_phy_write(host, val | PU_CMD, IOPU_CTRL1) ||
     arasan_phy_read(host, CMD_CTRL, &val) ||
     arasan_phy_write(host, val | PDB_CMND, CMD_CTRL) ||
     arasan_phy_read(host, IOREN_CTRL2, &val) ||
     arasan_phy_write(host, val | REN_DATA, IOREN_CTRL2) ||
     arasan_phy_read(host, IOPU_CTRL2, &val) ||
     arasan_phy_write(host, val | PU_DAT, IOPU_CTRL2) ||
     arasan_phy_read(host, DATA_CTRL, &val) ||
     arasan_phy_write(host, val | PDB_DATA, DATA_CTRL) ||
     arasan_phy_read(host, STRB_CTRL, &val) ||
     arasan_phy_write(host, val | PDB_STRB, STRB_CTRL) ||
     arasan_phy_read(host, CLK_CTRL, &val) ||
     arasan_phy_write(host, val | PDB_CLOCK, CLK_CTRL) ||
     arasan_phy_read(host, CLKBUF_SEL, &val) ||
     arasan_phy_write(host, val | MAX_CLK_BUF, CLKBUF_SEL) ||
     arasan_phy_write(host, LEGACY_MODE, MODE_CTRL))
  return -EBUSY;
 return 0;
}
