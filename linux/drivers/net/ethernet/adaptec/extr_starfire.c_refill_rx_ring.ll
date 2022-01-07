; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/adaptec/extr_starfire.c_refill_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/adaptec/extr_starfire.c_refill_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i64, i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@RxDescValid = common dso_local global i32 0, align 4
@RxDescEndRing = common dso_local global i32 0, align 4
@RxDescQIdx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @refill_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @refill_rx_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %6)
  store %struct.netdev_private* %7, %struct.netdev_private** %3, align 8
  store i32 -1, i32* %5, align 4
  br label %8

8:                                                ; preds = %129, %1
  %9 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %10 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %13 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 %11, %15
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %134

18:                                               ; preds = %8
  %19 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %20 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RX_RING_SIZE, align 4
  %23 = srem i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %25 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %24, i32 0, i32 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  %32 = icmp eq %struct.sk_buff* %31, null
  br i1 %32, label %33, label %111

33:                                               ; preds = %18
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %36 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %34, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %4, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %41 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %40, i32 0, i32 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store %struct.sk_buff* %39, %struct.sk_buff** %46, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = icmp eq %struct.sk_buff* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  br label %134

50:                                               ; preds = %33
  %51 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %52 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %58 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %61 = call i32 @pci_map_single(i32 %53, i32 %56, i32 %59, i32 %60)
  %62 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %63 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %62, i32 0, i32 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %61, i32* %68, align 8
  %69 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %70 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %73 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %72, i32 0, i32 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @pci_dma_mapping_error(i32 %71, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %50
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = call i32 @dev_kfree_skb(%struct.sk_buff* %83)
  %85 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %86 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %85, i32 0, i32 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %91, align 8
  br label %134

92:                                               ; preds = %50
  %93 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %94 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %93, i32 0, i32 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @RxDescValid, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @cpu_to_dma(i32 %102)
  %104 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %105 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %104, i32 0, i32 3
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 %103, i32* %110, align 4
  br label %111

111:                                              ; preds = %92, %18
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @RX_RING_SIZE, align 4
  %114 = sub nsw i32 %113, 1
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = load i32, i32* @RxDescEndRing, align 4
  %118 = call i32 @cpu_to_dma(i32 %117)
  %119 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %120 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %119, i32 0, i32 3
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %118
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %116, %111
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %131 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 8
  br label %8

134:                                              ; preds = %82, %49, %8
  %135 = load i32, i32* %5, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load i32, i32* %5, align 4
  %139 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %140 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @RxDescQIdx, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @writew(i32 %138, i64 %143)
  br label %145

145:                                              ; preds = %137, %134
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_dma(i32) #1

declare dso_local i32 @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
