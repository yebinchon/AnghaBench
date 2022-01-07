; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_lbtest_receive_frames.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_lbtest_receive_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { i32, %struct.ice_rx_buf* }
%struct.ice_rx_buf = type { i32 }
%union.ice_32b_rx_flex_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ICE_TX_DESC_CMD_EOP = common dso_local global i32 0, align 4
@ICE_TX_DESC_CMD_RS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_ring*)* @ice_lbtest_receive_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_lbtest_receive_frames(%struct.ice_ring* %0) #0 {
  %2 = alloca %struct.ice_ring*, align 8
  %3 = alloca %struct.ice_rx_buf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %union.ice_32b_rx_flex_desc*, align 8
  store %struct.ice_ring* %0, %struct.ice_ring** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %47, %1
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %11 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %50

14:                                               ; preds = %8
  %15 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %union.ice_32b_rx_flex_desc* @ICE_RX_DESC(%struct.ice_ring* %15, i32 %16)
  store %union.ice_32b_rx_flex_desc* %17, %union.ice_32b_rx_flex_desc** %7, align 8
  %18 = load %union.ice_32b_rx_flex_desc*, %union.ice_32b_rx_flex_desc** %7, align 8
  %19 = bitcast %union.ice_32b_rx_flex_desc* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ICE_TX_DESC_CMD_EOP, align 4
  %23 = load i32, i32* @ICE_TX_DESC_CMD_RS, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @cpu_to_le16(i32 %24)
  %26 = and i32 %21, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %14
  br label %47

29:                                               ; preds = %14
  %30 = load %struct.ice_ring*, %struct.ice_ring** %2, align 8
  %31 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %30, i32 0, i32 1
  %32 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %32, i64 %34
  store %struct.ice_rx_buf* %35, %struct.ice_rx_buf** %3, align 8
  %36 = load %struct.ice_rx_buf*, %struct.ice_rx_buf** %3, align 8
  %37 = getelementptr inbounds %struct.ice_rx_buf, %struct.ice_rx_buf* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32* @page_address(i32 %38)
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i64 @ice_lbtest_check_frame(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %43, %29
  br label %47

47:                                               ; preds = %46, %28
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %8

50:                                               ; preds = %8
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %union.ice_32b_rx_flex_desc* @ICE_RX_DESC(%struct.ice_ring*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32* @page_address(i32) #1

declare dso_local i64 @ice_lbtest_check_frame(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
