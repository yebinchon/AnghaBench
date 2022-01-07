; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_ptp.c_gem_ptp_rxstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_ptp.c_gem_ptp_rxstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32 }
%struct.sk_buff = type { i32 }
%struct.macb_dma_desc = type { i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.macb_dma_desc_ptp = type { i32, i32 }
%struct.timespec64 = type { i32, i32 }

@DMA_RXVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gem_ptp_rxstamp(%struct.macb* %0, %struct.sk_buff* %1, %struct.macb_dma_desc* %2) #0 {
  %4 = alloca %struct.macb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.macb_dma_desc*, align 8
  %7 = alloca %struct.skb_shared_hwtstamps*, align 8
  %8 = alloca %struct.macb_dma_desc_ptp*, align 8
  %9 = alloca %struct.timespec64, align 4
  store %struct.macb* %0, %struct.macb** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.macb_dma_desc* %2, %struct.macb_dma_desc** %6, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %10)
  store %struct.skb_shared_hwtstamps* %11, %struct.skb_shared_hwtstamps** %7, align 8
  %12 = load i32, i32* @DMA_RXVALID, align 4
  %13 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %6, align 8
  %14 = getelementptr inbounds %struct.macb_dma_desc, %struct.macb_dma_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @GEM_BFEXT(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %3
  %19 = load %struct.macb*, %struct.macb** %4, align 8
  %20 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %6, align 8
  %21 = call %struct.macb_dma_desc_ptp* @macb_ptp_desc(%struct.macb* %19, %struct.macb_dma_desc* %20)
  store %struct.macb_dma_desc_ptp* %21, %struct.macb_dma_desc_ptp** %8, align 8
  %22 = load %struct.macb*, %struct.macb** %4, align 8
  %23 = load %struct.macb_dma_desc_ptp*, %struct.macb_dma_desc_ptp** %8, align 8
  %24 = getelementptr inbounds %struct.macb_dma_desc_ptp, %struct.macb_dma_desc_ptp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.macb_dma_desc_ptp*, %struct.macb_dma_desc_ptp** %8, align 8
  %27 = getelementptr inbounds %struct.macb_dma_desc_ptp, %struct.macb_dma_desc_ptp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gem_hw_timestamp(%struct.macb* %22, i32 %25, i32 %28, %struct.timespec64* %9)
  %30 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %7, align 8
  %31 = call i32 @memset(%struct.skb_shared_hwtstamps* %30, i32 0, i32 4)
  %32 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ktime_set(i32 %33, i32 %35)
  %37 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %7, align 8
  %38 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %18, %3
  ret void
}

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i64 @GEM_BFEXT(i32, i32) #1

declare dso_local %struct.macb_dma_desc_ptp* @macb_ptp_desc(%struct.macb*, %struct.macb_dma_desc*) #1

declare dso_local i32 @gem_hw_timestamp(%struct.macb*, i32, i32, %struct.timespec64*) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
