
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dummy; } ;


 int mei_txe_out_data_read (struct mei_device const*,int ) ;

__attribute__((used)) static u32 mei_txe_read_hdr(const struct mei_device *dev)
{
 return mei_txe_out_data_read(dev, 0);
}
