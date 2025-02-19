; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-ctrl.c_pwc_set_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-ctrl.c_pwc_set_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i32* }

@SET_STATUS_CTL = common dso_local global i32 0, align 4
@LED_FORMATTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to set LED on/off time (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_set_leds(%struct.pwc_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwc_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %10 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 730
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = sdiv i32 %15, 100
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sdiv i32 %17, 100
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %14
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 255
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 255, i32* %6, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %31, 255
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 255, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %37 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %42 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 %40, i32* %44, align 4
  %45 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %46 = load i32, i32* @SET_STATUS_CTL, align 4
  %47 = load i32, i32* @LED_FORMATTER, align 4
  %48 = load %struct.pwc_device*, %struct.pwc_device** %5, align 8
  %49 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @send_control_msg(%struct.pwc_device* %45, i32 %46, i32 %47, i32* %50, i32 2)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %34
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @PWC_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %34
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %13
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @send_control_msg(%struct.pwc_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @PWC_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
