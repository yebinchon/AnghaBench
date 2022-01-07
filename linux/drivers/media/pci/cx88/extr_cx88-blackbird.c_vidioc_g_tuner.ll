; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_vidioc_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-blackbird.c_vidioc_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32 }
%struct.cx8802_dev = type { %struct.cx88_core* }
%struct.cx88_core = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UNSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Television\00", align 1
@V4L2_TUNER_CAP_NORM = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@g_tuner = common dso_local global i32 0, align 4
@MO_DEVICE_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @vidioc_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.cx8802_dev*, align 8
  %9 = alloca %struct.cx88_core*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.cx8802_dev* @video_drvdata(%struct.file* %11)
  store %struct.cx8802_dev* %12, %struct.cx8802_dev** %8, align 8
  %13 = load %struct.cx8802_dev*, %struct.cx8802_dev** %8, align 8
  %14 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %13, i32 0, i32 0
  %15 = load %struct.cx88_core*, %struct.cx88_core** %14, align 8
  store %struct.cx88_core* %15, %struct.cx88_core** %9, align 8
  %16 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  %17 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UNSET, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %63

28:                                               ; preds = %3
  %29 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %63

36:                                               ; preds = %28
  %37 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strscpy(i32 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4)
  %41 = load i32, i32* @V4L2_TUNER_CAP_NORM, align 4
  %42 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %44, i32 0, i32 1
  store i32 -1, i32* %45, align 8
  %46 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  %47 = load i32, i32* @tuner, align 4
  %48 = load i32, i32* @g_tuner, align 4
  %49 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %50 = call i32 @call_all(%struct.cx88_core* %46, i32 %47, i32 %48, %struct.v4l2_tuner* %49)
  %51 = load %struct.cx88_core*, %struct.cx88_core** %9, align 8
  %52 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %53 = call i32 @cx88_get_stereo(%struct.cx88_core* %51, %struct.v4l2_tuner* %52)
  %54 = load i32, i32* @MO_DEVICE_STATUS, align 4
  %55 = call i32 @cx_read(i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 32
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 65535, i32 0
  %61 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %36, %33, %25
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.cx8802_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @call_all(%struct.cx88_core*, i32, i32, %struct.v4l2_tuner*) #1

declare dso_local i32 @cx88_get_stereo(%struct.cx88_core*, %struct.v4l2_tuner*) #1

declare dso_local i32 @cx_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
