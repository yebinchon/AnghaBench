; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vidioc_enum_framesizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vidioc_enum_framesizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmsizeenum = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FRMSIZE_TYPE_STEPWISE = common dso_local global i32 0, align 4
@MIN_W = common dso_local global i32 0, align 4
@MIN_H = common dso_local global i32 0, align 4
@MAX_W = common dso_local global i32 0, align 4
@MAX_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmsizeenum*)* @vidioc_enum_framesizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_framesizes(%struct.file* %0, i8* %1, %struct.v4l2_frmsizeenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmsizeenum*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmsizeenum* %2, %struct.v4l2_frmsizeenum** %7, align 8
  %8 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %9 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %54

15:                                               ; preds = %3
  %16 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @find_format(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %54

24:                                               ; preds = %15
  %25 = load i32, i32* @V4L2_FRMSIZE_TYPE_STEPWISE, align 4
  %26 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @MIN_W, align 4
  %29 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 5
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @MIN_H, align 4
  %33 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @MAX_W, align 4
  %37 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 3
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @MAX_H, align 4
  %41 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 8
  %44 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @get_alignment(i32 %46, i32* %49, i32* %52)
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %24, %21, %12
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @find_format(i32) #1

declare dso_local i32 @get_alignment(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
