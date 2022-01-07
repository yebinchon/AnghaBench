; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_at803x.c_at803x_config_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_at803x.c_at803x_config_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@AT803X_INTR_ENABLE = common dso_local global i32 0, align 4
@PHY_INTERRUPT_ENABLED = common dso_local global i64 0, align 8
@AT803X_INTR_ENABLE_AUTONEG_ERR = common dso_local global i32 0, align 4
@AT803X_INTR_ENABLE_SPEED_CHANGED = common dso_local global i32 0, align 4
@AT803X_INTR_ENABLE_DUPLEX_CHANGED = common dso_local global i32 0, align 4
@AT803X_INTR_ENABLE_LINK_FAIL = common dso_local global i32 0, align 4
@AT803X_INTR_ENABLE_LINK_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @at803x_config_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at803x_config_intr(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %6 = load i32, i32* @AT803X_INTR_ENABLE, align 4
  %7 = call i32 @phy_read(%struct.phy_device* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PHY_INTERRUPT_ENABLED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load i32, i32* @AT803X_INTR_ENABLE_AUTONEG_ERR, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @AT803X_INTR_ENABLE_SPEED_CHANGED, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @AT803X_INTR_ENABLE_DUPLEX_CHANGED, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* @AT803X_INTR_ENABLE_LINK_FAIL, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @AT803X_INTR_ENABLE_LINK_SUCCESS, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %30 = load i32, i32* @AT803X_INTR_ENABLE, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @phy_write(%struct.phy_device* %29, i32 %30, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %37

33:                                               ; preds = %1
  %34 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %35 = load i32, i32* @AT803X_INTR_ENABLE, align 4
  %36 = call i32 @phy_write(%struct.phy_device* %34, i32 %35, i32 0)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %33, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
