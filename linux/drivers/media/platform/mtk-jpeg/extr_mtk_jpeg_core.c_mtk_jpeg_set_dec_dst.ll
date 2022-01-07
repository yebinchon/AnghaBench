; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_set_dec_dst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_set_dec_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_jpeg_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_jpeg_dec_param = type { i32, i64* }
%struct.vb2_buffer = type { i32 }
%struct.mtk_jpeg_fb = type { i32* }

@.str = private unnamed_addr constant [34 x i8] c"plane number mismatch (%u != %u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"buffer size is underflow (%lu < %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_dec_param*, %struct.vb2_buffer*, %struct.mtk_jpeg_fb*)* @mtk_jpeg_set_dec_dst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_jpeg_set_dec_dst(%struct.mtk_jpeg_ctx* %0, %struct.mtk_jpeg_dec_param* %1, %struct.vb2_buffer* %2, %struct.mtk_jpeg_fb* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_jpeg_ctx*, align 8
  %7 = alloca %struct.mtk_jpeg_dec_param*, align 8
  %8 = alloca %struct.vb2_buffer*, align 8
  %9 = alloca %struct.mtk_jpeg_fb*, align 8
  %10 = alloca i32, align 4
  store %struct.mtk_jpeg_ctx* %0, %struct.mtk_jpeg_ctx** %6, align 8
  store %struct.mtk_jpeg_dec_param* %1, %struct.mtk_jpeg_dec_param** %7, align 8
  store %struct.vb2_buffer* %2, %struct.vb2_buffer** %8, align 8
  store %struct.mtk_jpeg_fb* %3, %struct.mtk_jpeg_fb** %9, align 8
  %11 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %7, align 8
  %12 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %15 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %4
  %19 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %7, align 8
  %25 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %29 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %27, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %86

34:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %82, %34
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %38 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %35
  %42 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i64 @vb2_plane_size(%struct.vb2_buffer* %42, i32 %43)
  %45 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %7, align 8
  %46 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %44, %51
  br i1 %52, label %53, label %72

53:                                               ; preds = %41
  %54 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %6, align 8
  %55 = getelementptr inbounds %struct.mtk_jpeg_ctx, %struct.mtk_jpeg_ctx* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %60 = call i64 @vb2_plane_size(%struct.vb2_buffer* %59, i32 0)
  %61 = load %struct.mtk_jpeg_dec_param*, %struct.mtk_jpeg_dec_param** %7, align 8
  %62 = getelementptr inbounds %struct.mtk_jpeg_dec_param, %struct.mtk_jpeg_dec_param* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %60, i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %86

72:                                               ; preds = %41
  %73 = load %struct.vb2_buffer*, %struct.vb2_buffer** %8, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %73, i32 %74)
  %76 = load %struct.mtk_jpeg_fb*, %struct.mtk_jpeg_fb** %9, align 8
  %77 = getelementptr inbounds %struct.mtk_jpeg_fb, %struct.mtk_jpeg_fb* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  br label %82

82:                                               ; preds = %72
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %35

85:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %53, %18
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
