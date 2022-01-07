; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_register_chip_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_htc-i2cpld.c_htcpld_register_chip_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.htcpld_data = type { %struct.htcpld_chip* }
%struct.htcpld_chip = type { %struct.gpio_chip, %struct.gpio_chip }
%struct.gpio_chip = type { i8*, i32, i32, i32, i32*, i32*, i32*, i8*, i8*, %struct.device* }
%struct.htcpld_core_platform_data = type { %struct.htcpld_chip_platform_data* }
%struct.htcpld_chip_platform_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"htcpld-out\00", align 1
@THIS_MODULE = common dso_local global i8* null, align 8
@htcpld_chip_get = common dso_local global i8* null, align 8
@htcpld_chip_set = common dso_local global i32* null, align 8
@htcpld_direction_output = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"htcpld-in\00", align 1
@htcpld_direction_input = common dso_local global i32* null, align 8
@htcpld_chip_to_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Unable to register output GPIOs for 0x%x: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Unable to register input GPIOs for 0x%x: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @htcpld_register_chip_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htcpld_register_chip_gpio(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.htcpld_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.htcpld_core_platform_data*, align 8
  %9 = alloca %struct.htcpld_chip*, align 8
  %10 = alloca %struct.htcpld_chip_platform_data*, align 8
  %11 = alloca %struct.gpio_chip*, align 8
  %12 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %7, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call %struct.htcpld_core_platform_data* @dev_get_platdata(%struct.device* %15)
  store %struct.htcpld_core_platform_data* %16, %struct.htcpld_core_platform_data** %8, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %18 = call %struct.htcpld_data* @platform_get_drvdata(%struct.platform_device* %17)
  store %struct.htcpld_data* %18, %struct.htcpld_data** %6, align 8
  %19 = load %struct.htcpld_data*, %struct.htcpld_data** %6, align 8
  %20 = getelementptr inbounds %struct.htcpld_data, %struct.htcpld_data* %19, i32 0, i32 0
  %21 = load %struct.htcpld_chip*, %struct.htcpld_chip** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %21, i64 %23
  store %struct.htcpld_chip* %24, %struct.htcpld_chip** %9, align 8
  %25 = load %struct.htcpld_core_platform_data*, %struct.htcpld_core_platform_data** %8, align 8
  %26 = getelementptr inbounds %struct.htcpld_core_platform_data, %struct.htcpld_core_platform_data* %25, i32 0, i32 0
  %27 = load %struct.htcpld_chip_platform_data*, %struct.htcpld_chip_platform_data** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.htcpld_chip_platform_data, %struct.htcpld_chip_platform_data* %27, i64 %29
  store %struct.htcpld_chip_platform_data* %30, %struct.htcpld_chip_platform_data** %10, align 8
  %31 = load %struct.htcpld_chip*, %struct.htcpld_chip** %9, align 8
  %32 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %31, i32 0, i32 0
  store %struct.gpio_chip* %32, %struct.gpio_chip** %11, align 8
  %33 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %34 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %34, align 8
  %35 = load %struct.device*, %struct.device** %7, align 8
  %36 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %37 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %36, i32 0, i32 9
  store %struct.device* %35, %struct.device** %37, align 8
  %38 = load i8*, i8** @THIS_MODULE, align 8
  %39 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %40 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @htcpld_chip_get, align 8
  %42 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %43 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  %44 = load i32*, i32** @htcpld_chip_set, align 8
  %45 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %46 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %45, i32 0, i32 6
  store i32* %44, i32** %46, align 8
  %47 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %48 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %47, i32 0, i32 5
  store i32* null, i32** %48, align 8
  %49 = load i32*, i32** @htcpld_direction_output, align 8
  %50 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %51 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %50, i32 0, i32 4
  store i32* %49, i32** %51, align 8
  %52 = load %struct.htcpld_chip_platform_data*, %struct.htcpld_chip_platform_data** %10, align 8
  %53 = getelementptr inbounds %struct.htcpld_chip_platform_data, %struct.htcpld_chip_platform_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %56 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.htcpld_chip_platform_data*, %struct.htcpld_chip_platform_data** %10, align 8
  %58 = getelementptr inbounds %struct.htcpld_chip_platform_data, %struct.htcpld_chip_platform_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %61 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.htcpld_chip*, %struct.htcpld_chip** %9, align 8
  %63 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %62, i32 0, i32 1
  store %struct.gpio_chip* %63, %struct.gpio_chip** %11, align 8
  %64 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %65 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %64, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8** %65, align 8
  %66 = load %struct.device*, %struct.device** %7, align 8
  %67 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %68 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %67, i32 0, i32 9
  store %struct.device* %66, %struct.device** %68, align 8
  %69 = load i8*, i8** @THIS_MODULE, align 8
  %70 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %71 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %70, i32 0, i32 8
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @htcpld_chip_get, align 8
  %73 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %74 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %73, i32 0, i32 7
  store i8* %72, i8** %74, align 8
  %75 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %76 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %75, i32 0, i32 6
  store i32* null, i32** %76, align 8
  %77 = load i32*, i32** @htcpld_direction_input, align 8
  %78 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %79 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %78, i32 0, i32 5
  store i32* %77, i32** %79, align 8
  %80 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %81 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %80, i32 0, i32 4
  store i32* null, i32** %81, align 8
  %82 = load i32, i32* @htcpld_chip_to_irq, align 4
  %83 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %84 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.htcpld_chip_platform_data*, %struct.htcpld_chip_platform_data** %10, align 8
  %86 = getelementptr inbounds %struct.htcpld_chip_platform_data, %struct.htcpld_chip_platform_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %89 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.htcpld_chip_platform_data*, %struct.htcpld_chip_platform_data** %10, align 8
  %91 = getelementptr inbounds %struct.htcpld_chip_platform_data, %struct.htcpld_chip_platform_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.gpio_chip*, %struct.gpio_chip** %11, align 8
  %94 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load %struct.htcpld_chip*, %struct.htcpld_chip** %9, align 8
  %96 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %95, i32 0, i32 0
  %97 = load %struct.htcpld_chip*, %struct.htcpld_chip** %9, align 8
  %98 = call i32 @gpiochip_add_data(%struct.gpio_chip* %96, %struct.htcpld_chip* %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %2
  %102 = load %struct.device*, %struct.device** %7, align 8
  %103 = load %struct.htcpld_chip_platform_data*, %struct.htcpld_chip_platform_data** %10, align 8
  %104 = getelementptr inbounds %struct.htcpld_chip_platform_data, %struct.htcpld_chip_platform_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @dev_warn(%struct.device* %102, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %106)
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %3, align 4
  br label %128

109:                                              ; preds = %2
  %110 = load %struct.htcpld_chip*, %struct.htcpld_chip** %9, align 8
  %111 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %110, i32 0, i32 1
  %112 = load %struct.htcpld_chip*, %struct.htcpld_chip** %9, align 8
  %113 = call i32 @gpiochip_add_data(%struct.gpio_chip* %111, %struct.htcpld_chip* %112)
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %109
  %117 = load %struct.device*, %struct.device** %7, align 8
  %118 = load %struct.htcpld_chip_platform_data*, %struct.htcpld_chip_platform_data** %10, align 8
  %119 = getelementptr inbounds %struct.htcpld_chip_platform_data, %struct.htcpld_chip_platform_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @dev_warn(%struct.device* %117, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load %struct.htcpld_chip*, %struct.htcpld_chip** %9, align 8
  %124 = getelementptr inbounds %struct.htcpld_chip, %struct.htcpld_chip* %123, i32 0, i32 0
  %125 = call i32 @gpiochip_remove(%struct.gpio_chip* %124)
  %126 = load i32, i32* %12, align 4
  store i32 %126, i32* %3, align 4
  br label %128

127:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %127, %116, %101
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.htcpld_core_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.htcpld_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @gpiochip_add_data(%struct.gpio_chip*, %struct.htcpld_chip*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @gpiochip_remove(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
