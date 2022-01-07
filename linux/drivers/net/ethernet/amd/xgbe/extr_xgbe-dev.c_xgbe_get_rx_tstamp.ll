; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_get_rx_tstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_get_rx_tstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_packet_data = type { i32, i32 }
%struct.xgbe_ring_desc = type { i32, i32, i32 }

@RX_CONTEXT_DESC3 = common dso_local global i32 0, align 4
@TSA = common dso_local global i32 0, align 4
@TSD = common dso_local global i32 0, align 4
@RX_PACKET_ATTRIBUTES = common dso_local global i32 0, align 4
@RX_TSTAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_packet_data*, %struct.xgbe_ring_desc*)* @xgbe_get_rx_tstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_get_rx_tstamp(%struct.xgbe_packet_data* %0, %struct.xgbe_ring_desc* %1) #0 {
  %3 = alloca %struct.xgbe_packet_data*, align 8
  %4 = alloca %struct.xgbe_ring_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.xgbe_packet_data* %0, %struct.xgbe_packet_data** %3, align 8
  store %struct.xgbe_ring_desc* %1, %struct.xgbe_ring_desc** %4, align 8
  %6 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %4, align 8
  %7 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RX_CONTEXT_DESC3, align 4
  %10 = load i32, i32* @TSA, align 4
  %11 = call i64 @XGMAC_GET_BITS_LE(i32 %8, i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %48

13:                                               ; preds = %2
  %14 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %4, align 8
  %15 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RX_CONTEXT_DESC3, align 4
  %18 = load i32, i32* @TSD, align 4
  %19 = call i64 @XGMAC_GET_BITS_LE(i32 %16, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %48, label %21

21:                                               ; preds = %13
  %22 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %4, align 8
  %23 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = shl i32 %26, 32
  store i32 %27, i32* %5, align 4
  %28 = load %struct.xgbe_ring_desc*, %struct.xgbe_ring_desc** %4, align 8
  %29 = getelementptr inbounds %struct.xgbe_ring_desc, %struct.xgbe_ring_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, -1
  br i1 %36, label %37, label %47

37:                                               ; preds = %21
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %3, align 8
  %40 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %3, align 8
  %42 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %45 = load i32, i32* @RX_TSTAMP, align 4
  %46 = call i32 @XGMAC_SET_BITS(i32 %43, i32 %44, i32 %45, i32 1)
  br label %47

47:                                               ; preds = %37, %21
  br label %48

48:                                               ; preds = %47, %13, %2
  ret void
}

declare dso_local i64 @XGMAC_GET_BITS_LE(i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @XGMAC_SET_BITS(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
