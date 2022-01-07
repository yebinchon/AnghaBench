; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_vidioc_s_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_vidioc_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i32, i32 }
%struct.saa7146_dev = type { i64 }
%struct.av7110 = type { i32, i32 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@.str = private unnamed_addr constant [20 x i8] c"VIDIOC_S_TUNER: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"VIDIOC_S_TUNER: V4L2_TUNER_MODE_STEREO\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"VIDIOC_S_TUNER: V4L2_TUNER_MODE_LANG1_LANG2\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"VIDIOC_S_TUNER: V4L2_TUNER_MODE_LANG1\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"VIDIOC_S_TUNER: V4L2_TUNER_MODE_LANG2\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"VIDIOC_S_TUNER: TDA9840_SET_MONO\0A\00", align 1
@MSP_WR_DSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_s_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.av7110*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.saa7146_fh*
  %14 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %13, i32 0, i32 0
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %14, align 8
  store %struct.saa7146_dev* %15, %struct.saa7146_dev** %8, align 8
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %17 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.av7110*
  store %struct.av7110* %19, %struct.av7110** %9, align 8
  %20 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.av7110*, %struct.av7110** %9, align 8
  %25 = getelementptr inbounds %struct.av7110, %struct.av7110* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.av7110*, %struct.av7110** %9, align 8
  %30 = getelementptr inbounds %struct.av7110, %struct.av7110* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %67

36:                                               ; preds = %28
  %37 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %48 [
    i32 128, label %40
    i32 130, label %42
    i32 131, label %44
    i32 129, label %46
  ]

40:                                               ; preds = %36
  %41 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 12289, i32* %10, align 4
  store i32 32, i32* %11, align 4
  br label %50

42:                                               ; preds = %36
  %43 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  store i32 12288, i32* %10, align 4
  store i32 32, i32* %11, align 4
  br label %50

44:                                               ; preds = %36
  %45 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 12288, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %50

46:                                               ; preds = %36
  %47 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  store i32 12288, i32* %10, align 4
  store i32 16, i32* %11, align 4
  br label %50

48:                                               ; preds = %36
  %49 = call i32 (i32, i8*, ...) @dprintk(i32 2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  store i32 12288, i32* %10, align 4
  store i32 48, i32* %11, align 4
  br label %50

50:                                               ; preds = %48, %46, %44, %42, %40
  %51 = load %struct.av7110*, %struct.av7110** %9, align 8
  %52 = load i32, i32* @MSP_WR_DSP, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @msp_writereg(%struct.av7110* %51, i32 %52, i32 14, i32 %53)
  %55 = load %struct.av7110*, %struct.av7110** %9, align 8
  %56 = load i32, i32* @MSP_WR_DSP, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @msp_writereg(%struct.av7110* %55, i32 %56, i32 8, i32 %57)
  %59 = load %struct.av7110*, %struct.av7110** %9, align 8
  %60 = load i32, i32* @MSP_WR_DSP, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @msp_writereg(%struct.av7110* %59, i32 %60, i32 9, i32 %61)
  %63 = load %struct.av7110*, %struct.av7110** %9, align 8
  %64 = load i32, i32* @MSP_WR_DSP, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @msp_writereg(%struct.av7110* %63, i32 %64, i32 10, i32 %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %50, %33
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i32 @msp_writereg(%struct.av7110*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
