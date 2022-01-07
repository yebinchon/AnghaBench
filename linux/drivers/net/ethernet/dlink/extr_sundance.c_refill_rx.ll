; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_sundance.c_refill_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_sundance.c_refill_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i32, i32, i32, %struct.TYPE_6__*, %struct.sk_buff**, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@LastFrag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @refill_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refill_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %7)
  store %struct.netdev_private* %8, %struct.netdev_private** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %132, %1
  %10 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %11 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %14 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = load i32, i32* @RX_RING_SIZE, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @RX_RING_SIZE, align 4
  %20 = srem i32 %18, %19
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %141

22:                                               ; preds = %9
  %23 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %24 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RX_RING_SIZE, align 4
  %27 = srem i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %29 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %28, i32 0, i32 4
  %30 = load %struct.sk_buff**, %struct.sk_buff*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %30, i64 %32
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  %35 = icmp eq %struct.sk_buff* %34, null
  br i1 %35, label %36, label %106

36:                                               ; preds = %22
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %39 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 2
  %42 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %37, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %45 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %44, i32 0, i32 4
  %46 = load %struct.sk_buff**, %struct.sk_buff*** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %46, i64 %48
  store %struct.sk_buff* %43, %struct.sk_buff** %49, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = icmp eq %struct.sk_buff* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %36
  br label %141

53:                                               ; preds = %36
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call i32 @skb_reserve(%struct.sk_buff* %54, i32 2)
  %56 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %57 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %56, i32 0, i32 5
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %64 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %67 = call i32 @dma_map_single(i32* %59, i32 %62, i32 %65, i32 %66)
  %68 = call i8* @cpu_to_le32(i32 %67)
  %69 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %70 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %69, i32 0, i32 3
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i8* %68, i8** %78, align 8
  %79 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %80 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %79, i32 0, i32 5
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %84 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %83, i32 0, i32 3
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i64 @dma_mapping_error(i32* %82, i8* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %53
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %97)
  %99 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %100 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %99, i32 0, i32 4
  %101 = load %struct.sk_buff**, %struct.sk_buff*** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %101, i64 %103
  store %struct.sk_buff* null, %struct.sk_buff** %104, align 8
  br label %141

105:                                              ; preds = %53
  br label %106

106:                                              ; preds = %105, %22
  %107 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %108 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @LastFrag, align 4
  %111 = or i32 %109, %110
  %112 = call i8* @cpu_to_le32(i32 %111)
  %113 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %114 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %113, i32 0, i32 3
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i8* %112, i8** %122, align 8
  %123 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %124 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %123, i32 0, i32 3
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  %130 = load i32, i32* %5, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %106
  %133 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %134 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32, i32* @RX_RING_SIZE, align 4
  %138 = srem i32 %136, %137
  %139 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %140 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  br label %9

141:                                              ; preds = %96, %52, %9
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i8*) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
