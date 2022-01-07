; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_vb2ops_venc_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_vb2ops_venc_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mtk_vcodec_ctx = type { i32 }
%struct.mtk_q_data = type { i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"data will not fit into plane %d (%lu < %d)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @vb2ops_venc_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vb2ops_venc_buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.mtk_vcodec_ctx*, align 8
  %5 = alloca %struct.mtk_q_data*, align 8
  %6 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %8 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = call %struct.mtk_vcodec_ctx* @vb2_get_drv_priv(%struct.TYPE_4__* %9)
  store %struct.mtk_vcodec_ctx* %10, %struct.mtk_vcodec_ctx** %4, align 8
  %11 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %12 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mtk_q_data* @mtk_venc_get_q_data(%struct.mtk_vcodec_ctx* %11, i32 %16)
  store %struct.mtk_q_data* %17, %struct.mtk_q_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %54, %1
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.mtk_q_data*, %struct.mtk_q_data** %5, align 8
  %21 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %18
  %27 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @vb2_plane_size(%struct.vb2_buffer* %27, i32 %28)
  %30 = load %struct.mtk_q_data*, %struct.mtk_q_data** %5, align 8
  %31 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %29, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %26
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @vb2_plane_size(%struct.vb2_buffer* %40, i32 %41)
  %43 = load %struct.mtk_q_data*, %struct.mtk_q_data** %5, align 8
  %44 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @mtk_v4l2_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %42, i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %58

53:                                               ; preds = %26
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %18

57:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %38
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.mtk_vcodec_ctx* @vb2_get_drv_priv(%struct.TYPE_4__*) #1

declare dso_local %struct.mtk_q_data* @mtk_venc_get_q_data(%struct.mtk_vcodec_ctx*, i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @mtk_v4l2_err(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
