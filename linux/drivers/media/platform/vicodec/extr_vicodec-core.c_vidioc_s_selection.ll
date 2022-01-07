; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vidioc_s_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vidioc_s_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i64, i64 }
%struct.vicodec_ctx = type { i32 }
%struct.vicodec_q_data = type { i8*, i32, i8*, i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_SEL_TGT_CROP = common dso_local global i64 0, align 8
@MIN_WIDTH = common dso_local global i32 0, align 4
@MIN_HEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @vidioc_s_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.vicodec_ctx*, align 8
  %9 = alloca %struct.vicodec_q_data*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vicodec_ctx* @file2ctx(%struct.file* %10)
  store %struct.vicodec_ctx* %11, %struct.vicodec_ctx** %8, align 8
  %12 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %86

20:                                               ; preds = %3
  %21 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %22 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx* %21, i32 %24)
  store %struct.vicodec_q_data* %25, %struct.vicodec_q_data** %9, align 8
  %26 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %9, align 8
  %27 = icmp ne %struct.vicodec_q_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %86

31:                                               ; preds = %20
  %32 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @V4L2_SEL_TGT_CROP, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36, %31
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %86

45:                                               ; preds = %36
  %46 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* @MIN_WIDTH, align 4
  %57 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %9, align 8
  %58 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @clamp(i8* %55, i32 %56, i32 %59)
  %61 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %9, align 8
  %62 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %9, align 8
  %64 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i8* %65, i8** %68, align 8
  %69 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = load i32, i32* @MIN_HEIGHT, align 4
  %74 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %9, align 8
  %75 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @clamp(i8* %72, i32 %73, i32 %76)
  %78 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %9, align 8
  %79 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %78, i32 0, i32 0
  store i8* %77, i8** %79, align 8
  %80 = load %struct.vicodec_q_data*, %struct.vicodec_q_data** %9, align 8
  %81 = getelementptr inbounds %struct.vicodec_q_data, %struct.vicodec_q_data* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i8* %82, i8** %85, align 8
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %45, %42, %28, %17
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.vicodec_ctx* @file2ctx(%struct.file*) #1

declare dso_local %struct.vicodec_q_data* @get_q_data(%struct.vicodec_ctx*, i32) #1

declare dso_local i8* @clamp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
