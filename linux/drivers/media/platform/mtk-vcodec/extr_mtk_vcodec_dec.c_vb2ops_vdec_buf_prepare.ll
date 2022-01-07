; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_vb2ops_vdec_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_dec.c_vb2ops_vdec_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mtk_vcodec_ctx = type { i32 }
%struct.mtk_q_data = type { i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"[%d] (%d) id=%d\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"data will not fit into plane %d (%lu < %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @vb2ops_vdec_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vb2ops_vdec_buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.mtk_vcodec_ctx*, align 8
  %4 = alloca %struct.mtk_q_data*, align 8
  %5 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %6 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %7 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = call %struct.mtk_vcodec_ctx* @vb2_get_drv_priv(%struct.TYPE_4__* %8)
  store %struct.mtk_vcodec_ctx* %9, %struct.mtk_vcodec_ctx** %3, align 8
  %10 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %19 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mtk_v4l2_debug(i32 3, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %17, i32 %20)
  %22 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %23 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %24 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.mtk_q_data* @mtk_vdec_get_q_data(%struct.mtk_vcodec_ctx* %22, i32 %27)
  store %struct.mtk_q_data* %28, %struct.mtk_q_data** %4, align 8
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %63, %1
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.mtk_q_data*, %struct.mtk_q_data** %4, align 8
  %32 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %30, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %29
  %38 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @vb2_plane_size(%struct.vb2_buffer* %38, i32 %39)
  %41 = load %struct.mtk_q_data*, %struct.mtk_q_data** %4, align 8
  %42 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %40, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %37
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @vb2_plane_size(%struct.vb2_buffer* %51, i32 %52)
  %54 = load %struct.mtk_q_data*, %struct.mtk_q_data** %4, align 8
  %55 = getelementptr inbounds %struct.mtk_q_data, %struct.mtk_q_data* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @mtk_v4l2_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %50, i64 %53, i64 %60)
  br label %62

62:                                               ; preds = %49, %37
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %29

66:                                               ; preds = %29
  ret i32 0
}

declare dso_local %struct.mtk_vcodec_ctx* @vb2_get_drv_priv(%struct.TYPE_4__*) #1

declare dso_local i32 @mtk_v4l2_debug(i32, i8*, i32, i32, i32) #1

declare dso_local %struct.mtk_q_data* @mtk_vdec_get_q_data(%struct.mtk_vcodec_ctx*, i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @mtk_v4l2_err(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
