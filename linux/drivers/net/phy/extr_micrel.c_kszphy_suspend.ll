; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_kszphy_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_kszphy_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@PHY_INTERRUPT_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @kszphy_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kszphy_suspend(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %3 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %4 = call i64 @phy_interrupt_is_valid(%struct.phy_device* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = load i32, i32* @PHY_INTERRUPT_DISABLED, align 4
  %8 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = bitcast {}** %13 to i32 (%struct.phy_device*)**
  %15 = load i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)** %14, align 8
  %16 = icmp ne i32 (%struct.phy_device*)* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %6
  %18 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.phy_device*)**
  %23 = load i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)** %22, align 8
  %24 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %25 = call i32 %23(%struct.phy_device* %24)
  br label %26

26:                                               ; preds = %17, %6
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %29 = call i32 @genphy_suspend(%struct.phy_device* %28)
  ret i32 %29
}

declare dso_local i64 @phy_interrupt_is_valid(%struct.phy_device*) #1

declare dso_local i32 @genphy_suspend(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
