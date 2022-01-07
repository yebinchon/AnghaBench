; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_led.c_p54_register_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_led.c_p54_register_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { %struct.TYPE_3__*, %struct.p54_led_dev* }
%struct.TYPE_3__ = type { i32 }
%struct.p54_led_dev = type { i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"p54-%s::%s\00", align 1
@p54_led_brightness_set = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to register %s LED.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p54_common*, i32, i8*, i8*)* @p54_register_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_register_led(%struct.p54_common* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.p54_common*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.p54_led_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %13 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %12, i32 0, i32 1
  %14 = load %struct.p54_led_dev*, %struct.p54_led_dev** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.p54_led_dev, %struct.p54_led_dev* %14, i64 %16
  store %struct.p54_led_dev* %17, %struct.p54_led_dev** %10, align 8
  %18 = load %struct.p54_led_dev*, %struct.p54_led_dev** %10, align 8
  %19 = getelementptr inbounds %struct.p54_led_dev, %struct.p54_led_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @EEXIST, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %83

25:                                               ; preds = %4
  %26 = load %struct.p54_led_dev*, %struct.p54_led_dev** %10, align 8
  %27 = getelementptr inbounds %struct.p54_led_dev, %struct.p54_led_dev* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %30 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @wiphy_name(i32 %33)
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @snprintf(i32 %28, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %34, i8* %35)
  %37 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %38 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load %struct.p54_led_dev*, %struct.p54_led_dev** %10, align 8
  %41 = getelementptr inbounds %struct.p54_led_dev, %struct.p54_led_dev* %40, i32 0, i32 4
  store %struct.TYPE_3__* %39, %struct.TYPE_3__** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.p54_led_dev*, %struct.p54_led_dev** %10, align 8
  %44 = getelementptr inbounds %struct.p54_led_dev, %struct.p54_led_dev* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.p54_led_dev*, %struct.p54_led_dev** %10, align 8
  %46 = getelementptr inbounds %struct.p54_led_dev, %struct.p54_led_dev* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.p54_led_dev*, %struct.p54_led_dev** %10, align 8
  %49 = getelementptr inbounds %struct.p54_led_dev, %struct.p54_led_dev* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = load %struct.p54_led_dev*, %struct.p54_led_dev** %10, align 8
  %53 = getelementptr inbounds %struct.p54_led_dev, %struct.p54_led_dev* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load i32, i32* @p54_led_brightness_set, align 4
  %56 = load %struct.p54_led_dev*, %struct.p54_led_dev** %10, align 8
  %57 = getelementptr inbounds %struct.p54_led_dev, %struct.p54_led_dev* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 8
  %59 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %60 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @wiphy_dev(i32 %63)
  %65 = load %struct.p54_led_dev*, %struct.p54_led_dev** %10, align 8
  %66 = getelementptr inbounds %struct.p54_led_dev, %struct.p54_led_dev* %65, i32 0, i32 2
  %67 = call i32 @led_classdev_register(i32 %64, %struct.TYPE_4__* %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %25
  %71 = load %struct.p54_common*, %struct.p54_common** %6, align 8
  %72 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @wiphy_err(i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  br label %81

78:                                               ; preds = %25
  %79 = load %struct.p54_led_dev*, %struct.p54_led_dev** %10, align 8
  %80 = getelementptr inbounds %struct.p54_led_dev, %struct.p54_led_dev* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  br label %81

81:                                               ; preds = %78, %70
  %82 = load i32, i32* %11, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %22
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i8* @wiphy_name(i32) #1

declare dso_local i32 @led_classdev_register(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @wiphy_dev(i32) #1

declare dso_local i32 @wiphy_err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
