; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_capture_buffer_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-isp-video.c_isp_video_capture_buffer_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.fimc_isp = type { i32, %struct.fimc_is_video }
%struct.fimc_is_video = type { i64, i64, i64, %struct.TYPE_6__, %struct.isp_video_buf**, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.isp_video_buf = type { i64, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.fimc_is = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32* }

@ST_ISP_VID_CAP_BUF_PREP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"dma_buf %d (%d/%d/%d) addr: %pad\0A\00", align 1
@ST_ISP_VID_CAP_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @isp_video_capture_buffer_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_video_capture_buffer_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.fimc_isp*, align 8
  %5 = alloca %struct.fimc_is_video*, align 8
  %6 = alloca %struct.fimc_is*, align 8
  %7 = alloca %struct.isp_video_buf*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %12 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %13 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %12)
  store %struct.vb2_v4l2_buffer* %13, %struct.vb2_v4l2_buffer** %3, align 8
  %14 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %15 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.fimc_isp* @vb2_get_drv_priv(i32 %16)
  store %struct.fimc_isp* %17, %struct.fimc_isp** %4, align 8
  %18 = load %struct.fimc_isp*, %struct.fimc_isp** %4, align 8
  %19 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %18, i32 0, i32 1
  store %struct.fimc_is_video* %19, %struct.fimc_is_video** %5, align 8
  %20 = load %struct.fimc_isp*, %struct.fimc_isp** %4, align 8
  %21 = call %struct.fimc_is* @fimc_isp_to_is(%struct.fimc_isp* %20)
  store %struct.fimc_is* %21, %struct.fimc_is** %6, align 8
  %22 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %23 = call %struct.isp_video_buf* @to_isp_video_buf(%struct.vb2_v4l2_buffer* %22)
  store %struct.isp_video_buf* %23, %struct.isp_video_buf** %7, align 8
  %24 = load i32, i32* @ST_ISP_VID_CAP_BUF_PREP, align 4
  %25 = load %struct.fimc_isp*, %struct.fimc_isp** %4, align 8
  %26 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %25, i32 0, i32 0
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %1
  %30 = load %struct.fimc_is*, %struct.fimc_is** %6, align 8
  %31 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %30, i32 0, i32 1
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.isp_video_buf*, %struct.isp_video_buf** %7, align 8
  %35 = getelementptr inbounds %struct.isp_video_buf, %struct.isp_video_buf* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @BIT(i64 %36)
  %38 = load %struct.fimc_is_video*, %struct.fimc_is_video** %5, align 8
  %39 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = or i64 %40, %37
  store i64 %41, i64* %39, align 8
  %42 = load %struct.fimc_is*, %struct.fimc_is** %6, align 8
  %43 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %42, i32 0, i32 1
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  br label %149

46:                                               ; preds = %1
  %47 = load %struct.fimc_is_video*, %struct.fimc_is_video** %5, align 8
  %48 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %47, i32 0, i32 5
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  %52 = load %struct.fimc_is_video*, %struct.fimc_is_video** %5, align 8
  %53 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.isp_video_buf*, %struct.isp_video_buf** %7, align 8
  %56 = getelementptr inbounds %struct.isp_video_buf, %struct.isp_video_buf* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.isp_video_buf*, %struct.isp_video_buf** %7, align 8
  %58 = load %struct.fimc_is_video*, %struct.fimc_is_video** %5, align 8
  %59 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %58, i32 0, i32 4
  %60 = load %struct.isp_video_buf**, %struct.isp_video_buf*** %59, align 8
  %61 = load %struct.isp_video_buf*, %struct.isp_video_buf** %7, align 8
  %62 = getelementptr inbounds %struct.isp_video_buf, %struct.isp_video_buf* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.isp_video_buf*, %struct.isp_video_buf** %60, i64 %63
  store %struct.isp_video_buf* %57, %struct.isp_video_buf** %64, align 8
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %124, %46
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %127

69:                                               ; preds = %65
  %70 = load %struct.isp_video_buf*, %struct.isp_video_buf** %7, align 8
  %71 = getelementptr inbounds %struct.isp_video_buf, %struct.isp_video_buf* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = zext i32 %73 to i64
  %75 = mul nsw i64 %72, %74
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %11, align 4
  %80 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %80, i32 %81)
  %83 = load %struct.isp_video_buf*, %struct.isp_video_buf** %7, align 8
  %84 = getelementptr inbounds %struct.isp_video_buf, %struct.isp_video_buf* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  %89 = load %struct.isp_video_buf*, %struct.isp_video_buf** %7, align 8
  %90 = getelementptr inbounds %struct.isp_video_buf, %struct.isp_video_buf* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.fimc_is*, %struct.fimc_is** %6, align 8
  %97 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 32, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %95, i32* %104, align 4
  %105 = load %struct.fimc_is_video*, %struct.fimc_is_video** %5, align 8
  %106 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.isp_video_buf*, %struct.isp_video_buf** %7, align 8
  %110 = getelementptr inbounds %struct.isp_video_buf, %struct.isp_video_buf* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %115 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.isp_video_buf*, %struct.isp_video_buf** %7, align 8
  %118 = getelementptr inbounds %struct.isp_video_buf, %struct.isp_video_buf* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = call i32 @isp_dbg(i32 2, i32* %107, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %112, i32 %113, i32 %116, i32* %122)
  br label %124

124:                                              ; preds = %69
  %125 = load i32, i32* %9, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %9, align 4
  br label %65

127:                                              ; preds = %65
  %128 = load %struct.fimc_is_video*, %struct.fimc_is_video** %5, align 8
  %129 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 1
  store i64 %131, i64* %129, align 8
  %132 = load %struct.fimc_is_video*, %struct.fimc_is_video** %5, align 8
  %133 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp slt i64 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  br label %160

137:                                              ; preds = %127
  %138 = load %struct.fimc_is_video*, %struct.fimc_is_video** %5, align 8
  %139 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = shl i64 1, %140
  %142 = sub i64 %141, 1
  %143 = load %struct.fimc_is_video*, %struct.fimc_is_video** %5, align 8
  %144 = getelementptr inbounds %struct.fimc_is_video, %struct.fimc_is_video* %143, i32 0, i32 0
  store i64 %142, i64* %144, align 8
  %145 = load i32, i32* @ST_ISP_VID_CAP_BUF_PREP, align 4
  %146 = load %struct.fimc_isp*, %struct.fimc_isp** %4, align 8
  %147 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %146, i32 0, i32 0
  %148 = call i32 @set_bit(i32 %145, i32* %147)
  br label %149

149:                                              ; preds = %137, %29
  %150 = load i32, i32* @ST_ISP_VID_CAP_STREAMING, align 4
  %151 = load %struct.fimc_isp*, %struct.fimc_isp** %4, align 8
  %152 = getelementptr inbounds %struct.fimc_isp, %struct.fimc_isp* %151, i32 0, i32 0
  %153 = call i64 @test_bit(i32 %150, i32* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %149
  %156 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %157 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @isp_video_capture_start_streaming(i32 %158, i32 0)
  br label %160

160:                                              ; preds = %136, %155, %149
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.fimc_isp* @vb2_get_drv_priv(i32) #1

declare dso_local %struct.fimc_is* @fimc_isp_to_is(%struct.fimc_isp*) #1

declare dso_local %struct.isp_video_buf* @to_isp_video_buf(%struct.vb2_v4l2_buffer*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @BIT(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @isp_dbg(i32, i32*, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @isp_video_capture_start_streaming(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
