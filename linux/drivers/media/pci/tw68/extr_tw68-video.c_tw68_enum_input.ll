; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-video.c_tw68_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-video.c_tw68_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i32, i32, i32 }
%struct.tw68_dev = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TW68_INPUT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Composite %d\00", align 1
@TW68_STATUS1 = common dso_local global i32 0, align 4
@TW68_MVSN = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_SYNC = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_H_LOCK = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_SIGNAL = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_COLOR = common dso_local global i32 0, align 4
@V4L2_IN_ST_MACROVISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @tw68_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw68_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.tw68_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.tw68_dev* @video_drvdata(%struct.file* %12)
  store %struct.tw68_dev* %13, %struct.tw68_dev** %8, align 8
  %14 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @TW68_INPUT_MAX, align 4
  %19 = icmp uge i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %102

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %28 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @snprintf(i32 %32, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.tw68_dev*, %struct.tw68_dev** %8, align 8
  %37 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %95

40:                                               ; preds = %23
  %41 = load i32, i32* @TW68_STATUS1, align 4
  %42 = call i32 @tw_readb(i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @TW68_MVSN, align 4
  %44 = call i32 @tw_readb(i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, 128
  %47 = icmp ne i32 0, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i32, i32* @V4L2_IN_ST_NO_SYNC, align 4
  %50 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %48, %40
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, 64
  %57 = icmp ne i32 0, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* @V4L2_IN_ST_NO_H_LOCK, align 4
  %60 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %54
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 4
  %67 = icmp ne i32 0, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load i32, i32* @V4L2_IN_ST_NO_SIGNAL, align 4
  %70 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %68, %64
  %75 = load i32, i32* %10, align 4
  %76 = and i32 %75, 2
  %77 = icmp ne i32 0, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load i32, i32* @V4L2_IN_ST_NO_COLOR, align 4
  %80 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %74
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, 4
  %87 = icmp ne i32 0, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load i32, i32* @V4L2_IN_ST_MACROVISION, align 4
  %90 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %88, %84
  br label %95

95:                                               ; preds = %94, %23
  %96 = load %struct.file*, %struct.file** %5, align 8
  %97 = call %struct.TYPE_2__* @video_devdata(%struct.file* %96)
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %95, %20
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.tw68_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @tw_readb(i32) #1

declare dso_local %struct.TYPE_2__* @video_devdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
