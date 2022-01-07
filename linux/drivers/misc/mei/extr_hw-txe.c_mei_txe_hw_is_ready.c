
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_device {int dummy; } ;


 int mei_txe_readiness_get (struct mei_device*) ;
 int mei_txe_readiness_is_sec_rdy (int ) ;

__attribute__((used)) static bool mei_txe_hw_is_ready(struct mei_device *dev)
{
 u32 readiness = mei_txe_readiness_get(dev);

 return mei_txe_readiness_is_sec_rdy(readiness);
}
