; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_slot-gpio.c_mmc_gpiod_request_ro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_slot-gpio.c_mmc_gpiod_request_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mmc_gpio* }
%struct.mmc_gpio = type { %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }

@GPIOD_IN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_gpiod_request_ro(%struct.mmc_host* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_host*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mmc_gpio*, align 8
  %13 = alloca %struct.gpio_desc*, align 8
  %14 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %16 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mmc_gpio*, %struct.mmc_gpio** %17, align 8
  store %struct.mmc_gpio* %18, %struct.mmc_gpio** %12, align 8
  %19 = load %struct.mmc_host*, %struct.mmc_host** %7, align 8
  %20 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @GPIOD_IN, align 4
  %25 = call %struct.gpio_desc* @devm_gpiod_get_index(i32 %21, i8* %22, i32 %23, i32 %24)
  store %struct.gpio_desc* %25, %struct.gpio_desc** %13, align 8
  %26 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %27 = call i64 @IS_ERR(%struct.gpio_desc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %5
  %30 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %31 = call i32 @PTR_ERR(%struct.gpio_desc* %30)
  store i32 %31, i32* %6, align 4
  br label %58

32:                                               ; preds = %5
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @gpiod_set_debounce(%struct.gpio_desc* %36, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %14, align 4
  store i32 %42, i32* %6, align 4
  br label %58

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i32*, i32** %11, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %49 = call i32 @gpiod_is_active_low(%struct.gpio_desc* %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %44
  %55 = load %struct.gpio_desc*, %struct.gpio_desc** %13, align 8
  %56 = load %struct.mmc_gpio*, %struct.mmc_gpio** %12, align 8
  %57 = getelementptr inbounds %struct.mmc_gpio, %struct.mmc_gpio* %56, i32 0, i32 0
  store %struct.gpio_desc* %55, %struct.gpio_desc** %57, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %54, %41, %29
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.gpio_desc* @devm_gpiod_get_index(i32, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @gpiod_set_debounce(%struct.gpio_desc*, i32) #1

declare dso_local i32 @gpiod_is_active_low(%struct.gpio_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
