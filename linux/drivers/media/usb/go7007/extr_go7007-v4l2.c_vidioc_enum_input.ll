; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i64, i32, i64, i64, i32, i32 }
%struct.go7007 = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@GO7007_BOARD_HAS_TUNER = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_TUNER = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@GO7007_SENSOR_TV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vidioc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.go7007*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.go7007* @video_drvdata(%struct.file* %9)
  store %struct.go7007* %10, %struct.go7007** %8, align 8
  %11 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.go7007*, %struct.go7007** %8, align 8
  %15 = getelementptr inbounds %struct.go7007, %struct.go7007* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %13, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %102

23:                                               ; preds = %3
  %24 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.go7007*, %struct.go7007** %8, align 8
  %28 = getelementptr inbounds %struct.go7007, %struct.go7007* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strscpy(i32 %26, i32 %37, i32 4)
  %39 = load %struct.go7007*, %struct.go7007** %8, align 8
  %40 = getelementptr inbounds %struct.go7007, %struct.go7007* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @GO7007_BOARD_HAS_TUNER, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %23
  %48 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %49 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @V4L2_INPUT_TYPE_TUNER, align 4
  %54 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  br label %60

56:                                               ; preds = %47, %23
  %57 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %58 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %52
  %61 = load %struct.go7007*, %struct.go7007** %8, align 8
  %62 = getelementptr inbounds %struct.go7007, %struct.go7007* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %60
  %68 = load %struct.go7007*, %struct.go7007** %8, align 8
  %69 = getelementptr inbounds %struct.go7007, %struct.go7007* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = shl i32 1, %72
  %74 = sub nsw i32 %73, 1
  %75 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  br label %80

77:                                               ; preds = %60
  %78 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %78, i32 0, i32 1
  store i32 0, i32* %79, align 8
  br label %80

80:                                               ; preds = %77, %67
  %81 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %82 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.go7007*, %struct.go7007** %8, align 8
  %84 = getelementptr inbounds %struct.go7007, %struct.go7007* %83, i32 0, i32 0
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @GO7007_SENSOR_TV, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %80
  %92 = load %struct.file*, %struct.file** %5, align 8
  %93 = call %struct.TYPE_6__* @video_devdata(%struct.file* %92)
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  br label %101

98:                                               ; preds = %80
  %99 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %99, i32 0, i32 2
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %98, %91
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %20
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.go7007* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_6__* @video_devdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
