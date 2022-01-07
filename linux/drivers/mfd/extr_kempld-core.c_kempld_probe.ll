; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_kempld-core.c_kempld_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_kempld-core.c_kempld_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.kempld_platform_data = type { i32 }
%struct.kempld_device_data = type { i32, %struct.device*, i32, i64, i64, i64 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kempld_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.kempld_platform_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.kempld_device_data*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = call %struct.kempld_platform_data* @dev_get_platdata(%struct.device* %9)
  store %struct.kempld_platform_data* %10, %struct.kempld_platform_data** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.kempld_device_data* @devm_kzalloc(%struct.device* %13, i32 48, i32 %14)
  store %struct.kempld_device_data* %15, %struct.kempld_device_data** %6, align 8
  %16 = load %struct.kempld_device_data*, %struct.kempld_device_data** %6, align 8
  %17 = icmp ne %struct.kempld_device_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %75

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_IO, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %7, align 8
  %25 = load %struct.resource*, %struct.resource** %7, align 8
  %26 = icmp ne %struct.resource* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %75

30:                                               ; preds = %21
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = load %struct.resource*, %struct.resource** %7, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.resource*, %struct.resource** %7, align 8
  %36 = call i32 @resource_size(%struct.resource* %35)
  %37 = call i64 @devm_ioport_map(%struct.device* %31, i32 %34, i32 %36)
  %38 = load %struct.kempld_device_data*, %struct.kempld_device_data** %6, align 8
  %39 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %38, i32 0, i32 3
  store i64 %37, i64* %39, align 8
  %40 = load %struct.kempld_device_data*, %struct.kempld_device_data** %6, align 8
  %41 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %30
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %75

47:                                               ; preds = %30
  %48 = load %struct.kempld_device_data*, %struct.kempld_device_data** %6, align 8
  %49 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.kempld_device_data*, %struct.kempld_device_data** %6, align 8
  %52 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %51, i32 0, i32 5
  store i64 %50, i64* %52, align 8
  %53 = load %struct.kempld_device_data*, %struct.kempld_device_data** %6, align 8
  %54 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  %57 = load %struct.kempld_device_data*, %struct.kempld_device_data** %6, align 8
  %58 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %57, i32 0, i32 4
  store i64 %56, i64* %58, align 8
  %59 = load %struct.kempld_platform_data*, %struct.kempld_platform_data** %4, align 8
  %60 = getelementptr inbounds %struct.kempld_platform_data, %struct.kempld_platform_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.kempld_device_data*, %struct.kempld_device_data** %6, align 8
  %63 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load %struct.kempld_device_data*, %struct.kempld_device_data** %6, align 8
  %66 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %65, i32 0, i32 1
  store %struct.device* %64, %struct.device** %66, align 8
  %67 = load %struct.kempld_device_data*, %struct.kempld_device_data** %6, align 8
  %68 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %67, i32 0, i32 0
  %69 = call i32 @mutex_init(i32* %68)
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = load %struct.kempld_device_data*, %struct.kempld_device_data** %6, align 8
  %72 = call i32 @platform_set_drvdata(%struct.platform_device* %70, %struct.kempld_device_data* %71)
  %73 = load %struct.kempld_device_data*, %struct.kempld_device_data** %6, align 8
  %74 = call i32 @kempld_detect_device(%struct.kempld_device_data* %73)
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %47, %44, %27, %18
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.kempld_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.kempld_device_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioport_map(%struct.device*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.kempld_device_data*) #1

declare dso_local i32 @kempld_detect_device(%struct.kempld_device_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
