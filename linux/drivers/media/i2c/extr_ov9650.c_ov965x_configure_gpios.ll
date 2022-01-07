; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_configure_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov9650.c_ov965x_configure_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov965x = type { i8**, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"powerdown\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@GPIO_PWDN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"can't get %s GPIO\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIO_RST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov965x*)* @ov965x_configure_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov965x_configure_gpios(%struct.ov965x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ov965x*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.ov965x* %0, %struct.ov965x** %3, align 8
  %5 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %6 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.device* @regmap_get_device(i32 %7)
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %11 = call i8* @devm_gpiod_get_optional(%struct.device* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %13 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %12, i32 0, i32 0
  %14 = load i8**, i8*** %13, align 8
  %15 = load i64, i64* @GPIO_PWDN, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  store i8* %11, i8** %16, align 8
  %17 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %18 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %17, i32 0, i32 0
  %19 = load i8**, i8*** %18, align 8
  %20 = load i64, i64* @GPIO_PWDN, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @IS_ERR(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i32 @dev_info(%struct.device* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %29 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = load i64, i64* @GPIO_PWDN, align 8
  %32 = getelementptr inbounds i8*, i8** %30, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @PTR_ERR(i8* %33)
  store i32 %34, i32* %2, align 4
  br label %63

35:                                               ; preds = %1
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %38 = call i8* @devm_gpiod_get_optional(%struct.device* %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %40 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %39, i32 0, i32 0
  %41 = load i8**, i8*** %40, align 8
  %42 = load i64, i64* @GPIO_RST, align 8
  %43 = getelementptr inbounds i8*, i8** %41, i64 %42
  store i8* %38, i8** %43, align 8
  %44 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %45 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* @GPIO_RST, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i64 @IS_ERR(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %35
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @dev_info(%struct.device* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.ov965x*, %struct.ov965x** %3, align 8
  %56 = getelementptr inbounds %struct.ov965x, %struct.ov965x* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = load i64, i64* @GPIO_RST, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @PTR_ERR(i8* %60)
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %52, %25
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
