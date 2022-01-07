; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_delete_desc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_delete_desc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xge_desc_ring = type { %struct.xge_desc_ring*, i32, i64 }
%struct.xge_pdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@XGENE_ENET_DESC_SIZE = common dso_local global i32 0, align 4
@XGENE_ENET_NUM_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.xge_desc_ring*)* @xge_delete_desc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xge_delete_desc_ring(%struct.net_device* %0, %struct.xge_desc_ring* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.xge_desc_ring*, align 8
  %5 = alloca %struct.xge_pdata*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.xge_desc_ring* %1, %struct.xge_desc_ring** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.xge_pdata* @netdev_priv(%struct.net_device* %8)
  store %struct.xge_pdata* %9, %struct.xge_pdata** %5, align 8
  %10 = load %struct.xge_pdata*, %struct.xge_pdata** %5, align 8
  %11 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %4, align 8
  %15 = icmp ne %struct.xge_desc_ring* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %42

17:                                               ; preds = %2
  %18 = load i32, i32* @XGENE_ENET_DESC_SIZE, align 4
  %19 = load i32, i32* @XGENE_ENET_NUM_DESC, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %4, align 8
  %22 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %17
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %4, align 8
  %29 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %4, align 8
  %32 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dma_free_coherent(%struct.device* %26, i32 %27, i64 %30, i32 %33)
  br label %35

35:                                               ; preds = %25, %17
  %36 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %4, align 8
  %37 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %36, i32 0, i32 0
  %38 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %37, align 8
  %39 = call i32 @kfree(%struct.xge_desc_ring* %38)
  %40 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %4, align 8
  %41 = call i32 @kfree(%struct.xge_desc_ring* %40)
  br label %42

42:                                               ; preds = %35, %16
  ret void
}

declare dso_local %struct.xge_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.xge_desc_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
