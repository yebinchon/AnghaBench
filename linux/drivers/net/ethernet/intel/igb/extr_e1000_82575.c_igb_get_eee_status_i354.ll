; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_get_eee_status_i354.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_82575.c_igb_get_eee_status_i354.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i64, i64 }

@e1000_media_type_copper = common dso_local global i64 0, align 8
@M88E1543_E_PHY_ID = common dso_local global i64 0, align 8
@M88E1512_E_PHY_ID = common dso_local global i64 0, align 8
@E1000_PCS_STATUS_ADDR_I354 = common dso_local global i32 0, align 4
@E1000_PCS_STATUS_DEV_I354 = common dso_local global i32 0, align 4
@E1000_PCS_STATUS_TX_LPI_RCVD = common dso_local global i32 0, align 4
@E1000_PCS_STATUS_RX_LPI_RCVD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_get_eee_status_i354(%struct.e1000_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.e1000_phy_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_phy_info* %9, %struct.e1000_phy_info** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e1000_media_type_copper, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  %17 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %18 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @M88E1543_E_PHY_ID, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %5, align 8
  %24 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @M88E1512_E_PHY_ID, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %2
  br label %47

29:                                               ; preds = %22, %16
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = load i32, i32* @E1000_PCS_STATUS_ADDR_I354, align 4
  %32 = load i32, i32* @E1000_PCS_STATUS_DEV_I354, align 4
  %33 = call i64 @igb_read_xmdio_reg(%struct.e1000_hw* %30, i32 %31, i32 %32, i32* %7)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %47

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @E1000_PCS_STATUS_TX_LPI_RCVD, align 4
  %40 = load i32, i32* @E1000_PCS_STATUS_RX_LPI_RCVD, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  %46 = load i32*, i32** %4, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %37, %36, %28
  %48 = load i64, i64* %6, align 8
  ret i64 %48
}

declare dso_local i64 @igb_read_xmdio_reg(%struct.e1000_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
