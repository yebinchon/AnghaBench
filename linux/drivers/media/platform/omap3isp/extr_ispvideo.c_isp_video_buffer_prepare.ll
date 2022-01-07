; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_buffer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_buffer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.isp_video_fh = type { %struct.TYPE_10__, %struct.isp_video* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.isp_video = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.isp_buffer = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Buffer address must be aligned to 32 bytes boundary.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @isp_video_buffer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_buffer_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.isp_video_fh*, align 8
  %6 = alloca %struct.isp_buffer*, align 8
  %7 = alloca %struct.isp_video*, align 8
  %8 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %10 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %9)
  store %struct.vb2_v4l2_buffer* %10, %struct.vb2_v4l2_buffer** %4, align 8
  %11 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %12 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.isp_video_fh* @vb2_get_drv_priv(i32 %13)
  store %struct.isp_video_fh* %14, %struct.isp_video_fh** %5, align 8
  %15 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %16 = call %struct.isp_buffer* @to_isp_buffer(%struct.vb2_v4l2_buffer* %15)
  store %struct.isp_buffer* %16, %struct.isp_buffer** %6, align 8
  %17 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %18 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %17, i32 0, i32 1
  %19 = load %struct.isp_video*, %struct.isp_video** %18, align 8
  store %struct.isp_video* %19, %struct.isp_video** %7, align 8
  %20 = load %struct.isp_video*, %struct.isp_video** %7, align 8
  %21 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %57

28:                                               ; preds = %1
  %29 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %30 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %29, i32 0)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @IS_ALIGNED(i32 %31, i32 32)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %28
  %35 = load %struct.isp_video*, %struct.isp_video** %7, align 8
  %36 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %57

43:                                               ; preds = %28
  %44 = load %struct.isp_buffer*, %struct.isp_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.isp_buffer, %struct.isp_buffer* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %48 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @vb2_set_plane_payload(i32* %46, i32 0, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.isp_buffer*, %struct.isp_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.isp_buffer, %struct.isp_buffer* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %43, %34, %25
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.isp_video_fh* @vb2_get_drv_priv(i32) #1

declare dso_local %struct.isp_buffer* @to_isp_buffer(%struct.vb2_v4l2_buffer*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @vb2_set_plane_payload(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
