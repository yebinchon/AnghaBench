; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_valid_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_valid_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32)* @xgbe_phy_valid_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_valid_speed(%struct.xgbe_prv_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xgbe_phy_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 0
  %9 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %8, align 8
  store %struct.xgbe_phy_data* %9, %struct.xgbe_phy_data** %6, align 8
  %10 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %11 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %31 [
    i32 131, label %13
    i32 130, label %16
    i32 135, label %19
    i32 129, label %19
    i32 132, label %19
    i32 134, label %23
    i32 133, label %23
    i32 128, label %27
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @xgbe_phy_valid_speed_bp_mode(i32 %14)
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @xgbe_phy_valid_speed_bp_2500_mode(i32 %17)
  store i32 %18, i32* %3, align 4
  br label %32

19:                                               ; preds = %2, %2, %2
  %20 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @xgbe_phy_valid_speed_baset_mode(%struct.xgbe_phy_data* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %32

23:                                               ; preds = %2, %2
  %24 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @xgbe_phy_valid_speed_basex_mode(%struct.xgbe_phy_data* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %32

27:                                               ; preds = %2
  %28 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @xgbe_phy_valid_speed_sfp_mode(%struct.xgbe_phy_data* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %27, %23, %19, %16, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @xgbe_phy_valid_speed_bp_mode(i32) #1

declare dso_local i32 @xgbe_phy_valid_speed_bp_2500_mode(i32) #1

declare dso_local i32 @xgbe_phy_valid_speed_baset_mode(%struct.xgbe_phy_data*, i32) #1

declare dso_local i32 @xgbe_phy_valid_speed_basex_mode(%struct.xgbe_phy_data*, i32) #1

declare dso_local i32 @xgbe_phy_valid_speed_sfp_mode(%struct.xgbe_phy_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
