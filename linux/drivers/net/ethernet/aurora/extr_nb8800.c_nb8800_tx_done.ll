; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aurora/extr_nb8800.c_nb8800_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.nb8800_priv = type { i32, i32, i32, %struct.nb8800_tx_buf*, %struct.nb8800_tx_desc* }
%struct.nb8800_tx_buf = type { i32, %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.nb8800_tx_desc = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TX_DESC_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nb8800_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nb8800_tx_done(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nb8800_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nb8800_tx_desc*, align 8
  %9 = alloca %struct.nb8800_tx_buf*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.nb8800_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.nb8800_priv* %12, %struct.nb8800_priv** %3, align 8
  %13 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %14 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %17 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %78, %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %118

23:                                               ; preds = %19
  %24 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %25 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %24, i32 0, i32 4
  %26 = load %struct.nb8800_tx_desc*, %struct.nb8800_tx_desc** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.nb8800_tx_desc, %struct.nb8800_tx_desc* %26, i64 %28
  store %struct.nb8800_tx_desc* %29, %struct.nb8800_tx_desc** %8, align 8
  %30 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %31 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %30, i32 0, i32 3
  %32 = load %struct.nb8800_tx_buf*, %struct.nb8800_tx_buf** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nb8800_tx_buf, %struct.nb8800_tx_buf* %32, i64 %34
  store %struct.nb8800_tx_buf* %35, %struct.nb8800_tx_buf** %9, align 8
  %36 = load %struct.nb8800_tx_desc*, %struct.nb8800_tx_desc** %8, align 8
  %37 = getelementptr inbounds %struct.nb8800_tx_desc, %struct.nb8800_tx_desc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %23
  br label %118

41:                                               ; preds = %23
  %42 = load %struct.nb8800_tx_buf*, %struct.nb8800_tx_buf** %9, align 8
  %43 = getelementptr inbounds %struct.nb8800_tx_buf, %struct.nb8800_tx_buf* %42, i32 0, i32 1
  %44 = load %struct.sk_buff*, %struct.sk_buff** %43, align 8
  store %struct.sk_buff* %44, %struct.sk_buff** %10, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = add nsw i64 %49, %47
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %7, align 4
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 1
  %54 = load %struct.nb8800_tx_buf*, %struct.nb8800_tx_buf** %9, align 8
  %55 = getelementptr inbounds %struct.nb8800_tx_buf, %struct.nb8800_tx_buf* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nb8800_tx_buf*, %struct.nb8800_tx_buf** %9, align 8
  %58 = getelementptr inbounds %struct.nb8800_tx_buf, %struct.nb8800_tx_buf* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @DMA_TO_DEVICE, align 4
  %61 = call i32 @dma_unmap_single(i32* %53, i32 %56, i32 %59, i32 %60)
  %62 = load %struct.nb8800_tx_desc*, %struct.nb8800_tx_desc** %8, align 8
  %63 = getelementptr inbounds %struct.nb8800_tx_desc, %struct.nb8800_tx_desc* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @IS_TX_ERROR(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %41
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = load %struct.nb8800_tx_desc*, %struct.nb8800_tx_desc** %8, align 8
  %70 = getelementptr inbounds %struct.nb8800_tx_desc, %struct.nb8800_tx_desc* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @nb8800_tx_error(%struct.net_device* %68, i64 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %74 = call i32 @kfree_skb(%struct.sk_buff* %73)
  br label %78

75:                                               ; preds = %41
  %76 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %77 = call i32 @consume_skb(%struct.sk_buff* %76)
  br label %78

78:                                               ; preds = %75, %67
  %79 = load %struct.net_device*, %struct.net_device** %2, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.nb8800_tx_desc*, %struct.nb8800_tx_desc** %8, align 8
  %85 = getelementptr inbounds %struct.nb8800_tx_desc, %struct.nb8800_tx_desc* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i64 @TX_BYTES_TRANSFERRED(i64 %86)
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %87
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  %95 = load %struct.nb8800_tx_desc*, %struct.nb8800_tx_desc** %8, align 8
  %96 = getelementptr inbounds %struct.nb8800_tx_desc, %struct.nb8800_tx_desc* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @TX_EARLY_COLLISIONS(i64 %97)
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %98
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 4
  %106 = load %struct.nb8800_tx_buf*, %struct.nb8800_tx_buf** %9, align 8
  %107 = getelementptr inbounds %struct.nb8800_tx_buf, %struct.nb8800_tx_buf* %106, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %107, align 8
  %108 = load %struct.nb8800_tx_buf*, %struct.nb8800_tx_buf** %9, align 8
  %109 = getelementptr inbounds %struct.nb8800_tx_buf, %struct.nb8800_tx_buf* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  %110 = load %struct.nb8800_tx_desc*, %struct.nb8800_tx_desc** %8, align 8
  %111 = getelementptr inbounds %struct.nb8800_tx_desc, %struct.nb8800_tx_desc* %110, i32 0, i32 0
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* %5, align 4
  %113 = add i32 %112, 1
  %114 = load i32, i32* @TX_DESC_COUNT, align 4
  %115 = urem i32 %113, %114
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %6, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %19

118:                                              ; preds = %40, %19
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %118
  %122 = call i32 (...) @smp_mb__before_atomic()
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %125 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %124, i32 0, i32 2
  %126 = call i32 @atomic_add(i32 %123, i32* %125)
  %127 = load %struct.net_device*, %struct.net_device** %2, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %7, align 4
  %130 = call i32 @netdev_completed_queue(%struct.net_device* %127, i32 %128, i32 %129)
  %131 = load %struct.net_device*, %struct.net_device** %2, align 8
  %132 = call i32 @netif_wake_queue(%struct.net_device* %131)
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.nb8800_priv*, %struct.nb8800_priv** %3, align 8
  %135 = getelementptr inbounds %struct.nb8800_priv, %struct.nb8800_priv* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %121, %118
  ret void
}

declare dso_local %struct.nb8800_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i64 @IS_TX_ERROR(i64) #1

declare dso_local i32 @nb8800_tx_error(%struct.net_device*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i64 @TX_BYTES_TRANSFERRED(i64) #1

declare dso_local i64 @TX_EARLY_COLLISIONS(i64) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @netdev_completed_queue(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
