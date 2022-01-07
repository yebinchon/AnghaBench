; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_use_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_use_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32)* @xgbe_phy_use_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_use_mode(%struct.xgbe_prv_data* %0, i32 %1) #0 {
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
  switch i32 %12, label %33 [
    i32 131, label %13
    i32 130, label %17
    i32 135, label %21
    i32 129, label %21
    i32 132, label %21
    i32 134, label %25
    i32 133, label %25
    i32 128, label %29
  ]

13:                                               ; preds = %2
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @xgbe_phy_use_bp_mode(%struct.xgbe_prv_data* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @xgbe_phy_use_bp_2500_mode(%struct.xgbe_prv_data* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %34

21:                                               ; preds = %2, %2, %2
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @xgbe_phy_use_baset_mode(%struct.xgbe_prv_data* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %34

25:                                               ; preds = %2, %2
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @xgbe_phy_use_basex_mode(%struct.xgbe_prv_data* %26, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @xgbe_phy_use_sfp_mode(%struct.xgbe_prv_data* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %29, %25, %21, %17, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @xgbe_phy_use_bp_mode(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_phy_use_bp_2500_mode(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_phy_use_baset_mode(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_phy_use_basex_mode(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_phy_use_sfp_mode(%struct.xgbe_prv_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
