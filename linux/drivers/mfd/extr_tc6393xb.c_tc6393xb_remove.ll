; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6393xb.c_tc6393xb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tc6393xb.c_tc6393xb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tc6393xb_platform_data = type { i32 (%struct.platform_device.0*)*, i32 (%struct.platform_device.1*)* }
%struct.platform_device.0 = type opaque
%struct.platform_device.1 = type opaque
%struct.tc6393xb = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tc6393xb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc6393xb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tc6393xb_platform_data*, align 8
  %4 = alloca %struct.tc6393xb*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.tc6393xb_platform_data* @dev_get_platdata(i32* %7)
  store %struct.tc6393xb_platform_data* %8, %struct.tc6393xb_platform_data** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call %struct.tc6393xb* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.tc6393xb* %10, %struct.tc6393xb** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 @mfd_remove_devices(i32* %12)
  %14 = load %struct.tc6393xb_platform_data*, %struct.tc6393xb_platform_data** %3, align 8
  %15 = getelementptr inbounds %struct.tc6393xb_platform_data, %struct.tc6393xb_platform_data* %14, i32 0, i32 1
  %16 = load i32 (%struct.platform_device.1*)*, i32 (%struct.platform_device.1*)** %15, align 8
  %17 = icmp ne i32 (%struct.platform_device.1*)* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.tc6393xb_platform_data*, %struct.tc6393xb_platform_data** %3, align 8
  %20 = getelementptr inbounds %struct.tc6393xb_platform_data, %struct.tc6393xb_platform_data* %19, i32 0, i32 1
  %21 = load i32 (%struct.platform_device.1*)*, i32 (%struct.platform_device.1*)** %20, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %23 = bitcast %struct.platform_device* %22 to %struct.platform_device.1*
  %24 = call i32 %21(%struct.platform_device.1* %23)
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %27 = call i32 @tc6393xb_detach_irq(%struct.platform_device* %26)
  %28 = load %struct.tc6393xb*, %struct.tc6393xb** %4, align 8
  %29 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.tc6393xb*, %struct.tc6393xb** %4, align 8
  %35 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %34, i32 0, i32 3
  %36 = call i32 @gpiochip_remove(%struct.TYPE_2__* %35)
  br label %37

37:                                               ; preds = %33, %25
  %38 = load %struct.tc6393xb_platform_data*, %struct.tc6393xb_platform_data** %3, align 8
  %39 = getelementptr inbounds %struct.tc6393xb_platform_data, %struct.tc6393xb_platform_data* %38, i32 0, i32 0
  %40 = load i32 (%struct.platform_device.0*)*, i32 (%struct.platform_device.0*)** %39, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %42 = bitcast %struct.platform_device* %41 to %struct.platform_device.0*
  %43 = call i32 %40(%struct.platform_device.0* %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.tc6393xb*, %struct.tc6393xb** %4, align 8
  %45 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @clk_disable_unprepare(i32 %46)
  %48 = load %struct.tc6393xb*, %struct.tc6393xb** %4, align 8
  %49 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @iounmap(i32 %50)
  %52 = load %struct.tc6393xb*, %struct.tc6393xb** %4, align 8
  %53 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %52, i32 0, i32 1
  %54 = call i32 @release_resource(i32* %53)
  %55 = load %struct.tc6393xb*, %struct.tc6393xb** %4, align 8
  %56 = getelementptr inbounds %struct.tc6393xb, %struct.tc6393xb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @clk_put(i32 %57)
  %59 = load %struct.tc6393xb*, %struct.tc6393xb** %4, align 8
  %60 = call i32 @kfree(%struct.tc6393xb* %59)
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.tc6393xb_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.tc6393xb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mfd_remove_devices(i32*) #1

declare dso_local i32 @tc6393xb_detach_irq(%struct.platform_device*) #1

declare dso_local i32 @gpiochip_remove(%struct.TYPE_2__*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_resource(i32*) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @kfree(%struct.tc6393xb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
