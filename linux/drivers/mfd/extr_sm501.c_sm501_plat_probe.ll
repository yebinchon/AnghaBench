; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_plat_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_sm501.c_sm501_plat_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.sm501_devdata = type { i32, %struct.sm501_devdata*, i32, %struct.TYPE_2__*, i8*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to get IO resource\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"sm501\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"cannot claim registers\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"cannot remap registers\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sm501_plat_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501_plat_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sm501_devdata*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.sm501_devdata* @kzalloc(i32 56, i32 %6)
  store %struct.sm501_devdata* %7, %struct.sm501_devdata** %4, align 8
  %8 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %9 = icmp ne %struct.sm501_devdata* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  br label %123

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %17 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %16, i32 0, i32 7
  store i32* %15, i32** %17, align 8
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %22 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @dev_get_platdata(i32* %24)
  %26 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %27 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = call i32 @platform_get_irq(%struct.platform_device* %28, i32 0)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %13
  br label %120

33:                                               ; preds = %13
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %36 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load i32, i32* @IORESOURCE_MEM, align 4
  %39 = call i8* @platform_get_resource(%struct.platform_device* %37, i32 %38, i32 1)
  %40 = bitcast i8* %39 to %struct.TYPE_2__*
  %41 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %42 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %41, i32 0, i32 3
  store %struct.TYPE_2__* %40, %struct.TYPE_2__** %42, align 8
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load i32, i32* @IORESOURCE_MEM, align 4
  %45 = call i8* @platform_get_resource(%struct.platform_device* %43, i32 %44, i32 0)
  %46 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %47 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %49 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %48, i32 0, i32 3
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp ne %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %33
  %53 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %54 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %53, i32 0, i32 4
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %52, %33
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @ENOENT, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %120

63:                                               ; preds = %52
  %64 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %65 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.sm501_devdata* @request_mem_region(i32 %68, i32 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %71 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %70, i32 0, i32 1
  store %struct.sm501_devdata* %69, %struct.sm501_devdata** %71, align 8
  %72 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %73 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %72, i32 0, i32 1
  %74 = load %struct.sm501_devdata*, %struct.sm501_devdata** %73, align 8
  %75 = icmp ne %struct.sm501_devdata* %74, null
  br i1 %75, label %82, label %76

76:                                               ; preds = %63
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @EBUSY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %120

82:                                               ; preds = %63
  %83 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %84 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %85 = call i32 @platform_set_drvdata(%struct.platform_device* %83, %struct.sm501_devdata* %84)
  %86 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %87 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %92 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %91, i32 0, i32 3
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = call i32 @resource_size(%struct.TYPE_2__* %93)
  %95 = call i32 @ioremap(i32 %90, i32 %94)
  %96 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %97 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %99 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %82
  %103 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %104 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %103, i32 0, i32 0
  %105 = call i32 @dev_err(i32* %104, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %111

108:                                              ; preds = %82
  %109 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %110 = call i32 @sm501_init_dev(%struct.sm501_devdata* %109)
  store i32 %110, i32* %2, align 4
  br label %125

111:                                              ; preds = %102
  %112 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %113 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %112, i32 0, i32 1
  %114 = load %struct.sm501_devdata*, %struct.sm501_devdata** %113, align 8
  %115 = call i32 @release_resource(%struct.sm501_devdata* %114)
  %116 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %117 = getelementptr inbounds %struct.sm501_devdata, %struct.sm501_devdata* %116, i32 0, i32 1
  %118 = load %struct.sm501_devdata*, %struct.sm501_devdata** %117, align 8
  %119 = call i32 @kfree(%struct.sm501_devdata* %118)
  br label %120

120:                                              ; preds = %111, %76, %57, %32
  %121 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %122 = call i32 @kfree(%struct.sm501_devdata* %121)
  br label %123

123:                                              ; preds = %120, %10
  %124 = load i32, i32* %5, align 4
  store i32 %124, i32* %2, align 4
  br label %125

125:                                              ; preds = %123, %108
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.sm501_devdata* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_get_platdata(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i8* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.sm501_devdata* @request_mem_region(i32, i32, i8*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sm501_devdata*) #1

declare dso_local i32 @ioremap(i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_2__*) #1

declare dso_local i32 @sm501_init_dev(%struct.sm501_devdata*) #1

declare dso_local i32 @release_resource(%struct.sm501_devdata*) #1

declare dso_local i32 @kfree(%struct.sm501_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
