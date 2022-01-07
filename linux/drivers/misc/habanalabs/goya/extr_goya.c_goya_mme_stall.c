
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_device {int dummy; } ;


 int WREG32 (int ,int) ;
 int mmMME_STALL ;

__attribute__((used)) static void goya_mme_stall(struct hl_device *hdev)
{
 WREG32(mmMME_STALL, 0xFFFFFFFF);
}
