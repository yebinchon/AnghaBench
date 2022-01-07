; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_rx_buffer_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_rx_buffer_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i64 }
%struct.igb_ring = type { i32 }

@IGB_FLAG_RX_LEGACY = common dso_local global i32 0, align 4
@IGB_MAX_FRAME_BUILD_SKB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_adapter*, %struct.igb_ring*)* @igb_set_rx_buffer_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_set_rx_buffer_len(%struct.igb_adapter* %0, %struct.igb_ring* %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca %struct.igb_ring*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store %struct.igb_ring* %1, %struct.igb_ring** %4, align 8
  %5 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %6 = call i32 @clear_ring_build_skb_enabled(%struct.igb_ring* %5)
  %7 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %8 = call i32 @clear_ring_uses_large_buffer(%struct.igb_ring* %7)
  %9 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @IGB_FLAG_RX_LEGACY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %28

16:                                               ; preds = %2
  %17 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %18 = call i32 @set_ring_build_skb_enabled(%struct.igb_ring* %17)
  %19 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IGB_MAX_FRAME_BUILD_SKB, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %28

25:                                               ; preds = %16
  %26 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %27 = call i32 @set_ring_uses_large_buffer(%struct.igb_ring* %26)
  br label %28

28:                                               ; preds = %25, %24, %15
  ret void
}

declare dso_local i32 @clear_ring_build_skb_enabled(%struct.igb_ring*) #1

declare dso_local i32 @clear_ring_uses_large_buffer(%struct.igb_ring*) #1

declare dso_local i32 @set_ring_build_skb_enabled(%struct.igb_ring*) #1

declare dso_local i32 @set_ring_uses_large_buffer(%struct.igb_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
