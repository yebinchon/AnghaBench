; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c___phy_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c___phy_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.phy_driver = type { i32 (%struct.phy_device.0*)* }
%struct.phy_device.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__phy_resume(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.phy_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.phy_driver* @to_phy_driver(i32 %10)
  store %struct.phy_driver* %11, %struct.phy_driver** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 2
  %14 = call i32 @mutex_is_locked(i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %1
  %24 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %25 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %24, i32 0, i32 0
  %26 = load i32 (%struct.phy_device.0*)*, i32 (%struct.phy_device.0*)** %25, align 8
  %27 = icmp ne i32 (%struct.phy_device.0*)* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %30 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %29, i32 0, i32 0
  %31 = load i32 (%struct.phy_device.0*)*, i32 (%struct.phy_device.0*)** %30, align 8
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = bitcast %struct.phy_device* %32 to %struct.phy_device.0*
  %34 = call i32 %31(%struct.phy_device.0* %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %23, %1
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %35
  %41 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %42 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %38
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.phy_driver* @to_phy_driver(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
