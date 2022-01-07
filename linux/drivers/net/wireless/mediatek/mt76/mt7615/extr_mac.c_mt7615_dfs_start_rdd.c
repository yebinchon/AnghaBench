
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7615_dev {int dummy; } ;


 int MT_RX_SEL0 ;
 int RDD_DET_MODE ;
 int RDD_START ;
 int mt7615_mcu_rdd_cmd (struct mt7615_dev*,int ,int,int ,int) ;

__attribute__((used)) static int mt7615_dfs_start_rdd(struct mt7615_dev *dev, int chain)
{
 int err;

 err = mt7615_mcu_rdd_cmd(dev, RDD_START, chain, MT_RX_SEL0, 0);
 if (err < 0)
  return err;

 return mt7615_mcu_rdd_cmd(dev, RDD_DET_MODE, chain,
      MT_RX_SEL0, 1);
}
