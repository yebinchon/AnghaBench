; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_kszphy_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_kszphy_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}* }

@PHY_INTERRUPT_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @kszphy_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kszphy_resume(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = call i32 @genphy_resume(%struct.phy_device* %5)
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = call i32 @kszphy_config_reset(%struct.phy_device* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %39

13:                                               ; preds = %1
  %14 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %15 = call i64 @phy_interrupt_is_valid(%struct.phy_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load i32, i32* @PHY_INTERRUPT_ENABLED, align 4
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.phy_device*)**
  %26 = load i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)** %25, align 8
  %27 = icmp ne i32 (%struct.phy_device*)* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %17
  %29 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.phy_device*)**
  %34 = load i32 (%struct.phy_device*)*, i32 (%struct.phy_device*)** %33, align 8
  %35 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %36 = call i32 %34(%struct.phy_device* %35)
  br label %37

37:                                               ; preds = %28, %17
  br label %38

38:                                               ; preds = %37, %13
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @genphy_resume(%struct.phy_device*) #1

declare dso_local i32 @kszphy_config_reset(%struct.phy_device*) #1

declare dso_local i64 @phy_interrupt_is_valid(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
