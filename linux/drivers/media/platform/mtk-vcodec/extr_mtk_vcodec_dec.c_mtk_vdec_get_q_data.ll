; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_mtk_vdec_get_q_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_mtk_vdec_get_q_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_q_data = type { i32 }
%struct.mtk_vcodec_ctx = type { %struct.mtk_q_data* }

@MTK_Q_DATA_SRC = common dso_local global i64 0, align 8
@MTK_Q_DATA_DST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mtk_q_data* (%struct.mtk_vcodec_ctx*, i32)* @mtk_vdec_get_q_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mtk_q_data* @mtk_vdec_get_q_data(%struct.mtk_vcodec_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_q_data*, align 8
  %4 = alloca %struct.mtk_vcodec_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_vcodec_ctx* %0, %struct.mtk_vcodec_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %10, i32 0, i32 0
  %12 = load %struct.mtk_q_data*, %struct.mtk_q_data** %11, align 8
  %13 = load i64, i64* @MTK_Q_DATA_SRC, align 8
  %14 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %12, i64 %13
  store %struct.mtk_q_data* %14, %struct.mtk_q_data** %3, align 8
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %17 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %16, i32 0, i32 0
  %18 = load %struct.mtk_q_data*, %struct.mtk_q_data** %17, align 8
  %19 = load i64, i64* @MTK_Q_DATA_DST, align 8
  %20 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %18, i64 %19
  store %struct.mtk_q_data* %20, %struct.mtk_q_data** %3, align 8
  br label %21

21:                                               ; preds = %15, %9
  %22 = load %struct.mtk_q_data*, %struct.mtk_q_data** %3, align 8
  ret %struct.mtk_q_data* %22
}

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
