; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_adjust_fmt_mplane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-jpeg/extr_mtk_jpeg_core.c_mtk_jpeg_adjust_fmt_mplane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_jpeg_ctx = type { i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.mtk_jpeg_q_data = type { i32*, i32*, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_jpeg_ctx*, %struct.v4l2_format*)* @mtk_jpeg_adjust_fmt_mplane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_jpeg_adjust_fmt_mplane(%struct.mtk_jpeg_ctx* %0, %struct.v4l2_format* %1) #0 {
  %3 = alloca %struct.mtk_jpeg_ctx*, align 8
  %4 = alloca %struct.v4l2_format*, align 8
  %5 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %6 = alloca %struct.mtk_jpeg_q_data*, align 8
  %7 = alloca i32, align 4
  store %struct.mtk_jpeg_ctx* %0, %struct.mtk_jpeg_ctx** %3, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %4, align 8
  %8 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %9 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %10, %struct.v4l2_pix_format_mplane** %5, align 8
  %11 = load %struct.mtk_jpeg_ctx*, %struct.mtk_jpeg_ctx** %3, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.mtk_jpeg_q_data* @mtk_jpeg_get_q_data(%struct.mtk_jpeg_ctx* %11, i32 %14)
  store %struct.mtk_jpeg_q_data* %15, %struct.mtk_jpeg_q_data** %6, align 8
  %16 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %6, align 8
  %17 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %6, align 8
  %22 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %6, align 8
  %27 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %6, align 8
  %34 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %33, i32 0, i32 2
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %75, %2
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %40
  %47 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %6, align 8
  %48 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 %53, i32* %60, align 4
  %61 = load %struct.mtk_jpeg_q_data*, %struct.mtk_jpeg_q_data** %6, align 8
  %62 = getelementptr inbounds %struct.mtk_jpeg_q_data, %struct.mtk_jpeg_q_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 %67, i32* %74, align 4
  br label %75

75:                                               ; preds = %46
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %40

78:                                               ; preds = %40
  ret void
}

declare dso_local %struct.mtk_jpeg_q_data* @mtk_jpeg_get_q_data(%struct.mtk_jpeg_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
