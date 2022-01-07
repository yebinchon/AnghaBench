; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_conn_type_mismatch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_conn_type_mismatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i32, i32 }

@XGBE_CONN_TYPE_BACKPLANE = common dso_local global i32 0, align 4
@XGBE_CONN_TYPE_MDIO = common dso_local global i32 0, align 4
@XGBE_CONN_TYPE_SFP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_phy_conn_type_mismatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_conn_type_mismatch(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_phy_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 0
  %7 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  store %struct.xgbe_phy_data* %7, %struct.xgbe_phy_data** %4, align 8
  %8 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %9 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %35 [
    i32 131, label %11
    i32 130, label %11
    i32 135, label %19
    i32 134, label %19
    i32 129, label %19
    i32 132, label %19
    i32 133, label %19
    i32 128, label %27
  ]

11:                                               ; preds = %1, %1
  %12 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %13 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @XGBE_CONN_TYPE_BACKPLANE, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %37

18:                                               ; preds = %11
  br label %36

19:                                               ; preds = %1, %1, %1, %1, %1
  %20 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %21 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @XGBE_CONN_TYPE_MDIO, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %37

26:                                               ; preds = %19
  br label %36

27:                                               ; preds = %1
  %28 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %29 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @XGBE_CONN_TYPE_SFP, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %37

34:                                               ; preds = %27
  br label %36

35:                                               ; preds = %1
  br label %36

36:                                               ; preds = %35, %34, %26, %18
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33, %25, %17
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
