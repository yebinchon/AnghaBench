; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.device = type { i32 }
%struct.hip04_priv = type { i32*, i64, i32, i32 }

@TX_DESC_NUM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i64 0, align 8
@RX_DESC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.device*)* @hip04_alloc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hip04_alloc_ring(%struct.net_device* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hip04_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.hip04_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.hip04_priv* %9, %struct.hip04_priv** %6, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @TX_DESC_NUM, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = load %struct.hip04_priv*, %struct.hip04_priv** %6, align 8
  %16 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %15, i32 0, i32 3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32 @dma_alloc_coherent(%struct.device* %10, i32 %14, i32* %16, i32 %17)
  %19 = load %struct.hip04_priv*, %struct.hip04_priv** %6, align 8
  %20 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.hip04_priv*, %struct.hip04_priv** %6, align 8
  %22 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %65

28:                                               ; preds = %2
  %29 = load i64, i64* @RX_BUF_SIZE, align 8
  %30 = call i64 @SKB_DATA_ALIGN(i32 4)
  %31 = add nsw i64 %29, %30
  %32 = load %struct.hip04_priv*, %struct.hip04_priv** %6, align 8
  %33 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %61, %28
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @RX_DESC_NUM, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  %39 = load %struct.hip04_priv*, %struct.hip04_priv** %6, align 8
  %40 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @netdev_alloc_frag(i64 %41)
  %43 = load %struct.hip04_priv*, %struct.hip04_priv** %6, align 8
  %44 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  %49 = load %struct.hip04_priv*, %struct.hip04_priv** %6, align 8
  %50 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %38
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %34

64:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %57, %25
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.hip04_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i64 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @netdev_alloc_frag(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
