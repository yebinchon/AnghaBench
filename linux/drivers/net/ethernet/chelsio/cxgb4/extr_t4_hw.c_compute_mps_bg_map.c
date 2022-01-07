
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
 int t4_read_reg (struct adapter*,int ) ;

__attribute__((used)) static inline unsigned int compute_mps_bg_map(struct adapter *adapter,
           int pidx)
{
 unsigned int chip_version, nports;

 chip_version = CHELSIO_CHIP_VERSION(adapter->params.chip);
 nports = 1 << NUMPORTS_G(t4_read_reg(adapter, MPS_CMN_CTL_A));

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
  case 2: return 1 << (2 * pidx);
  }
  break;
 }

 dev_err(adapter->pdev_dev, "Need MPS Buffer Group Map for Chip %0x, Nports %d\n",
  chip_version, nports);

 return 0;
}
