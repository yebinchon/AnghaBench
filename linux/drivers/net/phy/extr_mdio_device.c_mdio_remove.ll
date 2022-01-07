; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_device.c_mdio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_device.c_mdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mdio_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_driver* }
%struct.device_driver = type { i32 }
%struct.mdio_driver = type { i32 (%struct.mdio_device.0*)* }
%struct.mdio_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.mdio_device*, align 8
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca %struct.mdio_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.mdio_device* @to_mdio_device(%struct.device* %6)
  store %struct.mdio_device* %7, %struct.mdio_device** %3, align 8
  %8 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %9 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device_driver*, %struct.device_driver** %10, align 8
  store %struct.device_driver* %11, %struct.device_driver** %4, align 8
  %12 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %13 = call %struct.mdio_driver* @to_mdio_driver(%struct.device_driver* %12)
  store %struct.mdio_driver* %13, %struct.mdio_driver** %5, align 8
  %14 = load %struct.mdio_driver*, %struct.mdio_driver** %5, align 8
  %15 = getelementptr inbounds %struct.mdio_driver, %struct.mdio_driver* %14, i32 0, i32 0
  %16 = load i32 (%struct.mdio_device.0*)*, i32 (%struct.mdio_device.0*)** %15, align 8
  %17 = icmp ne i32 (%struct.mdio_device.0*)* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.mdio_driver*, %struct.mdio_driver** %5, align 8
  %20 = getelementptr inbounds %struct.mdio_driver, %struct.mdio_driver* %19, i32 0, i32 0
  %21 = load i32 (%struct.mdio_device.0*)*, i32 (%struct.mdio_device.0*)** %20, align 8
  %22 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %23 = bitcast %struct.mdio_device* %22 to %struct.mdio_device.0*
  %24 = call i32 %21(%struct.mdio_device.0* %23)
  %25 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %26 = call i32 @mdio_device_reset(%struct.mdio_device* %25, i32 1)
  br label %27

27:                                               ; preds = %18, %1
  ret i32 0
}

declare dso_local %struct.mdio_device* @to_mdio_device(%struct.device*) #1

declare dso_local %struct.mdio_driver* @to_mdio_driver(%struct.device_driver*) #1

declare dso_local i32 @mdio_device_reset(%struct.mdio_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
