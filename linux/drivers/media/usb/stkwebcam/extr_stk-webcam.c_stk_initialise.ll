; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_initialise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regval = type { i32, i32 }
%struct.stk_camera = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@stk1125_initvals = common dso_local global %struct.regval* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk_camera*)* @stk_initialise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_initialise(%struct.stk_camera* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stk_camera*, align 8
  %4 = alloca %struct.regval*, align 8
  %5 = alloca i32, align 4
  store %struct.stk_camera* %0, %struct.stk_camera** %3, align 8
  %6 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %7 = call i32 @is_present(%struct.stk_camera* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %14 = call i64 @is_initialised(%struct.stk_camera* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %48

17:                                               ; preds = %12
  %18 = load %struct.regval*, %struct.regval** @stk1125_initvals, align 8
  store %struct.regval* %18, %struct.regval** %4, align 8
  br label %19

19:                                               ; preds = %37, %17
  %20 = load %struct.regval*, %struct.regval** %4, align 8
  %21 = getelementptr inbounds %struct.regval, %struct.regval* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 65535
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %26 = load %struct.regval*, %struct.regval** %4, align 8
  %27 = getelementptr inbounds %struct.regval, %struct.regval* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.regval*, %struct.regval** %4, align 8
  %30 = getelementptr inbounds %struct.regval, %struct.regval* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @stk_camera_write_reg(%struct.stk_camera* %25, i32 %28, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %48

37:                                               ; preds = %24
  %38 = load %struct.regval*, %struct.regval** %4, align 8
  %39 = getelementptr inbounds %struct.regval, %struct.regval* %38, i32 1
  store %struct.regval* %39, %struct.regval** %4, align 8
  br label %19

40:                                               ; preds = %19
  %41 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %42 = call i64 @stk_sensor_init(%struct.stk_camera* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %46 = call i32 @set_initialised(%struct.stk_camera* %45)
  store i32 0, i32* %2, align 4
  br label %48

47:                                               ; preds = %40
  store i32 -1, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %44, %35, %16, %9
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @is_present(%struct.stk_camera*) #1

declare dso_local i64 @is_initialised(%struct.stk_camera*) #1

declare dso_local i32 @stk_camera_write_reg(%struct.stk_camera*, i32, i32) #1

declare dso_local i64 @stk_sensor_init(%struct.stk_camera*) #1

declare dso_local i32 @set_initialised(%struct.stk_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
