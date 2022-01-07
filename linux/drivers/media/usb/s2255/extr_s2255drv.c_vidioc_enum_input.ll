; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_vidioc_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/s2255/extr_s2255drv.c_vidioc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i64, i32, i64, i32, i32 }
%struct.s2255_vc = type { i32, %struct.s2255_dev* }
%struct.s2255_dev = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@S2255_NORMS = common dso_local global i32 0, align 4
@S2255_MIN_DSP_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"s2255_cmd_status rc: %d status %x\0A\00", align 1
@V4L2_IN_ST_NO_SIGNAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Composite\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"S-Video\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @vidioc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.s2255_vc*, align 8
  %9 = alloca %struct.s2255_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.s2255_vc* @video_drvdata(%struct.file* %12)
  store %struct.s2255_vc* %13, %struct.s2255_vc** %8, align 8
  %14 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %15 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %14, i32 0, i32 1
  %16 = load %struct.s2255_dev*, %struct.s2255_dev** %15, align 8
  store %struct.s2255_dev* %16, %struct.s2255_dev** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %81

24:                                               ; preds = %3
  %25 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %26 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @S2255_NORMS, align 4
  %29 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.s2255_dev*, %struct.s2255_dev** %9, align 8
  %34 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @S2255_MIN_DSP_STATUS, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %24
  %39 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %40 = call i32 @s2255_cmd_status(%struct.s2255_vc* %39, i32* %10)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.s2255_dev*, %struct.s2255_dev** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @dprintk(%struct.s2255_dev* %41, i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %38
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %54

52:                                               ; preds = %47
  %53 = load i64, i64* @V4L2_IN_ST_NO_SIGNAL, align 8
  br label %54

54:                                               ; preds = %52, %51
  %55 = phi i64 [ 0, %51 ], [ %53, %52 ]
  %56 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %54, %38
  br label %59

59:                                               ; preds = %58, %24
  %60 = load %struct.s2255_dev*, %struct.s2255_dev** %9, align 8
  %61 = getelementptr inbounds %struct.s2255_dev, %struct.s2255_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  switch i32 %62, label %64 [
    i32 8789, label %63
    i32 8791, label %69
  ]

63:                                               ; preds = %59
  br label %64

64:                                               ; preds = %59, %63
  %65 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @strscpy(i32 %67, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 4)
  br label %80

69:                                               ; preds = %59
  %70 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.s2255_vc*, %struct.s2255_vc** %8, align 8
  %74 = getelementptr inbounds %struct.s2255_vc, %struct.s2255_vc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %75, 2
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %79 = call i32 @strscpy(i32 %72, i8* %78, i32 4)
  br label %80

80:                                               ; preds = %69, %64
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %21
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.s2255_vc* @video_drvdata(%struct.file*) #1

declare dso_local i32 @s2255_cmd_status(%struct.s2255_vc*, i32*) #1

declare dso_local i32 @dprintk(%struct.s2255_dev*, i32, i8*, i32, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
