; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-video.c_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i32, i32 }
%struct.tm6000_fh = type { %struct.tm6000_core* }
%struct.tm6000_core = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@TM6000_INPUT_TV = common dso_local global i64 0, align 8
@V4L2_INPUT_TYPE_TUNER = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@iname = common dso_local global i32* null, align 8
@TM6000_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vidioc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.tm6000_fh*, align 8
  %9 = alloca %struct.tm6000_core*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.tm6000_fh*
  store %struct.tm6000_fh* %12, %struct.tm6000_fh** %8, align 8
  %13 = load %struct.tm6000_fh*, %struct.tm6000_fh** %8, align 8
  %14 = getelementptr inbounds %struct.tm6000_fh, %struct.tm6000_fh* %13, i32 0, i32 0
  %15 = load %struct.tm6000_core*, %struct.tm6000_core** %14, align 8
  store %struct.tm6000_core* %15, %struct.tm6000_core** %9, align 8
  %16 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp uge i32 %19, 3
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %78

24:                                               ; preds = %3
  %25 = load %struct.tm6000_core*, %struct.tm6000_core** %9, align 8
  %26 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %78

37:                                               ; preds = %24
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.tm6000_core*, %struct.tm6000_core** %9, align 8
  %42 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TM6000_INPUT_TV, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %37
  %52 = load i32, i32* @V4L2_INPUT_TYPE_TUNER, align 4
  %53 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  br label %59

55:                                               ; preds = %37
  %56 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %57 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** @iname, align 8
  %64 = load %struct.tm6000_core*, %struct.tm6000_core** %9, align 8
  %65 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %63, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @strscpy(i32 %62, i32 %73, i32 4)
  %75 = load i32, i32* @TM6000_STD, align 4
  %76 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %59, %34, %21
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @strscpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
