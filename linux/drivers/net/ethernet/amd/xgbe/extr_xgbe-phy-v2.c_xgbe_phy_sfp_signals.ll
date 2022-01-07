; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_sfp_signals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_sfp_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"%s: I2C error reading SFP GPIOs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_phy_sfp_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_sfp_signals(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_phy_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 2
  %9 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %8, align 8
  store %struct.xgbe_phy_data* %9, %struct.xgbe_phy_data** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %11 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %12 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %15 = call i32 @xgbe_phy_i2c_read(%struct.xgbe_prv_data* %10, i32 %13, i32* %4, i32 4, i32* %14, i32 8)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %20 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %23 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @netdev_name(i32 %24)
  %26 = call i32 @dev_err_once(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %40

27:                                               ; preds = %1
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %30, %32
  %34 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %35 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %37 = call i32 @xgbe_phy_check_sfp_mod_absent(%struct.xgbe_phy_data* %36)
  %38 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %39 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %27, %18
  ret void
}

declare dso_local i32 @xgbe_phy_i2c_read(%struct.xgbe_prv_data*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err_once(i32, i8*, i32) #1

declare dso_local i32 @netdev_name(i32) #1

declare dso_local i32 @xgbe_phy_check_sfp_mod_absent(%struct.xgbe_phy_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
