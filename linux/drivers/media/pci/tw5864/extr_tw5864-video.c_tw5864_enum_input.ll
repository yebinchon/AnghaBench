; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i32, i32, i64 }
%struct.tw5864_input = type { i32, %struct.tw5864_dev* }
%struct.tw5864_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Encoder %d\00", align 1
@TW5864_NORMS = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_SYNC = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_H_LOCK = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_SIGNAL = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_COLOR = common dso_local global i32 0, align 4
@V4L2_IN_ST_MACROVISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @tw5864_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw5864_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.tw5864_input*, align 8
  %9 = alloca %struct.tw5864_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.tw5864_input* @video_drvdata(%struct.file* %14)
  store %struct.tw5864_input* %15, %struct.tw5864_input** %8, align 8
  %16 = load %struct.tw5864_input*, %struct.tw5864_input** %8, align 8
  %17 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %16, i32 0, i32 1
  %18 = load %struct.tw5864_dev*, %struct.tw5864_dev** %17, align 8
  store %struct.tw5864_dev* %18, %struct.tw5864_dev** %9, align 8
  %19 = load %struct.tw5864_input*, %struct.tw5864_input** %8, align 8
  %20 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @TW5864_INDIR_VIN_0(i32 %21)
  %23 = call i32 @tw_indir_readb(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.tw5864_input*, %struct.tw5864_input** %8, align 8
  %25 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @TW5864_INDIR_VIN_D(i32 %26)
  %28 = call i32 @tw_indir_readb(i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %13, align 4
  %31 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %102

38:                                               ; preds = %3
  %39 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %40 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.tw5864_input*, %struct.tw5864_input** %8, align 8
  %46 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @snprintf(i32 %44, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @TW5864_NORMS, align 4
  %50 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %12, align 4
  %53 = and i32 %52, 128
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %38
  %56 = load i32, i32* @V4L2_IN_ST_NO_SYNC, align 4
  %57 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %38
  %62 = load i32, i32* %12, align 4
  %63 = and i32 %62, 64
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @V4L2_IN_ST_NO_H_LOCK, align 4
  %67 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %61
  %72 = load i32, i32* %12, align 4
  %73 = and i32 %72, 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* @V4L2_IN_ST_NO_SIGNAL, align 4
  %77 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %71
  %82 = load i32, i32* %12, align 4
  %83 = and i32 %82, 2
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32, i32* @V4L2_IN_ST_NO_COLOR, align 4
  %87 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %85, %81
  %92 = load i32, i32* %13, align 4
  %93 = and i32 %92, 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32, i32* @V4L2_IN_ST_MACROVISION, align 4
  %97 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %91
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %35
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.tw5864_input* @video_drvdata(%struct.file*) #1

declare dso_local i32 @tw_indir_readb(i32) #1

declare dso_local i32 @TW5864_INDIR_VIN_0(i32) #1

declare dso_local i32 @TW5864_INDIR_VIN_D(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
