; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_mtk_venc_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_mtk_venc_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vcodec_ctx = type { %struct.mtk_enc_params, %struct.mtk_q_data* }
%struct.mtk_enc_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mtk_q_data = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.venc_enc_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MTK_Q_DATA_SRC = common dso_local global i64 0, align 8
@VENC_YUV_FORMAT_I420 = common dso_local global i32 0, align 4
@VENC_YUV_FORMAT_YV12 = common dso_local global i32 0, align 4
@VENC_YUV_FORMAT_NV12 = common dso_local global i32 0, align 4
@VENC_YUV_FORMAT_NV21 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unsupported fourcc =%d\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"fmt 0x%x, P/L %d/%d, w/h %d/%d, buf %d/%d, fps/bps %d/%d, gop %d, i_period %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_vcodec_ctx*, %struct.venc_enc_param*)* @mtk_venc_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_venc_set_param(%struct.mtk_vcodec_ctx* %0, %struct.venc_enc_param* %1) #0 {
  %3 = alloca %struct.mtk_vcodec_ctx*, align 8
  %4 = alloca %struct.venc_enc_param*, align 8
  %5 = alloca %struct.mtk_q_data*, align 8
  %6 = alloca %struct.mtk_enc_params*, align 8
  store %struct.mtk_vcodec_ctx* %0, %struct.mtk_vcodec_ctx** %3, align 8
  store %struct.venc_enc_param* %1, %struct.venc_enc_param** %4, align 8
  %7 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %7, i32 0, i32 1
  %9 = load %struct.mtk_q_data*, %struct.mtk_q_data** %8, align 8
  %10 = load i64, i64* @MTK_Q_DATA_SRC, align 8
  %11 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %9, i64 %10
  store %struct.mtk_q_data* %11, %struct.mtk_q_data** %5, align 8
  %12 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %12, i32 0, i32 0
  store %struct.mtk_enc_params* %13, %struct.mtk_enc_params** %6, align 8
  %14 = load %struct.mtk_q_data*, %struct.mtk_q_data** %5, align 8
  %15 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %35 [
    i32 129, label %19
    i32 128, label %23
    i32 131, label %27
    i32 130, label %31
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @VENC_YUV_FORMAT_I420, align 4
  %21 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %22 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %21, i32 0, i32 10
  store i32 %20, i32* %22, align 4
  br label %42

23:                                               ; preds = %2
  %24 = load i32, i32* @VENC_YUV_FORMAT_YV12, align 4
  %25 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %26 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %25, i32 0, i32 10
  store i32 %24, i32* %26, align 4
  br label %42

27:                                               ; preds = %2
  %28 = load i32, i32* @VENC_YUV_FORMAT_NV12, align 4
  %29 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %30 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 4
  br label %42

31:                                               ; preds = %2
  %32 = load i32, i32* @VENC_YUV_FORMAT_NV21, align 4
  %33 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %34 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %33, i32 0, i32 10
  store i32 %32, i32* %34, align 4
  br label %42

35:                                               ; preds = %2
  %36 = load %struct.mtk_q_data*, %struct.mtk_q_data** %5, align 8
  %37 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mtk_v4l2_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %35, %31, %27, %23, %19
  %43 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %6, align 8
  %44 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %47 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %46, i32 0, i32 9
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %6, align 8
  %49 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %52 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %51, i32 0, i32 8
  store i32 %50, i32* %52, align 4
  %53 = load %struct.mtk_q_data*, %struct.mtk_q_data** %5, align 8
  %54 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %57 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load %struct.mtk_q_data*, %struct.mtk_q_data** %5, align 8
  %59 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %62 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 4
  %63 = load %struct.mtk_q_data*, %struct.mtk_q_data** %5, align 8
  %64 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %67 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.mtk_q_data*, %struct.mtk_q_data** %5, align 8
  %69 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %72 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 4
  %73 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %6, align 8
  %74 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %6, align 8
  %77 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sdiv i32 %75, %78
  %80 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %81 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %6, align 8
  %83 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %86 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %6, align 8
  %88 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %91 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.mtk_enc_params*, %struct.mtk_enc_params** %6, align 8
  %93 = getelementptr inbounds %struct.mtk_enc_params, %struct.mtk_enc_params* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %96 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %98 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %101 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %100, i32 0, i32 9
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %104 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %107 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %110 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %113 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %116 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %119 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %122 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %125 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.venc_enc_param*, %struct.venc_enc_param** %4, align 8
  %128 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @mtk_v4l2_debug(i32 0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %99, i32 %102, i32 %105, i32 %108, i32 %111, i32 %114, i32 %117, i32 %120, i32 %123, i32 %126, i32 %129)
  ret void
}

declare dso_local i32 @mtk_v4l2_err(i8*, i32) #1

declare dso_local i32 @mtk_v4l2_debug(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
