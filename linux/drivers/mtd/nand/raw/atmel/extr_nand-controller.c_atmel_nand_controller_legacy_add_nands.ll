; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_controller_legacy_add_nands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_controller_legacy_add_nands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_nand_controller = type { %struct.device* }
%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.atmel_nand = type { i32, i32, %struct.gpio_desc*, %struct.TYPE_6__* }
%struct.gpio_desc = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.gpio_desc*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.gpio_desc*, i32 }
%struct.TYPE_4__ = type { i32, %struct.gpio_desc* }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@GPIOD_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to get R/B gpio (err = %ld)\0A\00", align 1
@ATMEL_NAND_GPIO_RB = common dso_local global i32 0, align 4
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to get CS gpio (err = %ld)\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to get detect gpio (err = %ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_nand_controller*)* @atmel_nand_controller_legacy_add_nands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nand_controller_legacy_add_nands(%struct.atmel_nand_controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_nand_controller*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.atmel_nand*, align 8
  %7 = alloca %struct.gpio_desc*, align 8
  %8 = alloca %struct.resource*, align 8
  store %struct.atmel_nand_controller* %0, %struct.atmel_nand_controller** %3, align 8
  %9 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %3, align 8
  %10 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call %struct.platform_device* @to_platform_device(%struct.device* %12)
  store %struct.platform_device* %13, %struct.platform_device** %5, align 8
  %14 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %3, align 8
  %15 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.atmel_nand* @devm_kzalloc(%struct.device* %16, i32 72, i32 %17)
  store %struct.atmel_nand* %18, %struct.atmel_nand** %6, align 8
  %19 = load %struct.atmel_nand*, %struct.atmel_nand** %6, align 8
  %20 = icmp ne %struct.atmel_nand* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %154

24:                                               ; preds = %1
  %25 = load %struct.atmel_nand*, %struct.atmel_nand** %6, align 8
  %26 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = call %struct.resource* @platform_get_resource(%struct.platform_device* %27, i32 %28, i32 0)
  store %struct.resource* %29, %struct.resource** %8, align 8
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load %struct.resource*, %struct.resource** %8, align 8
  %32 = call %struct.gpio_desc* @devm_ioremap_resource(%struct.device* %30, %struct.resource* %31)
  %33 = load %struct.atmel_nand*, %struct.atmel_nand** %6, align 8
  %34 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %33, i32 0, i32 3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store %struct.gpio_desc* %32, %struct.gpio_desc** %38, align 8
  %39 = load %struct.atmel_nand*, %struct.atmel_nand** %6, align 8
  %40 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %39, i32 0, i32 3
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load %struct.gpio_desc*, %struct.gpio_desc** %44, align 8
  %46 = call i64 @IS_ERR(%struct.gpio_desc* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %24
  %49 = load %struct.atmel_nand*, %struct.atmel_nand** %6, align 8
  %50 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %49, i32 0, i32 3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load %struct.gpio_desc*, %struct.gpio_desc** %54, align 8
  %56 = call i32 @PTR_ERR(%struct.gpio_desc* %55)
  store i32 %56, i32* %2, align 4
  br label %154

57:                                               ; preds = %24
  %58 = load %struct.resource*, %struct.resource** %8, align 8
  %59 = getelementptr inbounds %struct.resource, %struct.resource* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.atmel_nand*, %struct.atmel_nand** %6, align 8
  %62 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %61, i32 0, i32 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %60, i32* %66, align 8
  %67 = load %struct.atmel_nand*, %struct.atmel_nand** %6, align 8
  %68 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %67, i32 0, i32 3
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 3, i32* %71, align 8
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = load i32, i32* @GPIOD_IN, align 4
  %74 = call %struct.gpio_desc* @devm_gpiod_get_index_optional(%struct.device* %72, i32* null, i32 0, i32 %73)
  store %struct.gpio_desc* %74, %struct.gpio_desc** %7, align 8
  %75 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %76 = call i64 @IS_ERR(%struct.gpio_desc* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %57
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %81 = call i32 @PTR_ERR(%struct.gpio_desc* %80)
  %82 = call i32 @dev_err(%struct.device* %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %84 = call i32 @PTR_ERR(%struct.gpio_desc* %83)
  store i32 %84, i32* %2, align 4
  br label %154

85:                                               ; preds = %57
  %86 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %87 = icmp ne %struct.gpio_desc* %86, null
  br i1 %87, label %88, label %103

88:                                               ; preds = %85
  %89 = load i32, i32* @ATMEL_NAND_GPIO_RB, align 4
  %90 = load %struct.atmel_nand*, %struct.atmel_nand** %6, align 8
  %91 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %90, i32 0, i32 3
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i32 %89, i32* %95, align 8
  %96 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %97 = load %struct.atmel_nand*, %struct.atmel_nand** %6, align 8
  %98 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %97, i32 0, i32 3
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store %struct.gpio_desc* %96, %struct.gpio_desc** %102, align 8
  br label %103

103:                                              ; preds = %88, %85
  %104 = load %struct.device*, %struct.device** %4, align 8
  %105 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %106 = call %struct.gpio_desc* @devm_gpiod_get_index_optional(%struct.device* %104, i32* null, i32 1, i32 %105)
  store %struct.gpio_desc* %106, %struct.gpio_desc** %7, align 8
  %107 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %108 = call i64 @IS_ERR(%struct.gpio_desc* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load %struct.device*, %struct.device** %4, align 8
  %112 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %113 = call i32 @PTR_ERR(%struct.gpio_desc* %112)
  %114 = call i32 @dev_err(%struct.device* %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %116 = call i32 @PTR_ERR(%struct.gpio_desc* %115)
  store i32 %116, i32* %2, align 4
  br label %154

117:                                              ; preds = %103
  %118 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %119 = load %struct.atmel_nand*, %struct.atmel_nand** %6, align 8
  %120 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %119, i32 0, i32 3
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  store %struct.gpio_desc* %118, %struct.gpio_desc** %123, align 8
  %124 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %3, align 8
  %125 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %124, i32 0, i32 0
  %126 = load %struct.device*, %struct.device** %125, align 8
  %127 = load i32, i32* @GPIOD_IN, align 4
  %128 = call %struct.gpio_desc* @devm_gpiod_get_index_optional(%struct.device* %126, i32* null, i32 2, i32 %127)
  store %struct.gpio_desc* %128, %struct.gpio_desc** %7, align 8
  %129 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %130 = call i64 @IS_ERR(%struct.gpio_desc* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %117
  %133 = load %struct.device*, %struct.device** %4, align 8
  %134 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %135 = call i32 @PTR_ERR(%struct.gpio_desc* %134)
  %136 = call i32 @dev_err(%struct.device* %133, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %135)
  %137 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %138 = call i32 @PTR_ERR(%struct.gpio_desc* %137)
  store i32 %138, i32* %2, align 4
  br label %154

139:                                              ; preds = %117
  %140 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %141 = load %struct.atmel_nand*, %struct.atmel_nand** %6, align 8
  %142 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %141, i32 0, i32 2
  store %struct.gpio_desc* %140, %struct.gpio_desc** %142, align 8
  %143 = load %struct.atmel_nand*, %struct.atmel_nand** %6, align 8
  %144 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %143, i32 0, i32 1
  %145 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %3, align 8
  %146 = getelementptr inbounds %struct.atmel_nand_controller, %struct.atmel_nand_controller* %145, i32 0, i32 0
  %147 = load %struct.device*, %struct.device** %146, align 8
  %148 = getelementptr inbounds %struct.device, %struct.device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @nand_set_flash_node(i32* %144, i32 %149)
  %151 = load %struct.atmel_nand_controller*, %struct.atmel_nand_controller** %3, align 8
  %152 = load %struct.atmel_nand*, %struct.atmel_nand** %6, align 8
  %153 = call i32 @atmel_nand_controller_add_nand(%struct.atmel_nand_controller* %151, %struct.atmel_nand* %152)
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %139, %132, %110, %78, %48, %21
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.atmel_nand* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.gpio_desc* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_index_optional(%struct.device*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @nand_set_flash_node(i32*, i32) #1

declare dso_local i32 @atmel_nand_controller_add_nand(%struct.atmel_nand_controller*, %struct.atmel_nand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
