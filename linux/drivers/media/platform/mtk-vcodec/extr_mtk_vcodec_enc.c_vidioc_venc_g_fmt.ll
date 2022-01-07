; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_vidioc_venc_g_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_vidioc_venc_g_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32, i32 }
%struct.mtk_vcodec_ctx = type { i32, i32, i32, i32, i32 }
%struct.vb2_queue = type { i32 }
%struct.mtk_q_data = type { i32*, i32*, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_venc_g_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_venc_g_fmt(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %9 = alloca %struct.mtk_vcodec_ctx*, align 8
  %10 = alloca %struct.vb2_queue*, align 8
  %11 = alloca %struct.mtk_q_data*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %15, %struct.v4l2_pix_format_mplane** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call %struct.mtk_vcodec_ctx* @fh_to_ctx(i8* %16)
  store %struct.mtk_vcodec_ctx* %17, %struct.mtk_vcodec_ctx** %9, align 8
  %18 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %9, align 8
  %19 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %20, i32 %23)
  store %struct.vb2_queue* %24, %struct.vb2_queue** %10, align 8
  %25 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %26 = icmp ne %struct.vb2_queue* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %136

30:                                               ; preds = %3
  %31 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %9, align 8
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.mtk_q_data* @mtk_venc_get_q_data(%struct.mtk_vcodec_ctx* %31, i32 %34)
  store %struct.mtk_q_data* %35, %struct.mtk_q_data** %11, align 8
  %36 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %37 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %40 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %39, i32 0, i32 10
  store i32 %38, i32* %40, align 4
  %41 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %42 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 8
  %46 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %47 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 4
  %53 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %54 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %57 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %59 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %58, i32 0, i32 2
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %64 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %110, %30
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %113

71:                                               ; preds = %65
  %72 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %73 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %80 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %79, i32 0, i32 6
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  store i32 %78, i32* %85, align 4
  %86 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %87 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %94 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %93, i32 0, i32 6
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  store i32 %92, i32* %99, align 8
  %100 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %101 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %100, i32 0, i32 6
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = call i32 @memset(i32* %108, i32 0, i32 8)
  br label %110

110:                                              ; preds = %71
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %12, align 4
  br label %65

113:                                              ; preds = %65
  %114 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %115 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %114, i32 0, i32 5
  store i64 0, i64* %115, align 8
  %116 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %9, align 8
  %117 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %120 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 8
  %121 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %9, align 8
  %122 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %125 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %9, align 8
  %127 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %130 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %9, align 8
  %132 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %8, align 8
  %135 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %113, %27
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.mtk_vcodec_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local %struct.mtk_q_data* @mtk_venc_get_q_data(%struct.mtk_vcodec_ctx*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
