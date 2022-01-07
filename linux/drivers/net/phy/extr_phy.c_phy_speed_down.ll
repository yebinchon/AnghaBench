; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_speed_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_speed_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32, i32 }

@adv_tmp = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_speed_down(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @adv_tmp, align 4
  %8 = call i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32 %7)
  %9 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AUTONEG_ENABLE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

15:                                               ; preds = %2
  %16 = load i32, i32* @adv_tmp, align 4
  %17 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @linkmode_copy(i32 %16, i32 %19)
  %21 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %22 = call i32 @phy_speed_down_core(%struct.phy_device* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %15
  %28 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @adv_tmp, align 4
  %32 = call i32 @linkmode_copy(i32 %30, i32 %31)
  %33 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @adv_tmp, align 4
  %37 = call i64 @linkmode_equal(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %56

40:                                               ; preds = %27
  %41 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %42 = call i32 @phy_config_aneg(%struct.phy_device* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %56

47:                                               ; preds = %40
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %52 = call i32 @phy_poll_aneg_done(%struct.phy_device* %51)
  br label %54

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ 0, %53 ]
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %45, %39, %25, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32) #1

declare dso_local i32 @linkmode_copy(i32, i32) #1

declare dso_local i32 @phy_speed_down_core(%struct.phy_device*) #1

declare dso_local i64 @linkmode_equal(i32, i32) #1

declare dso_local i32 @phy_config_aneg(%struct.phy_device*) #1

declare dso_local i32 @phy_poll_aneg_done(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
