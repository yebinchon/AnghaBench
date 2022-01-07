; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_set_rx_buffer_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_set_rx_buffer_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ixgbevf_ring = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@IXGBEVF_FLAGS_LEGACY_RX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@IXGBEVF_MAX_FRAME_BUILD_SKB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*, %struct.ixgbevf_ring*)* @ixgbevf_set_rx_buffer_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_set_rx_buffer_len(%struct.ixgbevf_adapter* %0, %struct.ixgbevf_ring* %1) #0 {
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca %struct.ixgbevf_ring*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %3, align 8
  store %struct.ixgbevf_ring* %1, %struct.ixgbevf_ring** %4, align 8
  %7 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %7, i32 0, i32 1
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ETH_HLEN, align 4
  %14 = add i32 %12, %13
  %15 = load i32, i32* @ETH_FCS_LEN, align 4
  %16 = add i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %18 = call i32 @clear_ring_build_skb_enabled(%struct.ixgbevf_ring* %17)
  %19 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %20 = call i32 @clear_ring_uses_large_buffer(%struct.ixgbevf_ring* %19)
  %21 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IXGBEVF_FLAGS_LEGACY_RX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %41

28:                                               ; preds = %2
  %29 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %30 = call i32 @set_ring_build_skb_enabled(%struct.ixgbevf_ring* %29)
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = icmp slt i32 %31, 8192
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @IXGBEVF_MAX_FRAME_BUILD_SKB, align 4
  %36 = icmp ule i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %41

38:                                               ; preds = %33
  %39 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %40 = call i32 @set_ring_uses_large_buffer(%struct.ixgbevf_ring* %39)
  br label %41

41:                                               ; preds = %27, %37, %38, %28
  ret void
}

declare dso_local i32 @clear_ring_build_skb_enabled(%struct.ixgbevf_ring*) #1

declare dso_local i32 @clear_ring_uses_large_buffer(%struct.ixgbevf_ring*) #1

declare dso_local i32 @set_ring_build_skb_enabled(%struct.ixgbevf_ring*) #1

declare dso_local i32 @set_ring_uses_large_buffer(%struct.ixgbevf_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
