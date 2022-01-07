; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/bus/extr_mic_bus.c_mbus_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/bus/extr_mic_bus.c_mbus_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mbus_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mbus_driver = type { i32 (%struct.mbus_device.0*)*, i32 (%struct.mbus_device.1*)* }
%struct.mbus_device.0 = type opaque
%struct.mbus_device.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mbus_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbus_dev_probe(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mbus_device*, align 8
  %5 = alloca %struct.mbus_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.mbus_device* @dev_to_mbus(%struct.device* %6)
  store %struct.mbus_device* %7, %struct.mbus_device** %4, align 8
  %8 = load %struct.mbus_device*, %struct.mbus_device** %4, align 8
  %9 = getelementptr inbounds %struct.mbus_device, %struct.mbus_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mbus_driver* @drv_to_mbus(i32 %11)
  store %struct.mbus_driver* %12, %struct.mbus_driver** %5, align 8
  %13 = load %struct.mbus_driver*, %struct.mbus_driver** %5, align 8
  %14 = getelementptr inbounds %struct.mbus_driver, %struct.mbus_driver* %13, i32 0, i32 0
  %15 = load i32 (%struct.mbus_device.0*)*, i32 (%struct.mbus_device.0*)** %14, align 8
  %16 = load %struct.mbus_device*, %struct.mbus_device** %4, align 8
  %17 = bitcast %struct.mbus_device* %16 to %struct.mbus_device.0*
  %18 = call i32 %15(%struct.mbus_device.0* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %1
  %22 = load %struct.mbus_driver*, %struct.mbus_driver** %5, align 8
  %23 = getelementptr inbounds %struct.mbus_driver, %struct.mbus_driver* %22, i32 0, i32 1
  %24 = load i32 (%struct.mbus_device.1*)*, i32 (%struct.mbus_device.1*)** %23, align 8
  %25 = icmp ne i32 (%struct.mbus_device.1*)* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.mbus_driver*, %struct.mbus_driver** %5, align 8
  %28 = getelementptr inbounds %struct.mbus_driver, %struct.mbus_driver* %27, i32 0, i32 1
  %29 = load i32 (%struct.mbus_device.1*)*, i32 (%struct.mbus_device.1*)** %28, align 8
  %30 = load %struct.mbus_device*, %struct.mbus_device** %4, align 8
  %31 = bitcast %struct.mbus_device* %30 to %struct.mbus_device.1*
  %32 = call i32 %29(%struct.mbus_device.1* %31)
  br label %33

33:                                               ; preds = %26, %21
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.mbus_device* @dev_to_mbus(%struct.device*) #1

declare dso_local %struct.mbus_driver* @drv_to_mbus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
