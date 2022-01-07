; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_set_redrv_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_set_redrv_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i64, i64, i64, i32 }

@XGBE_PHY_REDRV_MODE_CX = common dso_local global i32 0, align 4
@XGBE_PORT_MODE_SFP = common dso_local global i64 0, align 8
@XGBE_SFP_BASE_1000_CX = common dso_local global i64 0, align 8
@XGBE_SFP_BASE_10000_CR = common dso_local global i64 0, align 8
@XGBE_PHY_REDRV_MODE_SR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_phy_set_redrv_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_set_redrv_mode(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_phy_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 0
  %8 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %7, align 8
  store %struct.xgbe_phy_data* %8, %struct.xgbe_phy_data** %3, align 8
  %9 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %10 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %57

14:                                               ; preds = %1
  %15 = load i32, i32* @XGBE_PHY_REDRV_MODE_CX, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %17 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @XGBE_PORT_MODE_SFP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %14
  %22 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %23 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @XGBE_SFP_BASE_1000_CX, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %29 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @XGBE_SFP_BASE_10000_CR, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @XGBE_PHY_REDRV_MODE_SR, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %27, %21, %14
  %36 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %37 = call i32 @xgbe_phy_get_comm_ownership(%struct.xgbe_prv_data* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %57

41:                                               ; preds = %35
  %42 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %43 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @xgbe_phy_set_redrv_mode_i2c(%struct.xgbe_prv_data* %47, i32 %48)
  br label %54

50:                                               ; preds = %41
  %51 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @xgbe_phy_set_redrv_mode_mdio(%struct.xgbe_prv_data* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %56 = call i32 @xgbe_phy_put_comm_ownership(%struct.xgbe_prv_data* %55)
  br label %57

57:                                               ; preds = %54, %40, %13
  ret void
}

declare dso_local i32 @xgbe_phy_get_comm_ownership(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_set_redrv_mode_i2c(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_phy_set_redrv_mode_mdio(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_phy_put_comm_ownership(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
