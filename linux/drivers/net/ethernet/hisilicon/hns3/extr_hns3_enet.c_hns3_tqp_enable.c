
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hnae3_queue {int dummy; } ;


 int BIT (int ) ;
 int HNS3_RING_EN_B ;
 int HNS3_RING_EN_REG ;
 int hns3_read_dev (struct hnae3_queue*,int ) ;
 int hns3_write_dev (struct hnae3_queue*,int ,int ) ;

__attribute__((used)) static void hns3_tqp_enable(struct hnae3_queue *tqp)
{
 u32 rcb_reg;

 rcb_reg = hns3_read_dev(tqp, HNS3_RING_EN_REG);
 rcb_reg |= BIT(HNS3_RING_EN_B);
 hns3_write_dev(tqp, HNS3_RING_EN_REG, rcb_reg);
}
