; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_gpio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_gpio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmc_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@DEVICE_NAME = common dso_local global i32 0, align 4
@gpmc_nr_waitpins = common dso_local global i32 0, align 4
@gpmc_gpio_get_direction = common dso_local global i32 0, align 4
@gpmc_gpio_direction_input = common dso_local global i32 0, align 4
@gpmc_gpio_direction_output = common dso_local global i32 0, align 4
@gpmc_gpio_set = common dso_local global i32 0, align 4
@gpmc_gpio_get = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"could not register gpio chip: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpmc_device*)* @gpmc_gpio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmc_gpio_init(%struct.gpmc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpmc_device*, align 8
  %4 = alloca i32, align 4
  store %struct.gpmc_device* %0, %struct.gpmc_device** %3, align 8
  %5 = load %struct.gpmc_device*, %struct.gpmc_device** %3, align 8
  %6 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.gpmc_device*, %struct.gpmc_device** %3, align 8
  %9 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 9
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @THIS_MODULE, align 4
  %12 = load %struct.gpmc_device*, %struct.gpmc_device** %3, align 8
  %13 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 8
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @DEVICE_NAME, align 4
  %16 = load %struct.gpmc_device*, %struct.gpmc_device** %3, align 8
  %17 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 7
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @gpmc_nr_waitpins, align 4
  %20 = load %struct.gpmc_device*, %struct.gpmc_device** %3, align 8
  %21 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 6
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @gpmc_gpio_get_direction, align 4
  %24 = load %struct.gpmc_device*, %struct.gpmc_device** %3, align 8
  %25 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 5
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @gpmc_gpio_direction_input, align 4
  %28 = load %struct.gpmc_device*, %struct.gpmc_device** %3, align 8
  %29 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @gpmc_gpio_direction_output, align 4
  %32 = load %struct.gpmc_device*, %struct.gpmc_device** %3, align 8
  %33 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @gpmc_gpio_set, align 4
  %36 = load %struct.gpmc_device*, %struct.gpmc_device** %3, align 8
  %37 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @gpmc_gpio_get, align 4
  %40 = load %struct.gpmc_device*, %struct.gpmc_device** %3, align 8
  %41 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.gpmc_device*, %struct.gpmc_device** %3, align 8
  %44 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 4
  %46 = load %struct.gpmc_device*, %struct.gpmc_device** %3, align 8
  %47 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.gpmc_device*, %struct.gpmc_device** %3, align 8
  %50 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %49, i32 0, i32 1
  %51 = call i32 @devm_gpiochip_add_data(i32 %48, %struct.TYPE_2__* %50, i32* null)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %1
  %55 = load %struct.gpmc_device*, %struct.gpmc_device** %3, align 8
  %56 = getelementptr inbounds %struct.gpmc_device, %struct.gpmc_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %54
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @devm_gpiochip_add_data(i32, %struct.TYPE_2__*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
