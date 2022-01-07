; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_set_autogain_expo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_set_autogain_expo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@SET_LUM_CTL = common dso_local global i32 0, align 4
@AGC_MODE_FORMATTER = common dso_local global i32 0, align 4
@PRESET_AGC_FORMATTER = common dso_local global i32 0, align 4
@PRESET_SHUTTER_FORMATTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*)* @pwc_set_autogain_expo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_set_autogain_expo(%struct.pwc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pwc_device*, align 8
  %4 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %3, align 8
  %5 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %6 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %5, i32 0, i32 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %1
  %12 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %13 = load i32, i32* @SET_LUM_CTL, align 4
  %14 = load i32, i32* @AGC_MODE_FORMATTER, align 4
  %15 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %16 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %15, i32 0, i32 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 0, i32 255
  %23 = call i32 @pwc_set_u8_ctrl(%struct.pwc_device* %12, i32 %13, i32 %14, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %11
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %94

28:                                               ; preds = %11
  %29 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %30 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %29, i32 0, i32 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %37 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %39 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %28
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %43 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %42, i32 0, i32 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %94

49:                                               ; preds = %41
  %50 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %51 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %50, i32 0, i32 3
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %49
  %57 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %58 = load i32, i32* @SET_LUM_CTL, align 4
  %59 = load i32, i32* @PRESET_AGC_FORMATTER, align 4
  %60 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %61 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pwc_set_u8_ctrl(%struct.pwc_device* %57, i32 %58, i32 %59, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %94

70:                                               ; preds = %56
  br label %71

71:                                               ; preds = %70, %49
  %72 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %73 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %72, i32 0, i32 2
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %93

78:                                               ; preds = %71
  %79 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %80 = load i32, i32* @SET_LUM_CTL, align 4
  %81 = load i32, i32* @PRESET_SHUTTER_FORMATTER, align 4
  %82 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %83 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %82, i32 0, i32 2
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @pwc_set_u16_ctrl(%struct.pwc_device* %79, i32 %80, i32 %81, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %94

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %92, %71
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %90, %68, %48, %26
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @pwc_set_u8_ctrl(%struct.pwc_device*, i32, i32, i32) #1

declare dso_local i32 @pwc_set_u16_ctrl(%struct.pwc_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
