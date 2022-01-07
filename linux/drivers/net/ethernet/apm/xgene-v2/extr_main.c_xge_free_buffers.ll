; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_free_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xge_pdata = type { %struct.TYPE_4__*, %struct.xge_desc_ring* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.xge_desc_ring = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@XGENE_ENET_NUM_DESC = common dso_local global i32 0, align 4
@XGENE_ENET_STD_MTU = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xge_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xge_free_buffers(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xge_pdata*, align 8
  %4 = alloca %struct.xge_desc_ring*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.xge_pdata* @netdev_priv(%struct.net_device* %9)
  store %struct.xge_pdata* %10, %struct.xge_pdata** %3, align 8
  %11 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %12 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %11, i32 0, i32 1
  %13 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %12, align 8
  store %struct.xge_desc_ring* %13, %struct.xge_desc_ring** %4, align 8
  %14 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %15 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %5, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %50, %1
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @XGENE_ENET_NUM_DESC, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %53

22:                                               ; preds = %18
  %23 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %4, align 8
  %24 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  store %struct.sk_buff* %30, %struct.sk_buff** %6, align 8
  %31 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %4, align 8
  %32 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %7, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %22
  br label %50

42:                                               ; preds = %22
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @XGENE_ENET_STD_MTU, align 4
  %46 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %47 = call i32 @dma_unmap_single(%struct.device* %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %48)
  br label %50

50:                                               ; preds = %42, %41
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %18

53:                                               ; preds = %18
  ret void
}

declare dso_local %struct.xge_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
