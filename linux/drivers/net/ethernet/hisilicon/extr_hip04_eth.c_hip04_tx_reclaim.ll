; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_tx_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hip04_eth.c_hip04_tx_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hip04_priv = type { i32, %struct.TYPE_2__**, i64*, i32, %struct.tx_desc*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.tx_desc = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TX_DESC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @hip04_tx_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hip04_tx_reclaim(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hip04_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tx_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.hip04_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.hip04_priv* %12, %struct.hip04_priv** %5, align 8
  %13 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %14 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = call i32 (...) @smp_rmb()
  %17 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %18 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @READ_ONCE(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @tx_count(i32 %20, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %125

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %86, %26
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %120

30:                                               ; preds = %27
  %31 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %32 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %31, i32 0, i32 4
  %33 = load %struct.tx_desc*, %struct.tx_desc** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %33, i64 %35
  store %struct.tx_desc* %36, %struct.tx_desc** %7, align 8
  %37 = load %struct.tx_desc*, %struct.tx_desc** %7, align 8
  %38 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %30
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load %struct.tx_desc*, %struct.tx_desc** %7, align 8
  %46 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  br label %48

47:                                               ; preds = %41
  br label %120

48:                                               ; preds = %44
  br label %49

49:                                               ; preds = %48, %30
  %50 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %51 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %50, i32 0, i32 2
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %49
  %59 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %60 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %63 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %70 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %71, i64 %73
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* @DMA_TO_DEVICE, align 4
  %79 = call i32 @dma_unmap_single(i32 %61, i64 %68, i64 %77, i32 %78)
  %80 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %81 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  store i64 0, i64* %85, align 8
  br label %86

86:                                               ; preds = %58, %49
  %87 = load i32, i32* %9, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %9, align 4
  %89 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %90 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %89, i32 0, i32 1
  %91 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %91, i64 %93
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %8, align 4
  %102 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %103 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %103, align 8
  %105 = load i32, i32* %6, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %104, i64 %106
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = call i32 @dev_kfree_skb(%struct.TYPE_2__* %108)
  %110 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %111 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %112, i64 %114
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %115, align 8
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @TX_NEXT(i32 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %10, align 4
  %119 = add i32 %118, -1
  store i32 %119, i32* %10, align 4
  br label %27

120:                                              ; preds = %47, %27
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.hip04_priv*, %struct.hip04_priv** %5, align 8
  %123 = getelementptr inbounds %struct.hip04_priv, %struct.hip04_priv* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = call i32 (...) @smp_wmb()
  br label %125

125:                                              ; preds = %120, %25
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %128, %125
  %132 = load %struct.net_device*, %struct.net_device** %3, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @netdev_completed_queue(%struct.net_device* %132, i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %131, %128
  %137 = load %struct.net_device*, %struct.net_device** %3, align 8
  %138 = call i32 @netif_queue_stopped(%struct.net_device* %137)
  %139 = call i64 @unlikely(i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* @TX_DESC_NUM, align 4
  %144 = sub nsw i32 %143, 1
  %145 = icmp ult i32 %142, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load %struct.net_device*, %struct.net_device** %3, align 8
  %148 = call i32 @netif_wake_queue(%struct.net_device* %147)
  br label %149

149:                                              ; preds = %146, %141, %136
  %150 = load i32, i32* %10, align 4
  ret i32 %150
}

declare dso_local %struct.hip04_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @tx_count(i32, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i64, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_2__*) #1

declare dso_local i32 @TX_NEXT(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @netdev_completed_queue(%struct.net_device*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
