; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_bus.c_mdio_bus_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_bus.c_mdio_bus_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.mdio_device = type { i32 (%struct.device.0*, %struct.device_driver.1*)* }
%struct.device.0 = type opaque
%struct.device_driver.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @mdio_bus_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_bus_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.mdio_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.mdio_device* @to_mdio_device(%struct.device* %7)
  store %struct.mdio_device* %8, %struct.mdio_device** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %11 = call i64 @of_driver_match_device(%struct.device* %9, %struct.device_driver* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %16 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %15, i32 0, i32 0
  %17 = load i32 (%struct.device.0*, %struct.device_driver.1*)*, i32 (%struct.device.0*, %struct.device_driver.1*)** %16, align 8
  %18 = icmp ne i32 (%struct.device.0*, %struct.device_driver.1*)* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.mdio_device*, %struct.mdio_device** %6, align 8
  %21 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %20, i32 0, i32 0
  %22 = load i32 (%struct.device.0*, %struct.device_driver.1*)*, i32 (%struct.device.0*, %struct.device_driver.1*)** %21, align 8
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = bitcast %struct.device* %23 to %struct.device.0*
  %25 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %26 = bitcast %struct.device_driver* %25 to %struct.device_driver.1*
  %27 = call i32 %22(%struct.device.0* %24, %struct.device_driver.1* %26)
  store i32 %27, i32* %3, align 4
  br label %29

28:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %19, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.mdio_device* @to_mdio_device(%struct.device*) #1

declare dso_local i64 @of_driver_match_device(%struct.device*, %struct.device_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
