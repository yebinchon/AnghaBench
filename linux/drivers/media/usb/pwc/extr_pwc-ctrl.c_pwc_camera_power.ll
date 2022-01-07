; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-ctrl.c_pwc_camera_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-ctrl.c_pwc_camera_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i32, i32*, i32 }

@SET_STATUS_CTL = common dso_local global i32 0, align 4
@SET_POWER_SAVE_MODE_FORMATTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to power %s camera (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pwc_camera_power(%struct.pwc_device* %0, i32 %1) #0 {
  %3 = alloca %struct.pwc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %7 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %57

11:                                               ; preds = %2
  %12 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %13 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 675
  br i1 %15, label %26, label %16

16:                                               ; preds = %11
  %17 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %18 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 730
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %23 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %11
  br label %57

27:                                               ; preds = %21, %16
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %32 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 0, i32* %34, align 4
  br label %40

35:                                               ; preds = %27
  %36 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %37 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 255, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %42 = load i32, i32* @SET_STATUS_CTL, align 4
  %43 = load i32, i32* @SET_POWER_SAVE_MODE_FORMATTER, align 4
  %44 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %45 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @send_control_msg(%struct.pwc_device* %41, i32 %42, i32 %43, i32* %46, i32 1)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %40
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @PWC_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %10, %26, %50, %40
  ret void
}

declare dso_local i32 @send_control_msg(%struct.pwc_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @PWC_ERROR(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
