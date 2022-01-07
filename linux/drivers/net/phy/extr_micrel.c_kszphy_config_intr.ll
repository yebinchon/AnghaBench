; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_kszphy_config_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_kszphy_config_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.kszphy_type* }
%struct.kszphy_type = type { i32 }

@KSZPHY_CTRL_INT_ACTIVE_HIGH = common dso_local global i32 0, align 4
@MII_KSZPHY_CTRL = common dso_local global i32 0, align 4
@PHY_INTERRUPT_ENABLED = common dso_local global i64 0, align 8
@KSZPHY_INTCS_ALL = common dso_local global i32 0, align 4
@MII_KSZPHY_INTCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @kszphy_config_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kszphy_config_intr(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.kszphy_type*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.kszphy_type*, %struct.kszphy_type** %10, align 8
  store %struct.kszphy_type* %11, %struct.kszphy_type** %4, align 8
  %12 = load %struct.kszphy_type*, %struct.kszphy_type** %4, align 8
  %13 = icmp ne %struct.kszphy_type* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.kszphy_type*, %struct.kszphy_type** %4, align 8
  %16 = getelementptr inbounds %struct.kszphy_type, %struct.kszphy_type* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.kszphy_type*, %struct.kszphy_type** %4, align 8
  %21 = getelementptr inbounds %struct.kszphy_type, %struct.kszphy_type* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  br label %25

23:                                               ; preds = %14, %1
  %24 = load i32, i32* @KSZPHY_CTRL_INT_ACTIVE_HIGH, align 4
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %27 = load i32, i32* @MII_KSZPHY_CTRL, align 4
  %28 = call i32 @phy_read(%struct.phy_device* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %55

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = load i32, i32* @MII_KSZPHY_CTRL, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @phy_write(%struct.phy_device* %38, i32 %39, i32 %40)
  %42 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %43 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PHY_INTERRUPT_ENABLED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* @KSZPHY_INTCS_ALL, align 4
  store i32 %48, i32* %5, align 4
  br label %50

49:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %47
  %51 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %52 = load i32, i32* @MII_KSZPHY_INTCS, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @phy_write(%struct.phy_device* %51, i32 %52, i32 %53)
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %50, %31
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
