; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_tx_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_tx_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_channel = type { i32, i32, %struct.xgbe_prv_data* }
%struct.xgbe_prv_data = type { i64 }
%struct.xgbe_ring = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.xgbe_ring_data = type { i32 }

@DMA_CH_TDTR_LO = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_channel*, %struct.xgbe_ring*)* @xgbe_tx_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_tx_start_xmit(%struct.xgbe_channel* %0, %struct.xgbe_ring* %1) #0 {
  %3 = alloca %struct.xgbe_channel*, align 8
  %4 = alloca %struct.xgbe_ring*, align 8
  %5 = alloca %struct.xgbe_prv_data*, align 8
  %6 = alloca %struct.xgbe_ring_data*, align 8
  store %struct.xgbe_channel* %0, %struct.xgbe_channel** %3, align 8
  store %struct.xgbe_ring* %1, %struct.xgbe_ring** %4, align 8
  %7 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %8 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %7, i32 0, i32 2
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %8, align 8
  store %struct.xgbe_prv_data* %9, %struct.xgbe_prv_data** %5, align 8
  %10 = call i32 (...) @wmb()
  %11 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %12 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %13 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring* %11, i32 %14)
  store %struct.xgbe_ring_data* %15, %struct.xgbe_ring_data** %6, align 8
  %16 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %17 = load i32, i32* @DMA_CH_TDTR_LO, align 4
  %18 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %6, align 8
  %19 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @lower_32_bits(i32 %20)
  %22 = call i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel* %16, i32 %17, i32 %21)
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %2
  %28 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %29 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %27
  %33 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %34 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.xgbe_channel*, %struct.xgbe_channel** %3, align 8
  %36 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %35, i32 0, i32 1
  %37 = load i64, i64* @jiffies, align 8
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %39 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @usecs_to_jiffies(i64 %40)
  %42 = add nsw i64 %37, %41
  %43 = call i32 @mod_timer(i32* %36, i64 %42)
  br label %44

44:                                               ; preds = %32, %27, %2
  %45 = load %struct.xgbe_ring*, %struct.xgbe_ring** %4, align 8
  %46 = getelementptr inbounds %struct.xgbe_ring, %struct.xgbe_ring* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local %struct.xgbe_ring_data* @XGBE_GET_DESC_DATA(%struct.xgbe_ring*, i32) #1

declare dso_local i32 @XGMAC_DMA_IOWRITE(%struct.xgbe_channel*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
