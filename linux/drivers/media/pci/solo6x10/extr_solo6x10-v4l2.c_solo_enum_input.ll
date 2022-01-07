; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_enum_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_enum_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_input = type { i64, i32, i32, i32, i32 }
%struct.solo_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Camera %d\00", align 1
@V4L2_IN_ST_NO_SIGNAL = common dso_local global i32 0, align 4
@V4L2_INPUT_TYPE_CAMERA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_input*)* @solo_enum_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_enum_input(%struct.file* %0, i8* %1, %struct.v4l2_input* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_input*, align 8
  %8 = alloca %struct.solo_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_input* %2, %struct.v4l2_input** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.solo_dev* @video_drvdata(%struct.file* %10)
  store %struct.solo_dev* %11, %struct.solo_dev** %8, align 8
  %12 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %16 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %3
  %20 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %21 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %22 = call i32 @solo_enum_ext_input(%struct.solo_dev* %20, %struct.v4l2_input* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %60

27:                                               ; preds = %19
  br label %49

28:                                               ; preds = %3
  %29 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i32 @snprintf(i32 %31, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %38 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @tw28_get_video_status(%struct.solo_dev* %37, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %28
  %45 = load i32, i32* @V4L2_IN_ST_NO_SIGNAL, align 4
  %46 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %28
  br label %49

49:                                               ; preds = %48, %27
  %50 = load i32, i32* @V4L2_INPUT_TYPE_CAMERA, align 4
  %51 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.solo_dev*, %struct.solo_dev** %8, align 8
  %54 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_input*, %struct.v4l2_input** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %49, %25
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.solo_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @solo_enum_ext_input(%struct.solo_dev*, %struct.v4l2_input*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i64) #1

declare dso_local i32 @tw28_get_video_status(%struct.solo_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
