; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_at803x.c_at803x_context_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_at803x.c_at803x_context_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.at803x_context = type { i32, i32, i32, i32, i32, i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@AT803X_INTR_ENABLE = common dso_local global i32 0, align 4
@AT803X_SMART_SPEED = common dso_local global i32 0, align 4
@AT803X_LED_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*, %struct.at803x_context*)* @at803x_context_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at803x_context_restore(%struct.phy_device* %0, %struct.at803x_context* %1) #0 {
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.at803x_context*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store %struct.at803x_context* %1, %struct.at803x_context** %4, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = load i32, i32* @MII_BMCR, align 4
  %7 = load %struct.at803x_context*, %struct.at803x_context** %4, align 8
  %8 = getelementptr inbounds %struct.at803x_context, %struct.at803x_context* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @phy_write(%struct.phy_device* %5, i32 %6, i32 %9)
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = load i32, i32* @MII_ADVERTISE, align 4
  %13 = load %struct.at803x_context*, %struct.at803x_context** %4, align 8
  %14 = getelementptr inbounds %struct.at803x_context, %struct.at803x_context* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @phy_write(%struct.phy_device* %11, i32 %12, i32 %15)
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = load i32, i32* @MII_CTRL1000, align 4
  %19 = load %struct.at803x_context*, %struct.at803x_context** %4, align 8
  %20 = getelementptr inbounds %struct.at803x_context, %struct.at803x_context* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @phy_write(%struct.phy_device* %17, i32 %18, i32 %21)
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = load i32, i32* @AT803X_INTR_ENABLE, align 4
  %25 = load %struct.at803x_context*, %struct.at803x_context** %4, align 8
  %26 = getelementptr inbounds %struct.at803x_context, %struct.at803x_context* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @phy_write(%struct.phy_device* %23, i32 %24, i32 %27)
  %29 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %30 = load i32, i32* @AT803X_SMART_SPEED, align 4
  %31 = load %struct.at803x_context*, %struct.at803x_context** %4, align 8
  %32 = getelementptr inbounds %struct.at803x_context, %struct.at803x_context* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @phy_write(%struct.phy_device* %29, i32 %30, i32 %33)
  %35 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %36 = load i32, i32* @AT803X_LED_CONTROL, align 4
  %37 = load %struct.at803x_context*, %struct.at803x_context** %4, align 8
  %38 = getelementptr inbounds %struct.at803x_context, %struct.at803x_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @phy_write(%struct.phy_device* %35, i32 %36, i32 %39)
  ret void
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
