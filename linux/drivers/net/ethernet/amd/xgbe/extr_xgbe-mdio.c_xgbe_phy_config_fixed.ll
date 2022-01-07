; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_phy_config_fixed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_phy_config_fixed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.xgbe_prv_data.0*, i32)* }
%struct.xgbe_prv_data.0 = type opaque

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"fixed PHY configuration\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_phy_config_fixed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_config_fixed(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %6 = load i32, i32* @link, align 4
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %8 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @netif_dbg(%struct.xgbe_prv_data* %5, i32 %6, i32 %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %12 = call i32 @xgbe_an_disable(%struct.xgbe_prv_data* %11)
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %14 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct.xgbe_prv_data.0*, i32)*, i32 (%struct.xgbe_prv_data.0*, i32)** %16, align 8
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %19 = bitcast %struct.xgbe_prv_data* %18 to %struct.xgbe_prv_data.0*
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 %17(%struct.xgbe_prv_data.0* %19, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  switch i32 %25, label %28 [
    i32 134, label %26
    i32 133, label %26
    i32 135, label %26
    i32 131, label %26
    i32 130, label %26
    i32 128, label %26
    i32 132, label %26
    i32 129, label %27
  ]

26:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  br label %31

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %1, %27
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %45

31:                                               ; preds = %26
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %33 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @DUPLEX_FULL, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %45

41:                                               ; preds = %31
  %42 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @xgbe_set_mode(%struct.xgbe_prv_data* %42, i32 %43)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %38, %28
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*) #1

declare dso_local i32 @xgbe_an_disable(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_set_mode(%struct.xgbe_prv_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
