; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_ptp.c_gem_tstamp_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_ptp.c_gem_tstamp_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32 }
%struct.sk_buff = type { i32 }
%struct.macb_dma_desc_ptp = type { i32, i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.timespec64 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb*, %struct.sk_buff*, %struct.macb_dma_desc_ptp*)* @gem_tstamp_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_tstamp_tx(%struct.macb* %0, %struct.sk_buff* %1, %struct.macb_dma_desc_ptp* %2) #0 {
  %4 = alloca %struct.macb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.macb_dma_desc_ptp*, align 8
  %7 = alloca %struct.skb_shared_hwtstamps, align 4
  %8 = alloca %struct.timespec64, align 4
  store %struct.macb* %0, %struct.macb** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.macb_dma_desc_ptp* %2, %struct.macb_dma_desc_ptp** %6, align 8
  %9 = load %struct.macb*, %struct.macb** %4, align 8
  %10 = load %struct.macb_dma_desc_ptp*, %struct.macb_dma_desc_ptp** %6, align 8
  %11 = getelementptr inbounds %struct.macb_dma_desc_ptp, %struct.macb_dma_desc_ptp* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.macb_dma_desc_ptp*, %struct.macb_dma_desc_ptp** %6, align 8
  %14 = getelementptr inbounds %struct.macb_dma_desc_ptp, %struct.macb_dma_desc_ptp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gem_hw_timestamp(%struct.macb* %9, i32 %12, i32 %15, %struct.timespec64* %8)
  %17 = call i32 @memset(%struct.skb_shared_hwtstamps* %7, i32 0, i32 4)
  %18 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %8, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ktime_set(i32 %19, i32 %21)
  %23 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %7, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @skb_tstamp_tx(%struct.sk_buff* %24, %struct.skb_shared_hwtstamps* %7)
  ret void
}

declare dso_local i32 @gem_hw_timestamp(%struct.macb*, i32, i32, %struct.timespec64*) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @skb_tstamp_tx(%struct.sk_buff*, %struct.skb_shared_hwtstamps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
