; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_phy_status_result.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_phy_status_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i32, i32, %struct.ethtool_link_ksettings }
%struct.ethtool_link_ksettings = type { i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_phy_status_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_status_result(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.ethtool_link_ksettings*, align 8
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 3
  store %struct.ethtool_link_ksettings* %7, %struct.ethtool_link_ksettings** %3, align 8
  %8 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %3, align 8
  %9 = call i32 @XGBE_ZERO_LP_ADV(%struct.ethtool_link_ksettings* %8)
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %11 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @AUTONEG_ENABLE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %18 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16, %1
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %23 = call i32 @xgbe_cur_mode(%struct.xgbe_prv_data* %22)
  store i32 %23, i32* %4, align 4
  br label %27

24:                                               ; preds = %16
  %25 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %26 = call i32 @xgbe_phy_status_aneg(%struct.xgbe_prv_data* %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %4, align 4
  switch i32 %28, label %50 [
    i32 131, label %29
    i32 128, label %34
    i32 134, label %34
    i32 130, label %34
    i32 133, label %39
    i32 135, label %44
    i32 132, label %44
    i32 129, label %49
  ]

29:                                               ; preds = %27
  %30 = load i32, i32* @SPEED_100, align 4
  %31 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %32 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  br label %55

34:                                               ; preds = %27, %27, %27
  %35 = load i32, i32* @SPEED_1000, align 4
  %36 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %37 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  br label %55

39:                                               ; preds = %27
  %40 = load i32, i32* @SPEED_2500, align 4
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %42 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  br label %55

44:                                               ; preds = %27, %27
  %45 = load i32, i32* @SPEED_10000, align 4
  %46 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %47 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  br label %55

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %27, %49
  %51 = load i32, i32* @SPEED_UNKNOWN, align 4
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %53 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %44, %39, %34, %29
  %56 = load i32, i32* @DUPLEX_FULL, align 4
  %57 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %58 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @xgbe_set_mode(%struct.xgbe_prv_data* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %55
  %65 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %66 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %71 = call i32 @xgbe_phy_reconfig_aneg(%struct.xgbe_prv_data* %70)
  br label %72

72:                                               ; preds = %69, %64, %55
  ret void
}

declare dso_local i32 @XGBE_ZERO_LP_ADV(%struct.ethtool_link_ksettings*) #1

declare dso_local i32 @xgbe_cur_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_status_aneg(%struct.xgbe_prv_data*) #1

declare dso_local i64 @xgbe_set_mode(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_phy_reconfig_aneg(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
