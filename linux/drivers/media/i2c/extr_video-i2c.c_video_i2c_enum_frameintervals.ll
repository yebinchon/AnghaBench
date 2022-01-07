; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_video_i2c_enum_frameintervals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_video_i2c_enum_frameintervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmivalenum = type { i64, i64, i64, i32, i32 }
%struct.video_i2c_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32*, %struct.v4l2_frmsize_discrete* }
%struct.v4l2_frmsize_discrete = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FRMIVAL_TYPE_DISCRETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmivalenum*)* @video_i2c_enum_frameintervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_i2c_enum_frameintervals(%struct.file* %0, i8* %1, %struct.v4l2_frmivalenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmivalenum*, align 8
  %8 = alloca %struct.video_i2c_data*, align 8
  %9 = alloca %struct.v4l2_frmsize_discrete*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmivalenum* %2, %struct.v4l2_frmivalenum** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.video_i2c_data* @video_drvdata(%struct.file* %10)
  store %struct.video_i2c_data* %11, %struct.video_i2c_data** %8, align 8
  %12 = load %struct.video_i2c_data*, %struct.video_i2c_data** %8, align 8
  %13 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %15, align 8
  store %struct.v4l2_frmsize_discrete* %16, %struct.v4l2_frmsize_discrete** %9, align 8
  %17 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.video_i2c_data*, %struct.video_i2c_data** %8, align 8
  %21 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %19, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %64

29:                                               ; preds = %3
  %30 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %9, align 8
  %34 = getelementptr inbounds %struct.v4l2_frmsize_discrete, %struct.v4l2_frmsize_discrete* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %9, align 8
  %42 = getelementptr inbounds %struct.v4l2_frmsize_discrete, %struct.v4l2_frmsize_discrete* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37, %29
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %64

48:                                               ; preds = %37
  %49 = load i32, i32* @V4L2_FRMIVAL_TYPE_DISCRETE, align 4
  %50 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.video_i2c_data*, %struct.video_i2c_data** %8, align 8
  %53 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %48, %45, %26
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.video_i2c_data* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
