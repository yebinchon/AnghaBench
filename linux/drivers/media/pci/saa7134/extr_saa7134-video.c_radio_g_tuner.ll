; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_radio_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_radio_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32 }
%struct.saa7134_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Radio\00", align 1
@tuner = common dso_local global i32 0, align 4
@g_tuner = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@TV = common dso_local global i64 0, align 8
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @radio_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radio_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.saa7134_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.saa7134_dev* @video_drvdata(%struct.file* %9)
  store %struct.saa7134_dev* %10, %struct.saa7134_dev** %8, align 8
  %11 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 0, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %61

18:                                               ; preds = %3
  %19 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strscpy(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %23 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %24 = load i32, i32* @tuner, align 4
  %25 = load i32, i32* @g_tuner, align 4
  %26 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %27 = call i32 @saa_call_all(%struct.saa7134_dev* %23, i32 %24, i32 %25, %struct.v4l2_tuner* %26)
  %28 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %29 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %36 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TV, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %18
  %43 = call i32 @saa_readb(i32 1409)
  %44 = and i32 %43, 31
  %45 = shl i32 %44, 11
  %46 = sub nsw i32 63488, %45
  %47 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = call i32 @saa_readb(i32 1321)
  %50 = and i32 %49, 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  br label %56

54:                                               ; preds = %42
  %55 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %18
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %60, %15
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.saa7134_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @saa_call_all(%struct.saa7134_dev*, i32, i32, %struct.v4l2_tuner*) #1

declare dso_local i32 @saa_readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
