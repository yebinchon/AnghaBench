; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_rx_buf2_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_rx_buf2_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_ring_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xgbe_packet_data = type { i32 }

@RX_PACKET_ATTRIBUTES = common dso_local global i32 0, align 4
@LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_ring_data*, %struct.xgbe_packet_data*, i32)* @xgbe_rx_buf2_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_rx_buf2_len(%struct.xgbe_ring_data* %0, %struct.xgbe_packet_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgbe_ring_data*, align 8
  %6 = alloca %struct.xgbe_packet_data*, align 8
  %7 = alloca i32, align 4
  store %struct.xgbe_ring_data* %0, %struct.xgbe_ring_data** %5, align 8
  store %struct.xgbe_packet_data* %1, %struct.xgbe_packet_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.xgbe_packet_data*, %struct.xgbe_packet_data** %6, align 8
  %9 = getelementptr inbounds %struct.xgbe_packet_data, %struct.xgbe_packet_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @RX_PACKET_ATTRIBUTES, align 4
  %12 = load i32, i32* @LAST, align 4
  %13 = call i32 @XGMAC_GET_BITS(i32 %10, i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %17 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  br label %28

21:                                               ; preds = %3
  %22 = load %struct.xgbe_ring_data*, %struct.xgbe_ring_data** %5, align 8
  %23 = getelementptr inbounds %struct.xgbe_ring_data, %struct.xgbe_ring_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub i32 %25, %26
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %21, %15
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @XGMAC_GET_BITS(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
