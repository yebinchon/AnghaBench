; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap_elm.c_elm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap_elm.c_elm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.resource = type { i32 }
%struct.elm_info = type { i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"no irq resource defined\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@elm_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failure requesting %pr\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"can't enable clock\0A\00", align 1
@elm_devices = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @elm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elm_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.elm_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.elm_info* @devm_kzalloc(i32* %9, i32 24, i32 %10)
  store %struct.elm_info* %11, %struct.elm_info** %7, align 8
  %12 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %13 = icmp ne %struct.elm_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %105

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %21 = getelementptr inbounds %struct.elm_info, %struct.elm_info* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load i32, i32* @IORESOURCE_IRQ, align 4
  %24 = call %struct.resource* @platform_get_resource(%struct.platform_device* %22, i32 %23, i32 0)
  store %struct.resource* %24, %struct.resource** %6, align 8
  %25 = load %struct.resource*, %struct.resource** %6, align 8
  %26 = icmp ne %struct.resource* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = call i32 (i32*, i8*, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %105

33:                                               ; preds = %17
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load i32, i32* @IORESOURCE_MEM, align 4
  %36 = call %struct.resource* @platform_get_resource(%struct.platform_device* %34, i32 %35, i32 0)
  store %struct.resource* %36, %struct.resource** %5, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = load %struct.resource*, %struct.resource** %5, align 8
  %40 = call i32 @devm_ioremap_resource(i32* %38, %struct.resource* %39)
  %41 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %42 = getelementptr inbounds %struct.elm_info, %struct.elm_info* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %44 = getelementptr inbounds %struct.elm_info, %struct.elm_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @IS_ERR(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %50 = getelementptr inbounds %struct.elm_info, %struct.elm_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @PTR_ERR(i32 %51)
  store i32 %52, i32* %2, align 4
  br label %105

53:                                               ; preds = %33
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = load %struct.resource*, %struct.resource** %6, align 8
  %57 = getelementptr inbounds %struct.resource, %struct.resource* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @elm_isr, align 4
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %64 = call i32 @devm_request_irq(i32* %55, i32 %58, i32 %59, i32 0, i32 %62, %struct.elm_info* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %53
  %68 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %69 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %68, i32 0, i32 0
  %70 = load %struct.resource*, %struct.resource** %6, align 8
  %71 = call i32 (i32*, i8*, ...) @dev_err(i32* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.resource* %70)
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %105

73:                                               ; preds = %53
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = call i32 @pm_runtime_enable(i32* %75)
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i64 @pm_runtime_get_sync(i32* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %73
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  %84 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %85 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %84, i32 0, i32 0
  %86 = call i32 @pm_runtime_disable(i32* %85)
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %87, i32 0, i32 0
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %105

91:                                               ; preds = %73
  %92 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %93 = getelementptr inbounds %struct.elm_info, %struct.elm_info* %92, i32 0, i32 1
  %94 = call i32 @init_completion(i32* %93)
  %95 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %96 = getelementptr inbounds %struct.elm_info, %struct.elm_info* %95, i32 0, i32 0
  %97 = call i32 @INIT_LIST_HEAD(i32* %96)
  %98 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %99 = getelementptr inbounds %struct.elm_info, %struct.elm_info* %98, i32 0, i32 0
  %100 = call i32 @list_add(i32* %99, i32* @elm_devices)
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = load %struct.elm_info*, %struct.elm_info** %7, align 8
  %103 = call i32 @platform_set_drvdata(%struct.platform_device* %101, %struct.elm_info* %102)
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %91, %81, %67, %48, %27, %14
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.elm_info* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.elm_info*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i64 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.elm_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
