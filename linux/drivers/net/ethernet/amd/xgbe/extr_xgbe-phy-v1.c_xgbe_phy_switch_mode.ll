; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v1.c_xgbe_phy_switch_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v1.c_xgbe_phy_switch_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i64 }

@XGBE_MODE_KR = common dso_local global i64 0, align 8
@XGBE_SPEEDSET_2500_10000 = common dso_local global i64 0, align 8
@XGBE_MODE_KX_2500 = common dso_local global i32 0, align 4
@XGBE_MODE_KX_1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_phy_switch_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_switch_mode(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_phy_data*, align 8
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 0
  %7 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  store %struct.xgbe_phy_data* %7, %struct.xgbe_phy_data** %3, align 8
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %9 = call i64 @xgbe_phy_cur_mode(%struct.xgbe_prv_data* %8)
  %10 = load i64, i64* @XGBE_MODE_KR, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %14 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XGBE_SPEEDSET_2500_10000, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @XGBE_MODE_KX_2500, align 4
  store i32 %19, i32* %4, align 4
  br label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @XGBE_MODE_KX_1000, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %18
  br label %26

23:                                               ; preds = %1
  %24 = load i64, i64* @XGBE_MODE_KR, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %22
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i64 @xgbe_phy_cur_mode(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
