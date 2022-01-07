; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_phy.c_pch_gbe_phy_disable_hibernate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_phy.c_pch_gbe_phy_disable_hibernate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pch_gbe_adapter = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Disabling hibernation for AR803X PHY\0A\00", align 1
@PHY_AR8031_DBG_OFF = common dso_local global i32 0, align 4
@PHY_AR8031_HIBERNATE = common dso_local global i32 0, align 4
@PHY_AR8031_DBG_DAT = common dso_local global i32 0, align 4
@PHY_AR8031_PS_HIB_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Unknown PHY (%x), could not disable hibernation\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Could not disable PHY hibernation\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pch_gbe_phy_disable_hibernate(%struct.pch_gbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pch_gbe_hw*, align 8
  %4 = alloca %struct.pch_gbe_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %3, align 8
  %7 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %8 = call %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw* %7)
  store %struct.pch_gbe_adapter* %8, %struct.pch_gbe_adapter** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %10 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %37 [
    i32 128, label %13
  ]

13:                                               ; preds = %1
  %14 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @netdev_dbg(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %19 = load i32, i32* @PHY_AR8031_DBG_OFF, align 4
  %20 = load i32, i32* @PHY_AR8031_HIBERNATE, align 4
  %21 = call i32 @pch_gbe_phy_write_reg_miic(%struct.pch_gbe_hw* %18, i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %48

25:                                               ; preds = %13
  %26 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %27 = load i32, i32* @PHY_AR8031_DBG_DAT, align 4
  %28 = call i32 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw* %26, i32 %27, i32* %5)
  %29 = load i32, i32* @PHY_AR8031_PS_HIB_EN, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %34 = load i32, i32* @PHY_AR8031_DBG_DAT, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @pch_gbe_phy_write_reg_miic(%struct.pch_gbe_hw* %33, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %48

37:                                               ; preds = %1
  %38 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %39 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %42 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i32, i8*, ...) @netdev_err(i32 %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %58

48:                                               ; preds = %25, %24
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @netdev_err(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %48
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %37
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw*) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @pch_gbe_phy_write_reg_miic(%struct.pch_gbe_hw*, i32, i32) #1

declare dso_local i32 @pch_gbe_phy_read_reg_miic(%struct.pch_gbe_hw*, i32, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
