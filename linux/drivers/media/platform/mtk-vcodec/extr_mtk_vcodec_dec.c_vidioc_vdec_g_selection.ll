; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_vidioc_vdec_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_vidioc_vdec_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.mtk_vcodec_ctx = type { i64, %struct.TYPE_3__, %struct.mtk_q_data* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.mtk_q_data = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MTK_Q_DATA_DST = common dso_local global i64 0, align 8
@GET_PARAM_CROP_INFO = common dso_local global i32 0, align 4
@MTK_STATE_HEADER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @vidioc_vdec_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_vdec_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.mtk_vcodec_ctx*, align 8
  %9 = alloca %struct.mtk_q_data*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.mtk_vcodec_ctx* @fh_to_ctx(i8* %10)
  store %struct.mtk_vcodec_ctx* %11, %struct.mtk_vcodec_ctx** %8, align 8
  %12 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %127

20:                                               ; preds = %3
  %21 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %21, i32 0, i32 2
  %23 = load %struct.mtk_q_data*, %struct.mtk_q_data** %22, align 8
  %24 = load i64, i64* @MTK_Q_DATA_DST, align 8
  %25 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %23, i64 %24
  store %struct.mtk_q_data* %25, %struct.mtk_q_data** %9, align 8
  %26 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %98 [
    i32 128, label %29
    i32 129, label %50
    i32 130, label %71
  ]

29:                                               ; preds = %20
  %30 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  store i64 0, i64* %32, align 8
  %33 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  %36 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %44 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  br label %101

50:                                               ; preds = %20
  %51 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %65 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  br label %101

71:                                               ; preds = %20
  %72 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %73 = load i32, i32* @GET_PARAM_CROP_INFO, align 4
  %74 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %74, i32 0, i32 2
  %76 = call i32 @vdec_if_get_param(%struct.mtk_vcodec_ctx* %72, i32 %73, %struct.TYPE_4__* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %71
  %79 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.mtk_q_data*, %struct.mtk_q_data** %9, align 8
  %86 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load %struct.mtk_q_data*, %struct.mtk_q_data** %9, align 8
  %92 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  br label %97

97:                                               ; preds = %78, %71
  br label %101

98:                                               ; preds = %20
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %127

101:                                              ; preds = %97, %50, %29
  %102 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %8, align 8
  %103 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @MTK_STATE_HEADER, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %126

107:                                              ; preds = %101
  %108 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %109 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  %114 = load %struct.mtk_q_data*, %struct.mtk_q_data** %9, align 8
  %115 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %118 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  %120 = load %struct.mtk_q_data*, %struct.mtk_q_data** %9, align 8
  %121 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %124 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  store i32 %122, i32* %125, align 8
  store i32 0, i32* %4, align 4
  br label %127

126:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %107, %98, %17
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.mtk_vcodec_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @vdec_if_get_param(%struct.mtk_vcodec_ctx*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
