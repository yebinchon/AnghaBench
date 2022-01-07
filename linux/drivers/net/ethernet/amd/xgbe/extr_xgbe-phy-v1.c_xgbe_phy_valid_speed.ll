; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v1.c_xgbe_phy_valid_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v1.c_xgbe_phy_valid_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i32 }

@XGBE_SPEEDSET_1000_10000 = common dso_local global i32 0, align 4
@XGBE_SPEEDSET_2500_10000 = common dso_local global i32 0, align 4
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
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %28 [
    i32 130, label %11
    i32 128, label %19
    i32 129, label %27
  ]

11:                                               ; preds = %2
  %12 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %13 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @XGBE_SPEEDSET_1000_10000, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %29

18:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %21 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @XGBE_SPEEDSET_2500_10000, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %29

26:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %29

27:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %27, %26, %25, %18, %17
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
