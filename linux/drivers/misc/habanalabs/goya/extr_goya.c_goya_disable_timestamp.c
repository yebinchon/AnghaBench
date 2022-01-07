
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;


 scalar_t__ CFG_BASE ;
 int WREG32 (scalar_t__,int ) ;
 scalar_t__ mmPSOC_TIMESTAMP_BASE ;

__attribute__((used)) static void goya_disable_timestamp(struct hl_device *hdev)
{

 WREG32(mmPSOC_TIMESTAMP_BASE - CFG_BASE, 0);
}
