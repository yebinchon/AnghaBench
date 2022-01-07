; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_interrupt.c_tulip_refill_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_interrupt.c_tulip_refill_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tulip_private = type { i64, i32, i64, i64, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_6__ = type { i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DescOwned = common dso_local global i32 0, align 4
@LC82C168 = common dso_local global i64 0, align 8
@CSR5 = common dso_local global i64 0, align 8
@CSR2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tulip_refill_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tulip_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.tulip_private* @netdev_priv(%struct.net_device* %8)
  store %struct.tulip_private* %9, %struct.tulip_private** %3, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %106, %1
  %11 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %12 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %15 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = sub nsw i64 %13, %17
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %111

20:                                               ; preds = %10
  %21 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %22 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RX_RING_SIZE, align 4
  %25 = srem i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %27 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %26, i32 0, i32 5
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.sk_buff*, %struct.sk_buff** %32, align 8
  %34 = icmp eq %struct.sk_buff* %33, null
  br i1 %34, label %35, label %96

35:                                               ; preds = %20
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = load i32, i32* @PKT_BUF_SZ, align 4
  %38 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %36, i32 %37)
  %39 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %40 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %39, i32 0, i32 5
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store %struct.sk_buff* %38, %struct.sk_buff** %45, align 8
  store %struct.sk_buff* %38, %struct.sk_buff** %6, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = icmp eq %struct.sk_buff* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %111

49:                                               ; preds = %35
  %50 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %51 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %50, i32 0, i32 6
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PKT_BUF_SZ, align 4
  %57 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %58 = call i32 @pci_map_single(%struct.TYPE_6__* %52, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %60 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %59, i32 0, i32 6
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %7, align 4
  %64 = call i64 @dma_mapping_error(i32* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %49
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = call i32 @dev_kfree_skb(%struct.sk_buff* %67)
  %69 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %70 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %69, i32 0, i32 5
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %75, align 8
  br label %111

76:                                               ; preds = %49
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %79 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %78, i32 0, i32 5
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 %77, i32* %84, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i8* @cpu_to_le32(i32 %85)
  %87 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %88 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %87, i32 0, i32 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  store i8* %86, i8** %93, align 8
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %76, %20
  %97 = load i32, i32* @DescOwned, align 4
  %98 = call i8* @cpu_to_le32(i32 %97)
  %99 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %100 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %99, i32 0, i32 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  store i8* %98, i8** %105, align 8
  br label %106

106:                                              ; preds = %96
  %107 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %108 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  br label %10

111:                                              ; preds = %66, %48, %10
  %112 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %113 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @LC82C168, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %135

117:                                              ; preds = %111
  %118 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %119 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @CSR5, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @ioread32(i64 %122)
  %124 = ashr i32 %123, 17
  %125 = and i32 %124, 7
  %126 = icmp eq i32 %125, 4
  br i1 %126, label %127, label %134

127:                                              ; preds = %117
  %128 = load %struct.tulip_private*, %struct.tulip_private** %3, align 8
  %129 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @CSR2, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @iowrite32(i32 1, i64 %132)
  br label %134

134:                                              ; preds = %127, %117
  br label %135

135:                                              ; preds = %134, %111
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local %struct.tulip_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @pci_map_single(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
