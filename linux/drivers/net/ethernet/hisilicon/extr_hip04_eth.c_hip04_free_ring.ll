; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_free_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.device = type { i32 }
%struct.hip04_priv = type { i32, i32, i64*, i64* }

@RX_DESC_NUM = common dso_local global i32 0, align 4
@TX_DESC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.device*)* @hip04_free_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hip04_free_ring(%struct.net_device* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hip04_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.hip04_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.hip04_priv* %8, %struct.hip04_priv** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %32, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @RX_DESC_NUM, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %15 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %14, i32 0, i32 3
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %13
  %23 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %24 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %23, i32 0, i32 3
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @skb_free_frag(i64 %29)
  br label %31

31:                                               ; preds = %22, %13
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %9

35:                                               ; preds = %9
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %59, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @TX_DESC_NUM, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %42 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %40
  %50 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %51 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @dev_kfree_skb_any(i64 %56)
  br label %58

58:                                               ; preds = %49, %40
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %36

62:                                               ; preds = %36
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* @TX_DESC_NUM, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 4
  %67 = trunc i64 %66 to i32
  %68 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %69 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %72 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @dma_free_coherent(%struct.device* %63, i32 %67, i32 %70, i32 %73)
  ret void
}

declare dso_local %struct.hip04_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_free_frag(i64) #1

declare dso_local i32 @dev_kfree_skb_any(i64) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
