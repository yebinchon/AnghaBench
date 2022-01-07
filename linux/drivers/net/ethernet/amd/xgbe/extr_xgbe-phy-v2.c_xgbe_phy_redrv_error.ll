; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_redrv_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_redrv_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_phy_data = type { i64, i32, i32, i32 }

@XGBE_PHY_REDRV_IF_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_phy_data*)* @xgbe_phy_redrv_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_redrv_error(%struct.xgbe_phy_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_phy_data*, align 8
  store %struct.xgbe_phy_data* %0, %struct.xgbe_phy_data** %3, align 8
  %4 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %5 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

9:                                                ; preds = %1
  %10 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %11 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @XGBE_PHY_REDRV_IF_MAX, align 8
  %14 = icmp sge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %36

16:                                               ; preds = %9
  %17 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %18 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %34 [
    i32 129, label %20
    i32 128, label %27
  ]

20:                                               ; preds = %16
  %21 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %22 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %23, 3
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %36

26:                                               ; preds = %20
  br label %35

27:                                               ; preds = %16
  %28 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %3, align 8
  %29 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %2, align 4
  br label %36

33:                                               ; preds = %27
  br label %35

34:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %36

35:                                               ; preds = %33, %26
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %34, %32, %25, %15, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
