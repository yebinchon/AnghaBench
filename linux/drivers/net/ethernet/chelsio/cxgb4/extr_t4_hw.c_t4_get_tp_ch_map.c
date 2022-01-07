
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int chip; } ;
struct adapter {int pdev_dev; TYPE_1__ params; } ;


 unsigned int CHELSIO_CHIP_VERSION (int ) ;



 int MPS_CMN_CTL_A ;
 int NUMPORTS_G (int ) ;
 int dev_err (int ,char*,unsigned int,unsigned int) ;
 int dev_warn (int ,char*,int,unsigned int) ;
 int t4_read_reg (struct adapter*,int ) ;

unsigned int t4_get_tp_ch_map(struct adapter *adap, int pidx)
{
 unsigned int chip_version = CHELSIO_CHIP_VERSION(adap->params.chip);
 unsigned int nports = 1 << NUMPORTS_G(t4_read_reg(adap, MPS_CMN_CTL_A));

 if (pidx >= nports) {
  dev_warn(adap->pdev_dev, "TP Port Index %d >= Nports %d\n",
    pidx, nports);
  return 0;
 }

 switch (chip_version) {
 case 130:
 case 129:




  switch (nports) {
  case 1: return 0xf;
  case 2: return 3 << (2 * pidx);
  case 4: return 1 << pidx;
  }
  break;

 case 128:
  switch (nports) {
  case 1:
  case 2: return 1 << pidx;
  }
  break;
 }

 dev_err(adap->pdev_dev, "Need TP Channel Map for Chip %0x, Nports %d\n",
  chip_version, nports);
 return 0;
}
