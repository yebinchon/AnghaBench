; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_secocec_acpi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_secocec_acpi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secocec_data = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.gpio_desc = type { i32 }

@GPIOF_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Cannot request interrupt gpio\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Cannot find valid irq\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"irq-gpio is bound to IRQ %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.secocec_data*)* @secocec_acpi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secocec_acpi_probe(%struct.secocec_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.secocec_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.secocec_data* %0, %struct.secocec_data** %3, align 8
  %7 = load %struct.secocec_data*, %struct.secocec_data** %3, align 8
  %8 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %7, i32 0, i32 1
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = load i32, i32* @GPIOF_IN, align 4
  %12 = call %struct.gpio_desc* @devm_gpiod_get(%struct.device* %10, i32* null, i32 %11)
  store %struct.gpio_desc* %12, %struct.gpio_desc** %5, align 8
  %13 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %14 = call i64 @IS_ERR(%struct.gpio_desc* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @dev_err(%struct.device* %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %20 = call i32 @PTR_ERR(%struct.gpio_desc* %19)
  store i32 %20, i32* %2, align 4
  br label %38

21:                                               ; preds = %1
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %23 = call i32 @gpiod_to_irq(%struct.gpio_desc* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %38

31:                                               ; preds = %21
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @dev_dbg(%struct.device* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.secocec_data*, %struct.secocec_data** %3, align 8
  %37 = getelementptr inbounds %struct.secocec_data, %struct.secocec_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %31, %26, %16
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.gpio_desc* @devm_gpiod_get(%struct.device*, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @gpiod_to_irq(%struct.gpio_desc*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
