
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ite_dev {int dummy; } ;


 int IT85_C0DR ;
 int it8709_wr (struct ite_dev*,int ,int ) ;

__attribute__((used)) static void it8709_put_tx_byte(struct ite_dev *dev, u8 value)
{
 it8709_wr(dev, value, IT85_C0DR);
}
