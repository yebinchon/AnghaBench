; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_via_sensor_power_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_via-camera.c_via_sensor_power_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_camera = type { i8*, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"VGPIO3\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"VGPIO2\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Unable to find GPIO lines\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"viafb-camera\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Unable to request power GPIO\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Unable to request reset GPIO\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.via_camera*)* @via_sensor_power_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_sensor_power_setup(%struct.via_camera* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.via_camera*, align 8
  %4 = alloca i32, align 4
  store %struct.via_camera* %0, %struct.via_camera** %3, align 8
  %5 = call i8* @viafb_gpio_lookup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %7 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %6, i32 0, i32 1
  store i8* %5, i8** %7, align 8
  %8 = call i8* @viafb_gpio_lookup(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %10 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %12 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @gpio_is_valid(i8* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %18 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @gpio_is_valid(i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %24 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @dev_err(i32* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %71

30:                                               ; preds = %16
  %31 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %32 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @gpio_request(i8* %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %39 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %71

44:                                               ; preds = %30
  %45 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %46 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @gpio_request(i8* %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %53 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %52, i32 0, i32 2
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %57 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %58 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @gpio_free(i8* %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %71

62:                                               ; preds = %44
  %63 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %64 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @gpio_direction_output(i8* %65, i32 0)
  %67 = load %struct.via_camera*, %struct.via_camera** %3, align 8
  %68 = getelementptr inbounds %struct.via_camera, %struct.via_camera* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @gpio_direction_output(i8* %69, i32 0)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %62, %51, %37, %22
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i8* @viafb_gpio_lookup(i8*) #1

declare dso_local i32 @gpio_is_valid(i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @gpio_request(i8*, i8*) #1

declare dso_local i32 @gpio_free(i8*) #1

declare dso_local i32 @gpio_direction_output(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
