; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_at803x.c_at803x_context_save.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_at803x.c_at803x_context_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.at803x_context = type { i8*, i8*, i8*, i8*, i8*, i8* }

@MII_BMCR = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@AT803X_INTR_ENABLE = common dso_local global i32 0, align 4
@AT803X_SMART_SPEED = common dso_local global i32 0, align 4
@AT803X_LED_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*, %struct.at803x_context*)* @at803x_context_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at803x_context_save(%struct.phy_device* %0, %struct.at803x_context* %1) #0 {
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.at803x_context*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store %struct.at803x_context* %1, %struct.at803x_context** %4, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = load i32, i32* @MII_BMCR, align 4
  %7 = call i8* @phy_read(%struct.phy_device* %5, i32 %6)
  %8 = load %struct.at803x_context*, %struct.at803x_context** %4, align 8
  %9 = getelementptr inbounds %struct.at803x_context, %struct.at803x_context* %8, i32 0, i32 5
  store i8* %7, i8** %9, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = load i32, i32* @MII_ADVERTISE, align 4
  %12 = call i8* @phy_read(%struct.phy_device* %10, i32 %11)
  %13 = load %struct.at803x_context*, %struct.at803x_context** %4, align 8
  %14 = getelementptr inbounds %struct.at803x_context, %struct.at803x_context* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = load i32, i32* @MII_CTRL1000, align 4
  %17 = call i8* @phy_read(%struct.phy_device* %15, i32 %16)
  %18 = load %struct.at803x_context*, %struct.at803x_context** %4, align 8
  %19 = getelementptr inbounds %struct.at803x_context, %struct.at803x_context* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %21 = load i32, i32* @AT803X_INTR_ENABLE, align 4
  %22 = call i8* @phy_read(%struct.phy_device* %20, i32 %21)
  %23 = load %struct.at803x_context*, %struct.at803x_context** %4, align 8
  %24 = getelementptr inbounds %struct.at803x_context, %struct.at803x_context* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %26 = load i32, i32* @AT803X_SMART_SPEED, align 4
  %27 = call i8* @phy_read(%struct.phy_device* %25, i32 %26)
  %28 = load %struct.at803x_context*, %struct.at803x_context** %4, align 8
  %29 = getelementptr inbounds %struct.at803x_context, %struct.at803x_context* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %31 = load i32, i32* @AT803X_LED_CONTROL, align 4
  %32 = call i8* @phy_read(%struct.phy_device* %30, i32 %31)
  %33 = load %struct.at803x_context*, %struct.at803x_context** %4, align 8
  %34 = getelementptr inbounds %struct.at803x_context, %struct.at803x_context* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  ret void
}

declare dso_local i8* @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
