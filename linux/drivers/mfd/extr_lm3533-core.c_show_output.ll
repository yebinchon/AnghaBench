; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lm3533-core.c_show_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lm3533-core.c_show_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.lm3533 = type { i32 }
%struct.lm3533_device_attribute = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LM3533_ATTR_TYPE_BACKLIGHT = common dso_local global i64 0, align 8
@LM3533_REG_OUTPUT_CONF1 = common dso_local global i32 0, align 4
@LM3533_BL_ID_MASK = common dso_local global i32 0, align 4
@LM3533_REG_OUTPUT_CONF2 = common dso_local global i32 0, align 4
@LM3533_LED_ID_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_output(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.lm3533*, align 8
  %9 = alloca %struct.lm3533_device_attribute*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call %struct.lm3533* @dev_get_drvdata(%struct.device* %16)
  store %struct.lm3533* %17, %struct.lm3533** %8, align 8
  %18 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %19 = call %struct.lm3533_device_attribute* @to_lm3533_dev_attr(%struct.device_attribute* %18)
  store %struct.lm3533_device_attribute* %19, %struct.lm3533_device_attribute** %9, align 8
  %20 = load %struct.lm3533_device_attribute*, %struct.lm3533_device_attribute** %9, align 8
  %21 = getelementptr inbounds %struct.lm3533_device_attribute, %struct.lm3533_device_attribute* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %10, align 4
  %25 = load %struct.lm3533_device_attribute*, %struct.lm3533_device_attribute** %9, align 8
  %26 = getelementptr inbounds %struct.lm3533_device_attribute, %struct.lm3533_device_attribute* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LM3533_ATTR_TYPE_BACKLIGHT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load i32, i32* @LM3533_REG_OUTPUT_CONF1, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* @LM3533_BL_ID_MASK, align 4
  %35 = load i32, i32* %14, align 4
  %36 = shl i32 %34, %35
  store i32 %36, i32* %13, align 4
  br label %53

37:                                               ; preds = %3
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* @LM3533_REG_OUTPUT_CONF1, align 4
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = mul nsw i32 2, %42
  store i32 %43, i32* %14, align 4
  br label %49

44:                                               ; preds = %37
  %45 = load i32, i32* @LM3533_REG_OUTPUT_CONF2, align 4
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %46, 4
  %48 = mul nsw i32 2, %47
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32, i32* @LM3533_LED_ID_MASK, align 4
  %51 = load i32, i32* %14, align 4
  %52 = shl i32 %50, %51
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %49, %30
  %54 = load %struct.lm3533*, %struct.lm3533** %8, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @lm3533_read(%struct.lm3533* %54, i32 %55, i32* %12)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %4, align 4
  br label %71

61:                                               ; preds = %53
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* %14, align 4
  %66 = ashr i32 %64, %65
  store i32 %66, i32* %12, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = load i32, i32* @PAGE_SIZE, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @scnprintf(i8* %67, i32 %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %69)
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %61, %59
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.lm3533* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.lm3533_device_attribute* @to_lm3533_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @lm3533_read(%struct.lm3533*, i32, i32*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
