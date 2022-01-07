; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mei_cl_device = type { i32 }
%struct.mei_cl_driver = type { i32 (%struct.mei_cl_device.0*, %struct.mei_cl_device_id*)* }
%struct.mei_cl_device.0 = type opaque
%struct.mei_cl_device_id = type opaque
%struct.mei_cl_device_id.1 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"get hw module failed\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mei_cl_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_cl_device_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mei_cl_device*, align 8
  %5 = alloca %struct.mei_cl_driver*, align 8
  %6 = alloca %struct.mei_cl_device_id.1*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.mei_cl_device* @to_mei_cl_device(%struct.device* %8)
  store %struct.mei_cl_device* %9, %struct.mei_cl_device** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mei_cl_driver* @to_mei_cl_driver(i32 %12)
  store %struct.mei_cl_driver* %13, %struct.mei_cl_driver** %5, align 8
  %14 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %15 = icmp ne %struct.mei_cl_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

17:                                               ; preds = %1
  %18 = load %struct.mei_cl_driver*, %struct.mei_cl_driver** %5, align 8
  %19 = icmp ne %struct.mei_cl_driver* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load %struct.mei_cl_driver*, %struct.mei_cl_driver** %5, align 8
  %22 = getelementptr inbounds %struct.mei_cl_driver, %struct.mei_cl_driver* %21, i32 0, i32 0
  %23 = load i32 (%struct.mei_cl_device.0*, %struct.mei_cl_device_id*)*, i32 (%struct.mei_cl_device.0*, %struct.mei_cl_device_id*)** %22, align 8
  %24 = icmp ne i32 (%struct.mei_cl_device.0*, %struct.mei_cl_device_id*)* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20, %17
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %65

28:                                               ; preds = %20
  %29 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %30 = load %struct.mei_cl_driver*, %struct.mei_cl_driver** %5, align 8
  %31 = call %struct.mei_cl_device_id.1* @mei_cl_device_find(%struct.mei_cl_device* %29, %struct.mei_cl_driver* %30)
  store %struct.mei_cl_device_id.1* %31, %struct.mei_cl_device_id.1** %6, align 8
  %32 = load %struct.mei_cl_device_id.1*, %struct.mei_cl_device_id.1** %6, align 8
  %33 = icmp ne %struct.mei_cl_device_id.1* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %65

37:                                               ; preds = %28
  %38 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %39 = call i32 @mei_cl_bus_module_get(%struct.mei_cl_device* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %43 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %65

47:                                               ; preds = %37
  %48 = load %struct.mei_cl_driver*, %struct.mei_cl_driver** %5, align 8
  %49 = getelementptr inbounds %struct.mei_cl_driver, %struct.mei_cl_driver* %48, i32 0, i32 0
  %50 = load i32 (%struct.mei_cl_device.0*, %struct.mei_cl_device_id*)*, i32 (%struct.mei_cl_device.0*, %struct.mei_cl_device_id*)** %49, align 8
  %51 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %52 = bitcast %struct.mei_cl_device* %51 to %struct.mei_cl_device.0*
  %53 = load %struct.mei_cl_device_id.1*, %struct.mei_cl_device_id.1** %6, align 8
  %54 = bitcast %struct.mei_cl_device_id.1* %53 to %struct.mei_cl_device_id*
  %55 = call i32 %50(%struct.mei_cl_device.0* %52, %struct.mei_cl_device_id* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load %struct.mei_cl_device*, %struct.mei_cl_device** %4, align 8
  %60 = call i32 @mei_cl_bus_module_put(%struct.mei_cl_device* %59)
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %65

62:                                               ; preds = %47
  %63 = load i32, i32* @THIS_MODULE, align 4
  %64 = call i32 @__module_get(i32 %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %58, %41, %34, %25, %16
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.mei_cl_device* @to_mei_cl_device(%struct.device*) #1

declare dso_local %struct.mei_cl_driver* @to_mei_cl_driver(i32) #1

declare dso_local %struct.mei_cl_device_id.1* @mei_cl_device_find(%struct.mei_cl_device*, %struct.mei_cl_driver*) #1

declare dso_local i32 @mei_cl_bus_module_get(%struct.mei_cl_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mei_cl_bus_module_put(%struct.mei_cl_device*) #1

declare dso_local i32 @__module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
