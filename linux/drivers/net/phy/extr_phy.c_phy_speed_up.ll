; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_speed_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy.c_phy_speed_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i32, i32 }

@adv_tmp = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_speed_up(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %4 = load i32, i32* @adv_tmp, align 4
  %5 = call i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32 %4)
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AUTONEG_ENABLE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @linkmode_empty(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %46

19:                                               ; preds = %12
  %20 = load i32, i32* @adv_tmp, align 4
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @linkmode_copy(i32 %20, i32 %23)
  %25 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %26 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @linkmode_copy(i32 %27, i32 %30)
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @linkmode_zero(i32 %34)
  %36 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %37 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @adv_tmp, align 4
  %40 = call i64 @linkmode_equal(i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %46

43:                                               ; preds = %19
  %44 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %45 = call i32 @phy_config_aneg(%struct.phy_device* %44)
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %42, %18, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32) #1

declare dso_local i64 @linkmode_empty(i32) #1

declare dso_local i32 @linkmode_copy(i32, i32) #1

declare dso_local i32 @linkmode_zero(i32) #1

declare dso_local i64 @linkmode_equal(i32, i32) #1

declare dso_local i32 @phy_config_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
