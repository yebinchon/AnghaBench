; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_t7l66xb.c_t7l66xb_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_t7l66xb.c_t7l66xb_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.t7l66xb_platform_data = type { i32 (%struct.platform_device.0*)* }
%struct.platform_device.0 = type opaque
%struct.t7l66xb = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @t7l66xb_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t7l66xb_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.t7l66xb_platform_data*, align 8
  %4 = alloca %struct.t7l66xb*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.t7l66xb_platform_data* @dev_get_platdata(i32* %7)
  store %struct.t7l66xb_platform_data* %8, %struct.t7l66xb_platform_data** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call %struct.t7l66xb* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.t7l66xb* %10, %struct.t7l66xb** %4, align 8
  %11 = load %struct.t7l66xb_platform_data*, %struct.t7l66xb_platform_data** %3, align 8
  %12 = getelementptr inbounds %struct.t7l66xb_platform_data, %struct.t7l66xb_platform_data* %11, i32 0, i32 0
  %13 = load i32 (%struct.platform_device.0*)*, i32 (%struct.platform_device.0*)** %12, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = bitcast %struct.platform_device* %14 to %struct.platform_device.0*
  %16 = call i32 %13(%struct.platform_device.0* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %18 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @clk_disable_unprepare(i32 %19)
  %21 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %22 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_put(i32 %23)
  %25 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %26 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @clk_disable_unprepare(i32 %27)
  %29 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %30 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_put(i32 %31)
  %33 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %34 = call i32 @t7l66xb_detach_irq(%struct.platform_device* %33)
  %35 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %36 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @iounmap(i32 %37)
  %39 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %40 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %39, i32 0, i32 0
  %41 = call i32 @release_resource(i32* %40)
  %42 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = call i32 @mfd_remove_devices(i32* %43)
  %45 = load %struct.t7l66xb*, %struct.t7l66xb** %4, align 8
  %46 = call i32 @kfree(%struct.t7l66xb* %45)
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.t7l66xb_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.t7l66xb* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @t7l66xb_detach_irq(%struct.platform_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_resource(i32*) #1

declare dso_local i32 @mfd_remove_devices(i32*) #1

declare dso_local i32 @kfree(%struct.t7l66xb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
