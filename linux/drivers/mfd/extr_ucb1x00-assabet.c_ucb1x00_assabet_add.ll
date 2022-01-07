; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-assabet.c_ucb1x00_assabet_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-assabet.c_ucb1x00_assabet_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_keys_button = type { i32, i32, i32, i8*, %struct.gpio_keys_button*, i32, i64, i64 }
%struct.ucb1x00_dev = type { %struct.platform_device*, %struct.ucb1x00* }
%struct.platform_device = type { i32 }
%struct.ucb1x00 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.gpio_keys_platform_data = type { i32, i32, i32, i8*, %struct.gpio_keys_platform_data*, i32, i64, i64 }

@ucb1x00_assabet_add.buttons = internal global [6 x %struct.gpio_keys_button] zeroinitializer, align 16
@BTN_0 = common dso_local global i64 0, align 8
@EV_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ucb1x00\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"gpio-keys\00", align 1
@dev_attr_vbatt = common dso_local global i32 0, align 4
@dev_attr_vcharger = common dso_local global i32 0, align 4
@dev_attr_batt_temp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucb1x00_dev*)* @ucb1x00_assabet_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_assabet_add(%struct.ucb1x00_dev* %0) #0 {
  %2 = alloca %struct.ucb1x00_dev*, align 8
  %3 = alloca %struct.ucb1x00*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.gpio_keys_platform_data, align 8
  %6 = alloca i32, align 4
  store %struct.ucb1x00_dev* %0, %struct.ucb1x00_dev** %2, align 8
  %7 = load %struct.ucb1x00_dev*, %struct.ucb1x00_dev** %2, align 8
  %8 = getelementptr inbounds %struct.ucb1x00_dev, %struct.ucb1x00_dev* %7, i32 0, i32 1
  %9 = load %struct.ucb1x00*, %struct.ucb1x00** %8, align 8
  store %struct.ucb1x00* %9, %struct.ucb1x00** %3, align 8
  %10 = call i32 @memset(%struct.gpio_keys_platform_data* bitcast ([6 x %struct.gpio_keys_button]* @ucb1x00_assabet_add.buttons to %struct.gpio_keys_platform_data*), i32 0, i32 336)
  %11 = call i32 @memset(%struct.gpio_keys_platform_data* %5, i32 0, i32 56)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %45, %1
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @ARRAY_SIZE(%struct.gpio_keys_platform_data* bitcast ([6 x %struct.gpio_keys_button]* @ucb1x00_assabet_add.buttons to %struct.gpio_keys_platform_data*))
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = load i64, i64* @BTN_0, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [6 x %struct.gpio_keys_button], [6 x %struct.gpio_keys_button]* @ucb1x00_assabet_add.buttons, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %23, i32 0, i32 7
  store i64 %20, i64* %24, align 8
  %25 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %26 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = add nsw i64 %28, %30
  %32 = load i32, i32* %6, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [6 x %struct.gpio_keys_button], [6 x %struct.gpio_keys_button]* @ucb1x00_assabet_add.buttons, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %34, i32 0, i32 6
  store i64 %31, i64* %35, align 8
  %36 = load i32, i32* @EV_KEY, align 4
  %37 = load i32, i32* %6, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [6 x %struct.gpio_keys_button], [6 x %struct.gpio_keys_button]* @ucb1x00_assabet_add.buttons, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %39, i32 0, i32 5
  store i32 %36, i32* %40, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [6 x %struct.gpio_keys_button], [6 x %struct.gpio_keys_button]* @ucb1x00_assabet_add.buttons, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.gpio_keys_button, %struct.gpio_keys_button* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  br label %45

45:                                               ; preds = %16
  %46 = load i32, i32* %6, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %12

48:                                               ; preds = %12
  %49 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %5, i32 0, i32 4
  store %struct.gpio_keys_platform_data* bitcast ([6 x %struct.gpio_keys_button]* @ucb1x00_assabet_add.buttons to %struct.gpio_keys_platform_data*), %struct.gpio_keys_platform_data** %49, align 8
  %50 = call i32 @ARRAY_SIZE(%struct.gpio_keys_platform_data* bitcast ([6 x %struct.gpio_keys_button]* @ucb1x00_assabet_add.buttons to %struct.gpio_keys_platform_data*))
  %51 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %5, i32 0, i32 1
  store i32 %50, i32* %51, align 4
  %52 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %5, i32 0, i32 2
  store i32 50, i32* %52, align 8
  %53 = getelementptr inbounds %struct.gpio_keys_platform_data, %struct.gpio_keys_platform_data* %5, i32 0, i32 3
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %53, align 8
  %54 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %55 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %54, i32 0, i32 0
  %56 = call %struct.platform_device* @platform_device_register_data(i32* %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 -1, %struct.gpio_keys_platform_data* %5, i32 56)
  store %struct.platform_device* %56, %struct.platform_device** %4, align 8
  %57 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %58 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %57, i32 0, i32 0
  %59 = call i32 @device_create_file(i32* %58, i32* @dev_attr_vbatt)
  %60 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %61 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %60, i32 0, i32 0
  %62 = call i32 @device_create_file(i32* %61, i32* @dev_attr_vcharger)
  %63 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %64 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %63, i32 0, i32 0
  %65 = call i32 @device_create_file(i32* %64, i32* @dev_attr_batt_temp)
  %66 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %67 = load %struct.ucb1x00_dev*, %struct.ucb1x00_dev** %2, align 8
  %68 = getelementptr inbounds %struct.ucb1x00_dev, %struct.ucb1x00_dev* %67, i32 0, i32 0
  store %struct.platform_device* %66, %struct.platform_device** %68, align 8
  ret i32 0
}

declare dso_local i32 @memset(%struct.gpio_keys_platform_data*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.gpio_keys_platform_data*) #1

declare dso_local %struct.platform_device* @platform_device_register_data(i32*, i8*, i32, %struct.gpio_keys_platform_data*, i32) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
