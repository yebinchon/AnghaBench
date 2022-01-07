; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_tx_desc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_tx_desc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_ring_data = type { %struct.xgbe_ring_desc* }
%struct.xgbe_ring_desc = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_ring_data*)* @xgbe_tx_desc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_tx_desc_reset(%struct.xgbe_ring_data* %0) #0 {
  %2 = alloca %struct.xgbe_ring_data*, align 8
  %3 = alloca %struct.xgbe_ring_desc*, align 8
  store %struct.xgbe_ring_data* %0, %struct.xgbe_ring_data** %2, align 8
  %4 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %2, align 8
  %5 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %4, i32 0, i32 0
  %6 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %5, align 8
  store %struct.xgbe_ring_desc* %6, %struct.xgbe_ring_desc** %3, align 8
  %7 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %3, align 8
  %8 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %3, align 8
  %10 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %9, i32 0, i32 2
  store i64 0, i64* %10, align 8
  %11 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %3, align 8
  %12 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %3, align 8
  %14 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = call i32 (...) @dma_wmb()
  ret void
}

declare dso_local i32 @dma_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
