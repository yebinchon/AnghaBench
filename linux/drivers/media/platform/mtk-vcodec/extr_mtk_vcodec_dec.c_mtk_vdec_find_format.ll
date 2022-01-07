; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_mtk_vdec_find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_mtk_vdec_find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_video_fmt = type { i64 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@NUM_FORMATS = common dso_local global i32 0, align 4
@mtk_video_formats = common dso_local global %struct.mtk_video_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtk_video_fmt* (%struct.v4l2_format*)* @mtk_vdec_find_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtk_video_fmt* @mtk_vdec_find_format(%struct.v4l2_format* %0) #0 {
  %2 = alloca %struct.mtk_video_fmt*, align 8
  %3 = alloca %struct.v4l2_format*, align 8
  %4 = alloca %struct.mtk_video_fmt*, align 8
  %5 = alloca i32, align 4
  store %struct.v4l2_format* %0, %struct.v4l2_format** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %27, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @NUM_FORMATS, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** @mtk_video_formats, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mtk_video_fmt, %struct.mtk_video_fmt* %11, i64 %13
  store %struct.mtk_video_fmt* %14, %struct.mtk_video_fmt** %4, align 8
  %15 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %4, align 8
  %16 = getelementptr inbounds %struct.mtk_video_fmt, %struct.mtk_video_fmt* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %17, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %10
  %25 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %4, align 8
  store %struct.mtk_video_fmt* %25, %struct.mtk_video_fmt** %2, align 8
  br label %31

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %6

30:                                               ; preds = %6
  store %struct.mtk_video_fmt* null, %struct.mtk_video_fmt** %2, align 8
  br label %31

31:                                               ; preds = %30, %24
  %32 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %2, align 8
  ret %struct.mtk_video_fmt* %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
