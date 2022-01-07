; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-ctrl.c_pwc_set_video_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-ctrl.c_pwc_set_video_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i32, i64, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [42 x i8] c"set_video_mode(%dx%d @ %d, pixfmt %08x).\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"decode_size = %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"Failed to set video mode %s@%d fps; return code = %d\0A\00", align 1
@size2name = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"Set resolution to %dx%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_set_video_mode(%struct.pwc_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.pwc_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @PWC_DEBUG_FLOW(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.pwc_device*, %struct.pwc_device** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @pwc_get_size(%struct.pwc_device* %23, i32 %24, i32 %25)
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = call i32 @PWC_TRACE(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.pwc_device*, %struct.pwc_device** %9, align 8
  %30 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @DEVICE_USE_CODEC1(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %7
  %35 = load %struct.pwc_device*, %struct.pwc_device** %9, align 8
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32*, i32** %14, align 8
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @set_video_mode_Nala(%struct.pwc_device* %35, i32 %36, i32 %37, i32 %38, i32* %39, i32 %40)
  store i32 %41, i32* %16, align 4
  br label %65

42:                                               ; preds = %7
  %43 = load %struct.pwc_device*, %struct.pwc_device** %9, align 8
  %44 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @DEVICE_USE_CODEC3(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  %49 = load %struct.pwc_device*, %struct.pwc_device** %9, align 8
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32*, i32** %14, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @set_video_mode_Kiara(%struct.pwc_device* %49, i32 %50, i32 %51, i32 %52, i32* %53, i32 %54)
  store i32 %55, i32* %16, align 4
  br label %64

56:                                               ; preds = %42
  %57 = load %struct.pwc_device*, %struct.pwc_device** %9, align 8
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* %15, align 4
  %63 = call i32 @set_video_mode_Timon(%struct.pwc_device* %57, i32 %58, i32 %59, i32 %60, i32* %61, i32 %62)
  store i32 %63, i32* %16, align 4
  br label %64

64:                                               ; preds = %56, %48
  br label %65

65:                                               ; preds = %64, %34
  %66 = load i32, i32* %16, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i32*, i32** @size2name, align 8
  %70 = load i32, i32* %17, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @PWC_ERROR(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %16, align 4
  store i32 %77, i32* %8, align 4
  br label %99

78:                                               ; preds = %65
  %79 = load %struct.pwc_device*, %struct.pwc_device** %9, align 8
  %80 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.pwc_device*, %struct.pwc_device** %9, align 8
  %83 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %81, %84
  %86 = load %struct.pwc_device*, %struct.pwc_device** %9, align 8
  %87 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.pwc_device*, %struct.pwc_device** %9, align 8
  %91 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %90, i32 0, i32 5
  store i64 %89, i64* %91, align 8
  %92 = load %struct.pwc_device*, %struct.pwc_device** %9, align 8
  %93 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.pwc_device*, %struct.pwc_device** %9, align 8
  %96 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @PWC_DEBUG_SIZE(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %94, i32 %97)
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %78, %68
  %100 = load i32, i32* %8, align 4
  ret i32 %100
}

declare dso_local i32 @PWC_DEBUG_FLOW(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pwc_get_size(%struct.pwc_device*, i32, i32) #1

declare dso_local i32 @PWC_TRACE(i8*, i32) #1

declare dso_local i64 @DEVICE_USE_CODEC1(i32) #1

declare dso_local i32 @set_video_mode_Nala(%struct.pwc_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @DEVICE_USE_CODEC3(i32) #1

declare dso_local i32 @set_video_mode_Kiara(%struct.pwc_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @set_video_mode_Timon(%struct.pwc_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @PWC_ERROR(i8*, i32, i32, i32) #1

declare dso_local i32 @PWC_DEBUG_SIZE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
