; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_madera-core.c_madera_get_reset_gpio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_madera-core.c_madera_get_reset_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.madera = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to request /RESET: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Running without reset GPIO is not recommended\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.madera*)* @madera_get_reset_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @madera_get_reset_gpio(%struct.madera* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.madera*, align 8
  %4 = alloca %struct.gpio_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.madera* %0, %struct.madera** %3, align 8
  %6 = load %struct.madera*, %struct.madera** %3, align 8
  %7 = getelementptr inbounds %struct.madera, %struct.madera* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %10 = icmp ne %struct.gpio_desc* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

12:                                               ; preds = %1
  %13 = load %struct.madera*, %struct.madera** %3, align 8
  %14 = getelementptr inbounds %struct.madera, %struct.madera* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %17 = call %struct.gpio_desc* @devm_gpiod_get_optional(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %16)
  store %struct.gpio_desc* %17, %struct.gpio_desc** %4, align 8
  %18 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %19 = call i64 @IS_ERR(%struct.gpio_desc* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %12
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %23 = call i32 @PTR_ERR(%struct.gpio_desc* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @EPROBE_DEFER, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.madera*, %struct.madera** %3, align 8
  %30 = getelementptr inbounds %struct.madera, %struct.madera* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %21
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %49

36:                                               ; preds = %12
  %37 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %38 = icmp ne %struct.gpio_desc* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = load %struct.madera*, %struct.madera** %3, align 8
  %41 = getelementptr inbounds %struct.madera, %struct.madera* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_warn(i32 %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %36
  %45 = load %struct.gpio_desc*, %struct.gpio_desc** %4, align 8
  %46 = load %struct.madera*, %struct.madera** %3, align 8
  %47 = getelementptr inbounds %struct.madera, %struct.madera* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store %struct.gpio_desc* %45, %struct.gpio_desc** %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %44, %34, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.gpio_desc* @devm_gpiod_get_optional(i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
