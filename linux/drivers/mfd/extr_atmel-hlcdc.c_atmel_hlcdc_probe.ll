; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_atmel-hlcdc.c_atmel_hlcdc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_atmel-hlcdc.c_atmel_hlcdc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.atmel_hlcdc_regmap = type { i8* }
%struct.atmel_hlcdc = type { i64, i8*, i8*, i8*, i8* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"periph_clk\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to get peripheral clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"sys_clk\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to get system clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"slow_clk\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"failed to get slow clock\0A\00", align 1
@atmel_hlcdc_regmap_config = common dso_local global i32 0, align 4
@atmel_hlcdc_cells = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_hlcdc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hlcdc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.atmel_hlcdc_regmap*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.atmel_hlcdc*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @devm_kzalloc(%struct.device* %10, i32 8, i32 %11)
  %13 = bitcast i8* %12 to %struct.atmel_hlcdc_regmap*
  store %struct.atmel_hlcdc_regmap* %13, %struct.atmel_hlcdc_regmap** %4, align 8
  %14 = load %struct.atmel_hlcdc_regmap*, %struct.atmel_hlcdc_regmap** %4, align 8
  %15 = icmp ne %struct.atmel_hlcdc_regmap* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %138

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kzalloc(%struct.device* %20, i32 40, i32 %21)
  %23 = bitcast i8* %22 to %struct.atmel_hlcdc*
  store %struct.atmel_hlcdc* %23, %struct.atmel_hlcdc** %6, align 8
  %24 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %6, align 8
  %25 = icmp ne %struct.atmel_hlcdc* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %138

29:                                               ; preds = %19
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  store %struct.resource* %32, %struct.resource** %7, align 8
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load %struct.resource*, %struct.resource** %7, align 8
  %35 = call i8* @devm_ioremap_resource(%struct.device* %33, %struct.resource* %34)
  %36 = load %struct.atmel_hlcdc_regmap*, %struct.atmel_hlcdc_regmap** %4, align 8
  %37 = getelementptr inbounds %struct.atmel_hlcdc_regmap, %struct.atmel_hlcdc_regmap* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.atmel_hlcdc_regmap*, %struct.atmel_hlcdc_regmap** %4, align 8
  %39 = getelementptr inbounds %struct.atmel_hlcdc_regmap, %struct.atmel_hlcdc_regmap* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %29
  %44 = load %struct.atmel_hlcdc_regmap*, %struct.atmel_hlcdc_regmap** %4, align 8
  %45 = getelementptr inbounds %struct.atmel_hlcdc_regmap, %struct.atmel_hlcdc_regmap* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @PTR_ERR(i8* %46)
  store i32 %47, i32* %2, align 4
  br label %138

48:                                               ; preds = %29
  %49 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %50 = call i64 @platform_get_irq(%struct.platform_device* %49, i32 0)
  %51 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %6, align 8
  %52 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %6, align 8
  %54 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %6, align 8
  %59 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %2, align 4
  br label %138

62:                                               ; preds = %48
  %63 = load %struct.device*, %struct.device** %5, align 8
  %64 = call i8* @devm_clk_get(%struct.device* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %6, align 8
  %66 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %65, i32 0, i32 4
  store i8* %64, i8** %66, align 8
  %67 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %6, align 8
  %68 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %67, i32 0, i32 4
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @IS_ERR(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %62
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %6, align 8
  %76 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %75, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @PTR_ERR(i8* %77)
  store i32 %78, i32* %2, align 4
  br label %138

79:                                               ; preds = %62
  %80 = load %struct.device*, %struct.device** %5, align 8
  %81 = call i8* @devm_clk_get(%struct.device* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %82 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %6, align 8
  %83 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %82, i32 0, i32 3
  store i8* %81, i8** %83, align 8
  %84 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %6, align 8
  %85 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %84, i32 0, i32 3
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @IS_ERR(i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %79
  %90 = load %struct.device*, %struct.device** %5, align 8
  %91 = call i32 @dev_err(%struct.device* %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %92 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %6, align 8
  %93 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %92, i32 0, i32 3
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @PTR_ERR(i8* %94)
  store i32 %95, i32* %2, align 4
  br label %138

96:                                               ; preds = %79
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = call i8* @devm_clk_get(%struct.device* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %99 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %6, align 8
  %100 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %99, i32 0, i32 2
  store i8* %98, i8** %100, align 8
  %101 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %6, align 8
  %102 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = call i64 @IS_ERR(i8* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %96
  %107 = load %struct.device*, %struct.device** %5, align 8
  %108 = call i32 @dev_err(%struct.device* %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %109 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %6, align 8
  %110 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @PTR_ERR(i8* %111)
  store i32 %112, i32* %2, align 4
  br label %138

113:                                              ; preds = %96
  %114 = load %struct.device*, %struct.device** %5, align 8
  %115 = load %struct.atmel_hlcdc_regmap*, %struct.atmel_hlcdc_regmap** %4, align 8
  %116 = call i8* @devm_regmap_init(%struct.device* %114, i32* null, %struct.atmel_hlcdc_regmap* %115, i32* @atmel_hlcdc_regmap_config)
  %117 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %6, align 8
  %118 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  %119 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %6, align 8
  %120 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = call i64 @IS_ERR(i8* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %113
  %125 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %6, align 8
  %126 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %125, i32 0, i32 1
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @PTR_ERR(i8* %127)
  store i32 %128, i32* %2, align 4
  br label %138

129:                                              ; preds = %113
  %130 = load %struct.device*, %struct.device** %5, align 8
  %131 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %6, align 8
  %132 = call i32 @dev_set_drvdata(%struct.device* %130, %struct.atmel_hlcdc* %131)
  %133 = load %struct.device*, %struct.device** %5, align 8
  %134 = load i32, i32* @atmel_hlcdc_cells, align 4
  %135 = load i32, i32* @atmel_hlcdc_cells, align 4
  %136 = call i32 @ARRAY_SIZE(i32 %135)
  %137 = call i32 @devm_mfd_add_devices(%struct.device* %133, i32 -1, i32 %134, i32 %136, i32* null, i32 0, i32* null)
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %129, %124, %106, %89, %72, %57, %43, %26, %16
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @devm_regmap_init(%struct.device*, i32*, %struct.atmel_hlcdc_regmap*, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.atmel_hlcdc*) #1

declare dso_local i32 @devm_mfd_add_devices(%struct.device*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
