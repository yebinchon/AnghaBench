; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i32, i32, i32, i32, i64 }
%struct.solo_enc_dev = type { i32, %struct.TYPE_2__*, %struct.solo_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.solo_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Encoder %d\00", align 1
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@V4L2_IN_ST_NO_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @solo_enc_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_enc_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.solo_enc_dev*, align 8
  %9 = alloca %struct.solo_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.solo_enc_dev* @video_drvdata(%struct.file* %10)
  store %struct.solo_enc_dev* %11, %struct.solo_enc_dev** %8, align 8
  %12 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %8, align 8
  %13 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %12, i32 0, i32 2
  %14 = load %struct.solo_dev*, %struct.solo_dev** %13, align 8
  store %struct.solo_dev* %14, %struct.solo_dev** %9, align 8
  %15 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %52

22:                                               ; preds = %3
  %23 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %8, align 8
  %27 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  %30 = call i32 @snprintf(i32 %25, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %32 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %8, align 8
  %35 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %42 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %8, align 8
  %43 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @tw28_get_video_status(%struct.solo_dev* %41, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %22
  %48 = load i32, i32* @V4L2_IN_ST_NO_SIGNAL, align 4
  %49 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %47, %22
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %19
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.solo_enc_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @tw28_get_video_status(%struct.solo_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
