; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_set_exposure_auto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-v4l.c_pwc_set_exposure_auto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@V4L2_EXPOSURE_AUTO = common dso_local global i64 0, align 8
@SET_LUM_CTL = common dso_local global i32 0, align 4
@SHUTTER_MODE_FORMATTER = common dso_local global i32 0, align 4
@PRESET_SHUTTER_FORMATTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwc_device*)* @pwc_set_exposure_auto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwc_set_exposure_auto(%struct.pwc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pwc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %3, align 8
  %6 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %7 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @V4L2_EXPOSURE_AUTO, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %5, align 4
  %14 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %15 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %1
  %21 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %22 = load i32, i32* @SET_LUM_CTL, align 4
  %23 = load i32, i32* @SHUTTER_MODE_FORMATTER, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 0, i32 255
  %28 = call i32 @pwc_set_u8_ctrl(%struct.pwc_device* %21, i32 %22, i32 %23, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %67

33:                                               ; preds = %20
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %38 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  br label %40

40:                                               ; preds = %39, %1
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %67

44:                                               ; preds = %40
  %45 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %46 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  %52 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %53 = load i32, i32* @SET_LUM_CTL, align 4
  %54 = load i32, i32* @PRESET_SHUTTER_FORMATTER, align 4
  %55 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %56 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @pwc_set_u16_ctrl(%struct.pwc_device* %52, i32 %53, i32 %54, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %67

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %44
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %63, %43, %31
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @pwc_set_u8_ctrl(%struct.pwc_device*, i32, i32, i32) #1

declare dso_local i32 @pwc_set_u16_ctrl(%struct.pwc_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
