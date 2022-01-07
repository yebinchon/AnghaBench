
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_device {int dp; int dp_dma_addr; } ;


 int MIC_DP_SIZE ;
 int kfree (int ) ;
 int mic_unmap_single (struct mic_device*,int ,int ) ;

__attribute__((used)) static void mic_dp_uninit(struct mic_device *mdev)
{
 mic_unmap_single(mdev, mdev->dp_dma_addr, MIC_DP_SIZE);
 kfree(mdev->dp);
}
