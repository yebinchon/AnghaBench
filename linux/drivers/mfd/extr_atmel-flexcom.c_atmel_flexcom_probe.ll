; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_atmel-flexcom.c_atmel_flexcom_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_atmel-flexcom.c_atmel_flexcom_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }
%struct.atmel_flexcom = type { i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"atmel,flexcom-mode\00", align 1
@ATMEL_FLEXCOM_MODE_USART = common dso_local global i64 0, align 8
@ATMEL_FLEXCOM_MODE_TWI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@FLEX_MR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_flexcom_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_flexcom_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.atmel_flexcom*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.atmel_flexcom* @devm_kzalloc(%struct.TYPE_5__* %13, i32 24, i32 %14)
  store %struct.atmel_flexcom* %15, %struct.atmel_flexcom** %6, align 8
  %16 = load %struct.atmel_flexcom*, %struct.atmel_flexcom** %6, align 8
  %17 = icmp ne %struct.atmel_flexcom* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %111

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = load %struct.atmel_flexcom*, %struct.atmel_flexcom** %6, align 8
  %24 = call i32 @platform_set_drvdata(%struct.platform_device* %22, %struct.atmel_flexcom* %23)
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = load %struct.atmel_flexcom*, %struct.atmel_flexcom** %6, align 8
  %27 = getelementptr inbounds %struct.atmel_flexcom, %struct.atmel_flexcom* %26, i32 0, i32 0
  %28 = call i32 @of_property_read_u32(%struct.device_node* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %111

33:                                               ; preds = %21
  %34 = load %struct.atmel_flexcom*, %struct.atmel_flexcom** %6, align 8
  %35 = getelementptr inbounds %struct.atmel_flexcom, %struct.atmel_flexcom* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ATMEL_FLEXCOM_MODE_USART, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.atmel_flexcom*, %struct.atmel_flexcom** %6, align 8
  %41 = getelementptr inbounds %struct.atmel_flexcom, %struct.atmel_flexcom* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ATMEL_FLEXCOM_MODE_TWI, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39, %33
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %111

48:                                               ; preds = %39
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = load i32, i32* @IORESOURCE_MEM, align 4
  %51 = call %struct.resource* @platform_get_resource(%struct.platform_device* %49, i32 %50, i32 0)
  store %struct.resource* %51, %struct.resource** %5, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.resource*, %struct.resource** %5, align 8
  %55 = call i64 @devm_ioremap_resource(%struct.TYPE_5__* %53, %struct.resource* %54)
  %56 = load %struct.atmel_flexcom*, %struct.atmel_flexcom** %6, align 8
  %57 = getelementptr inbounds %struct.atmel_flexcom, %struct.atmel_flexcom* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.atmel_flexcom*, %struct.atmel_flexcom** %6, align 8
  %59 = getelementptr inbounds %struct.atmel_flexcom, %struct.atmel_flexcom* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @IS_ERR(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %48
  %64 = load %struct.atmel_flexcom*, %struct.atmel_flexcom** %6, align 8
  %65 = getelementptr inbounds %struct.atmel_flexcom, %struct.atmel_flexcom* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @PTR_ERR(i64 %66)
  store i32 %67, i32* %2, align 4
  br label %111

68:                                               ; preds = %48
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i64 @devm_clk_get(%struct.TYPE_5__* %70, i32* null)
  %72 = load %struct.atmel_flexcom*, %struct.atmel_flexcom** %6, align 8
  %73 = getelementptr inbounds %struct.atmel_flexcom, %struct.atmel_flexcom* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.atmel_flexcom*, %struct.atmel_flexcom** %6, align 8
  %75 = getelementptr inbounds %struct.atmel_flexcom, %struct.atmel_flexcom* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @IS_ERR(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %68
  %80 = load %struct.atmel_flexcom*, %struct.atmel_flexcom** %6, align 8
  %81 = getelementptr inbounds %struct.atmel_flexcom, %struct.atmel_flexcom* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @PTR_ERR(i64 %82)
  store i32 %83, i32* %2, align 4
  br label %111

84:                                               ; preds = %68
  %85 = load %struct.atmel_flexcom*, %struct.atmel_flexcom** %6, align 8
  %86 = getelementptr inbounds %struct.atmel_flexcom, %struct.atmel_flexcom* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @clk_prepare_enable(i64 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %2, align 4
  br label %111

93:                                               ; preds = %84
  %94 = load %struct.atmel_flexcom*, %struct.atmel_flexcom** %6, align 8
  %95 = getelementptr inbounds %struct.atmel_flexcom, %struct.atmel_flexcom* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @FLEX_MR_OPMODE(i64 %96)
  %98 = load %struct.atmel_flexcom*, %struct.atmel_flexcom** %6, align 8
  %99 = getelementptr inbounds %struct.atmel_flexcom, %struct.atmel_flexcom* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @FLEX_MR, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @writel(i32 %97, i64 %102)
  %104 = load %struct.atmel_flexcom*, %struct.atmel_flexcom** %6, align 8
  %105 = getelementptr inbounds %struct.atmel_flexcom, %struct.atmel_flexcom* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @clk_disable_unprepare(i64 %106)
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = call i32 @devm_of_platform_populate(%struct.TYPE_5__* %109)
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %93, %91, %79, %63, %45, %31, %18
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.atmel_flexcom* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.atmel_flexcom*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i64 @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i64 @devm_clk_get(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @FLEX_MR_OPMODE(i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @devm_of_platform_populate(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
