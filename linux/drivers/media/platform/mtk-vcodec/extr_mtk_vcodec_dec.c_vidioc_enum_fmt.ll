; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_vidioc_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_vidioc_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_video_fmt = type { i64, i32, i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32 }

@NUM_FORMATS = common dso_local global i32 0, align 4
@mtk_video_formats = common dso_local global %struct.mtk_video_fmt* null, align 8
@MTK_FMT_DEC = common dso_local global i64 0, align 8
@MTK_FMT_FRAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_fmtdesc*, i32)* @vidioc_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_fmt(%struct.v4l2_fmtdesc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_fmtdesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_video_fmt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_fmtdesc* %0, %struct.v4l2_fmtdesc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %49, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @NUM_FORMATS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** @mtk_video_formats, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mtk_video_fmt, %struct.mtk_video_fmt* %17, i64 %19
  %21 = getelementptr inbounds %struct.mtk_video_fmt, %struct.mtk_video_fmt* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MTK_FMT_DEC, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %49

26:                                               ; preds = %16, %13
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  %30 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** @mtk_video_formats, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.mtk_video_fmt, %struct.mtk_video_fmt* %30, i64 %32
  %34 = getelementptr inbounds %struct.mtk_video_fmt, %struct.mtk_video_fmt* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MTK_FMT_FRAME, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %49

39:                                               ; preds = %29, %26
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %4, align 8
  %42 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %52

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %46, %38, %25
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %9

52:                                               ; preds = %45, %9
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @NUM_FORMATS, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %74

59:                                               ; preds = %52
  %60 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** @mtk_video_formats, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.mtk_video_fmt, %struct.mtk_video_fmt* %60, i64 %62
  store %struct.mtk_video_fmt* %63, %struct.mtk_video_fmt** %6, align 8
  %64 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %6, align 8
  %65 = getelementptr inbounds %struct.mtk_video_fmt, %struct.mtk_video_fmt* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %4, align 8
  %68 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.mtk_video_fmt*, %struct.mtk_video_fmt** %6, align 8
  %70 = getelementptr inbounds %struct.mtk_video_fmt, %struct.mtk_video_fmt* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %4, align 8
  %73 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %59, %56
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
