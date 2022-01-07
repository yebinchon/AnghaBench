; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_configure_gpios_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_configure_gpios_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov965x = type { i32*, i32, i32 }
%struct.ov9650_platform_data = type { i32, i32 }
%struct.device = type { i32 }

@NUM_GPIOS = common dso_local global i32 0, align 4
@GPIO_PWDN = common dso_local global i64 0, align 8
@GPIO_RST = common dso_local global i64 0, align 8
@GPIOF_OUT_INIT_HIGH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"OV965X\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"set gpio %d to 1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov965x*, %struct.ov9650_platform_data*)* @ov965x_configure_gpios_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov965x_configure_gpios_pdata(%struct.ov965x* %0, %struct.ov9650_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ov965x*, align 8
  %5 = alloca %struct.ov9650_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ov965x* %0, %struct.ov965x** %4, align 8
  store %struct.ov9650_platform_data* %1, %struct.ov9650_platform_data** %5, align 8
  %13 = load i32, i32* @NUM_GPIOS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %18 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.device* @regmap_get_device(i32 %19)
  store %struct.device* %20, %struct.device** %10, align 8
  %21 = load %struct.ov9650_platform_data*, %struct.ov9650_platform_data** %5, align 8
  %22 = getelementptr inbounds %struct.ov9650_platform_data, %struct.ov9650_platform_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @GPIO_PWDN, align 8
  %25 = getelementptr inbounds i32, i32* %16, i64 %24
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ov9650_platform_data*, %struct.ov9650_platform_data** %5, align 8
  %27 = getelementptr inbounds %struct.ov9650_platform_data, %struct.ov9650_platform_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* @GPIO_RST, align 8
  %30 = getelementptr inbounds i32, i32* %16, i64 %29
  store i32 %28, i32* %30, align 4
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %74, %2
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %34 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @ARRAY_SIZE(i32* %35)
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %77

38:                                               ; preds = %31
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %16, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @gpio_is_valid(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %38
  br label %74

47:                                               ; preds = %38
  %48 = load %struct.device*, %struct.device** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @GPIOF_OUT_INIT_HIGH, align 4
  %51 = call i32 @devm_gpio_request_one(%struct.device* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %78

56:                                               ; preds = %47
  %57 = load i32, i32* @debug, align 4
  %58 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %59 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %58, i32 0, i32 1
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @v4l2_dbg(i32 1, i32 %57, i32* %59, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @gpio_set_value_cansleep(i32 %62, i32 1)
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @gpio_export(i32 %64, i32 0)
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @gpio_to_desc(i32 %66)
  %68 = load %struct.ov965x*, %struct.ov965x** %4, align 8
  %69 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  br label %74

74:                                               ; preds = %56, %46
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %31

77:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %78

78:                                               ; preds = %77, %54
  %79 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %79)
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.device* @regmap_get_device(i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @gpio_is_valid(i32) #2

declare dso_local i32 @devm_gpio_request_one(%struct.device*, i32, i32, i8*) #2

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32) #2

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #2

declare dso_local i32 @gpio_export(i32, i32) #2

declare dso_local i32 @gpio_to_desc(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
