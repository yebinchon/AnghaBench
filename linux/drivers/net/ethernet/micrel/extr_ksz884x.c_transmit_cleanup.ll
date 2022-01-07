; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_transmit_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_transmit_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_info = type { i32, i32, %struct.ksz_hw }
%struct.ksz_hw = type { %struct.ksz_desc_info }
%struct.ksz_desc_info = type { i32, i64, i64, i32, %struct.ksz_desc* }
%struct.ksz_desc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.desc_stat = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.ksz_dma_buf = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dev_info*, i32)* @transmit_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_cleanup(%struct.dev_info* %0, i32 %1) #0 {
  %3 = alloca %struct.dev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.desc_stat, align 8
  %7 = alloca %struct.ksz_hw*, align 8
  %8 = alloca %struct.ksz_desc_info*, align 8
  %9 = alloca %struct.ksz_desc*, align 8
  %10 = alloca %struct.ksz_dma_buf*, align 8
  %11 = alloca %struct.net_device*, align 8
  store %struct.dev_info* %0, %struct.dev_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %13 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %12, i32 0, i32 2
  store %struct.ksz_hw* %13, %struct.ksz_hw** %7, align 8
  %14 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %15 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %14, i32 0, i32 0
  store %struct.ksz_desc_info* %15, %struct.ksz_desc_info** %8, align 8
  store %struct.net_device* null, %struct.net_device** %11, align 8
  %16 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %17 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %8, align 8
  %20 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %90, %2
  %23 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %8, align 8
  %24 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %8, align 8
  %27 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %102

30:                                               ; preds = %22
  %31 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %8, align 8
  %32 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %31, i32 0, i32 4
  %33 = load %struct.ksz_desc*, %struct.ksz_desc** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %33, i64 %35
  store %struct.ksz_desc* %36, %struct.ksz_desc** %9, align 8
  %37 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %38 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = bitcast %union.desc_stat* %6 to i32*
  store i32 %43, i32* %44, align 8
  %45 = bitcast %union.desc_stat* %6 to %struct.TYPE_7__*
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %30
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %102

53:                                               ; preds = %49
  %54 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %55 = getelementptr inbounds %union.desc_stat, %union.desc_stat* %6, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @reset_desc(%struct.ksz_desc* %54, i64 %57)
  br label %59

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %30
  %61 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %62 = call %struct.ksz_dma_buf* @DMA_BUFFER(%struct.ksz_desc* %61)
  store %struct.ksz_dma_buf* %62, %struct.ksz_dma_buf** %10, align 8
  %63 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %64 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %10, align 8
  %67 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %10, align 8
  %70 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %73 = call i32 @pci_unmap_single(i32 %65, i32 %68, i32 %71, i32 %72)
  %74 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %10, align 8
  %75 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = icmp ne %struct.TYPE_8__* %76, null
  br i1 %77, label %78, label %90

78:                                               ; preds = %60
  %79 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %10, align 8
  %80 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.net_device*, %struct.net_device** %82, align 8
  store %struct.net_device* %83, %struct.net_device** %11, align 8
  %84 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %10, align 8
  %85 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %84, i32 0, i32 0
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = call i32 @dev_kfree_skb_irq(%struct.TYPE_8__* %86)
  %88 = load %struct.ksz_dma_buf*, %struct.ksz_dma_buf** %10, align 8
  %89 = getelementptr inbounds %struct.ksz_dma_buf, %struct.ksz_dma_buf* %88, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %89, align 8
  br label %90

90:                                               ; preds = %78, %60
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  %93 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %8, align 8
  %94 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %8, align 8
  %99 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %99, align 8
  br label %22

102:                                              ; preds = %52, %22
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %8, align 8
  %105 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.dev_info*, %struct.dev_info** %3, align 8
  %107 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %106, i32 0, i32 0
  %108 = call i32 @spin_unlock_irq(i32* %107)
  %109 = load %struct.net_device*, %struct.net_device** %11, align 8
  %110 = icmp ne %struct.net_device* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load %struct.net_device*, %struct.net_device** %11, align 8
  %113 = call i32 @netif_trans_update(%struct.net_device* %112)
  br label %114

114:                                              ; preds = %111, %102
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @reset_desc(%struct.ksz_desc*, i64) #1

declare dso_local %struct.ksz_dma_buf* @DMA_BUFFER(%struct.ksz_desc*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.TYPE_8__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
