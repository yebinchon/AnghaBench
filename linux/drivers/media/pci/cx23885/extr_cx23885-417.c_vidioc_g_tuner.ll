; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-417.c_vidioc_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-417.c_vidioc_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32 }
%struct.cx23885_dev = type { i64 }

@TUNER_ABSENT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Television\00", align 1
@tuner = common dso_local global i32 0, align 4
@g_tuner = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"VIDIOC_G_TUNER: tuner type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.cx23885_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.cx23885_dev* @video_drvdata(%struct.file* %9)
  store %struct.cx23885_dev* %10, %struct.cx23885_dev** %8, align 8
  %11 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %12 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TUNER_ABSENT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %41

19:                                               ; preds = %3
  %20 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 0, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %41

27:                                               ; preds = %19
  %28 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @strscpy(i32 %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4)
  %32 = load %struct.cx23885_dev*, %struct.cx23885_dev** %8, align 8
  %33 = load i32, i32* @tuner, align 4
  %34 = load i32, i32* @g_tuner, align 4
  %35 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %36 = call i32 @call_all(%struct.cx23885_dev* %32, i32 %33, i32 %34, %struct.v4l2_tuner* %35)
  %37 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %27, %24, %16
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.cx23885_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @call_all(%struct.cx23885_dev*, i32, i32, %struct.v4l2_tuner*) #1

declare dso_local i32 @dprintk(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
