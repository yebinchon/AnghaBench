; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lm3533-core.c_store_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lm3533-core.c_store_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm3533 = type { i32 }
%struct.lm3533_device_attribute = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@LM3533_ATTR_TYPE_BACKLIGHT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_output(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.lm3533*, align 8
  %11 = alloca %struct.lm3533_device_attribute*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.lm3533* @dev_get_drvdata(%struct.device* %15)
  store %struct.lm3533* %16, %struct.lm3533** %10, align 8
  %17 = load %struct.device_attribute*, %struct.device_attribute** %7, align 8
  %18 = call %struct.lm3533_device_attribute* @to_lm3533_dev_attr(%struct.device_attribute* %17)
  store %struct.lm3533_device_attribute* %18, %struct.lm3533_device_attribute** %11, align 8
  %19 = load %struct.lm3533_device_attribute*, %struct.lm3533_device_attribute** %11, align 8
  %20 = getelementptr inbounds %struct.lm3533_device_attribute, %struct.lm3533_device_attribute* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @kstrtou8(i8* %24, i32 0, i32* %13)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %54

30:                                               ; preds = %4
  %31 = load %struct.lm3533_device_attribute*, %struct.lm3533_device_attribute** %11, align 8
  %32 = getelementptr inbounds %struct.lm3533_device_attribute, %struct.lm3533_device_attribute* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LM3533_ATTR_TYPE_BACKLIGHT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.lm3533*, %struct.lm3533** %10, align 8
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @lm3533_set_hvled_config(%struct.lm3533* %37, i32 %38, i32 %39)
  store i32 %40, i32* %14, align 4
  br label %46

41:                                               ; preds = %30
  %42 = load %struct.lm3533*, %struct.lm3533** %10, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @lm3533_set_lvled_config(%struct.lm3533* %42, i32 %43, i32 %44)
  store i32 %45, i32* %14, align 4
  br label %46

46:                                               ; preds = %41, %36
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %5, align 4
  br label %54

51:                                               ; preds = %46
  %52 = load i64, i64* %9, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %49, %27
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.lm3533* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.lm3533_device_attribute* @to_lm3533_dev_attr(%struct.device_attribute*) #1

declare dso_local i64 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i32 @lm3533_set_hvled_config(%struct.lm3533*, i32, i32) #1

declare dso_local i32 @lm3533_set_lvled_config(%struct.lm3533*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
