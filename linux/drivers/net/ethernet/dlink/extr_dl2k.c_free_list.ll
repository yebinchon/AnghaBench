; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_dl2k.c_free_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dlink/extr_dl2k.c_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { %struct.sk_buff**, %struct.TYPE_2__*, i32, %struct.TYPE_2__*, %struct.sk_buff** }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sk_buff = type { i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @free_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %6)
  store %struct.netdev_private* %7, %struct.netdev_private** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %61, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @RX_RING_SIZE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %64

12:                                               ; preds = %8
  %13 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %14 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %13, i32 0, i32 4
  %15 = load %struct.sk_buff**, %struct.sk_buff*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %15, i64 %17
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %4, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %46

22:                                               ; preds = %12
  %23 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %24 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %27 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = call i32 @desc_to_dma(%struct.TYPE_2__* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %37 = call i32 @pci_unmap_single(i32 %25, i32 %32, i32 %35, i32 %36)
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = call i32 @dev_kfree_skb(%struct.sk_buff* %38)
  %40 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %41 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %40, i32 0, i32 4
  %42 = load %struct.sk_buff**, %struct.sk_buff*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %42, i64 %44
  store %struct.sk_buff* null, %struct.sk_buff** %45, align 8
  br label %46

46:                                               ; preds = %22, %12
  %47 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %48 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %47, i32 0, i32 3
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %55 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %54, i32 0, i32 3
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %8

64:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %104, %64
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @TX_RING_SIZE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %107

69:                                               ; preds = %65
  %70 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %71 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %70, i32 0, i32 0
  %72 = load %struct.sk_buff**, %struct.sk_buff*** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %72, i64 %74
  %76 = load %struct.sk_buff*, %struct.sk_buff** %75, align 8
  store %struct.sk_buff* %76, %struct.sk_buff** %4, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = icmp ne %struct.sk_buff* %77, null
  br i1 %78, label %79, label %103

79:                                               ; preds = %69
  %80 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %81 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %84 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = call i32 @desc_to_dma(%struct.TYPE_2__* %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %94 = call i32 @pci_unmap_single(i32 %82, i32 %89, i32 %92, i32 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = call i32 @dev_kfree_skb(%struct.sk_buff* %95)
  %97 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %98 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %97, i32 0, i32 0
  %99 = load %struct.sk_buff**, %struct.sk_buff*** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %99, i64 %101
  store %struct.sk_buff* null, %struct.sk_buff** %102, align 8
  br label %103

103:                                              ; preds = %79, %69
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %65

107:                                              ; preds = %65
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @desc_to_dma(%struct.TYPE_2__*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
