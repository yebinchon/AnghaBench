; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_vip_gpio_reserve.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_vip_gpio_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to allocate pin %d (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to set direction for pin %d (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to export pin %d (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32, i8*)* @vip_gpio_reserve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vip_gpio_reserve(%struct.device* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @gpio_is_valid(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %5, align 4
  br label %58

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @gpio_request(i32 %19, i8* %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @dev_err(%struct.device* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %27)
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %58

30:                                               ; preds = %18
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @gpio_direction_output(i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %38, i8* %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @gpio_free(i32 %41)
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %58

44:                                               ; preds = %30
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @gpio_export(i32 %45, i32 0)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @dev_err(%struct.device* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %51, i8* %52)
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @gpio_free(i32 %54)
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %58

57:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %57, %49, %36, %24, %16
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i8*) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @gpio_export(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
