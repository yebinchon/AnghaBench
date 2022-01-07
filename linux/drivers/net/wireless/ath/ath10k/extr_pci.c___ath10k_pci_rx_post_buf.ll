; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c___ath10k_pci_rx_post_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c___ath10k_pci_rx_post_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_pci_pipe = type { i32, %struct.ath10k_ce_pipe*, %struct.ath10k* }
%struct.ath10k_ce_pipe = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.ath10k_ce_pipe*, %struct.sk_buff*, i32)* }
%struct.sk_buff = type { i64, i64 }
%struct.ath10k = type { i32 }
%struct.ath10k_ce = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"unaligned skb\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to dma map pci rx buf\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_pci_pipe*)* @__ath10k_pci_rx_post_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ath10k_pci_rx_post_buf(%struct.ath10k_pci_pipe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_pci_pipe*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ath10k_ce*, align 8
  %6 = alloca %struct.ath10k_ce_pipe*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath10k_pci_pipe* %0, %struct.ath10k_pci_pipe** %3, align 8
  %10 = load %struct.ath10k_pci_pipe*, %struct.ath10k_pci_pipe** %3, align 8
  %11 = getelementptr inbounds %struct.ath10k_pci_pipe, %struct.ath10k_pci_pipe* %10, i32 0, i32 2
  %12 = load %struct.ath10k*, %struct.ath10k** %11, align 8
  store %struct.ath10k* %12, %struct.ath10k** %4, align 8
  %13 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %14 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %13)
  store %struct.ath10k_ce* %14, %struct.ath10k_ce** %5, align 8
  %15 = load %struct.ath10k_pci_pipe*, %struct.ath10k_pci_pipe** %3, align 8
  %16 = getelementptr inbounds %struct.ath10k_pci_pipe, %struct.ath10k_pci_pipe* %15, i32 0, i32 1
  %17 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %16, align 8
  store %struct.ath10k_ce_pipe* %17, %struct.ath10k_ce_pipe** %6, align 8
  %18 = load %struct.ath10k_pci_pipe*, %struct.ath10k_pci_pipe** %3, align 8
  %19 = getelementptr inbounds %struct.ath10k_pci_pipe, %struct.ath10k_pci_pipe* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.sk_buff* @dev_alloc_skb(i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %100

27:                                               ; preds = %1
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = and i64 %30, 3
  %32 = call i32 @WARN_ONCE(i64 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %34 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %43 = call i64 @skb_tailroom(%struct.sk_buff* %42)
  %44 = add nsw i64 %41, %43
  %45 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %46 = call i32 @dma_map_single(i32 %35, i64 %38, i64 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %48 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @dma_mapping_error(i32 %49, i32 %50)
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %27
  %55 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %56 = call i32 @ath10k_warn(%struct.ath10k* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %57)
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %100

61:                                               ; preds = %27
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = call %struct.TYPE_4__* @ATH10K_SKB_RXCB(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  %66 = load %struct.ath10k_ce*, %struct.ath10k_ce** %5, align 8
  %67 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %66, i32 0, i32 0
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %6, align 8
  %70 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32 (%struct.ath10k_ce_pipe*, %struct.sk_buff*, i32)*, i32 (%struct.ath10k_ce_pipe*, %struct.sk_buff*, i32)** %72, align 8
  %74 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %6, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i32 %73(%struct.ath10k_ce_pipe* %74, %struct.sk_buff* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.ath10k_ce*, %struct.ath10k_ce** %5, align 8
  %79 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock_bh(i32* %79)
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %61
  %84 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %85 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = call i64 @skb_tailroom(%struct.sk_buff* %91)
  %93 = add nsw i64 %90, %92
  %94 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %95 = call i32 @dma_unmap_single(i32 %86, i32 %87, i64 %93, i32 %94)
  %96 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %97 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %96)
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %2, align 4
  br label %100

99:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %83, %54, %24
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @WARN_ONCE(i64, i8*) #1

declare dso_local i32 @dma_map_single(i32, i64, i64, i32) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @ATH10K_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
