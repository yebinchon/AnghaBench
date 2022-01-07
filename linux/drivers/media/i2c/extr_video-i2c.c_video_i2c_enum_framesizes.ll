; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_video_i2c_enum_framesizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_video-i2c.c_video_i2c_enum_framesizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmsizeenum = type { i64, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.video_i2c_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, %struct.v4l2_frmsize_discrete* }
%struct.TYPE_4__ = type { i64 }
%struct.v4l2_frmsize_discrete = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FRMSIZE_TYPE_DISCRETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmsizeenum*)* @video_i2c_enum_framesizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_i2c_enum_framesizes(%struct.file* %0, i8* %1, %struct.v4l2_frmsizeenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmsizeenum*, align 8
  %8 = alloca %struct.video_i2c_data*, align 8
  %9 = alloca %struct.v4l2_frmsize_discrete*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmsizeenum* %2, %struct.v4l2_frmsizeenum** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.video_i2c_data* @video_drvdata(%struct.file* %10)
  store %struct.video_i2c_data* %11, %struct.video_i2c_data** %8, align 8
  %12 = load %struct.video_i2c_data*, %struct.video_i2c_data** %8, align 8
  %13 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %15, align 8
  store %struct.v4l2_frmsize_discrete* %16, %struct.v4l2_frmsize_discrete** %9, align 8
  %17 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %55

24:                                               ; preds = %3
  %25 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.video_i2c_data*, %struct.video_i2c_data** %8, align 8
  %29 = getelementptr inbounds %struct.video_i2c_data, %struct.video_i2c_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %27, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %55

39:                                               ; preds = %24
  %40 = load i32, i32* @V4L2_FRMSIZE_TYPE_DISCRETE, align 4
  %41 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %9, align 8
  %44 = getelementptr inbounds %struct.v4l2_frmsize_discrete, %struct.v4l2_frmsize_discrete* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.v4l2_frmsize_discrete*, %struct.v4l2_frmsize_discrete** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_frmsize_discrete, %struct.v4l2_frmsize_discrete* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %39, %36, %21
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.video_i2c_data* @video_drvdata(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
