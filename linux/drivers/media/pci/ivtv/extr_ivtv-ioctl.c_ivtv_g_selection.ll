; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_g_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_rect = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_selection = type { i64, i32, %struct.v4l2_rect }
%struct.ivtv_open_id = type { i32, %struct.ivtv* }
%struct.ivtv = type { i32, i32, %struct.v4l2_rect, i32, %struct.yuv_playback_info }
%struct.yuv_playback_info = type { i32, i32, i32, %struct.v4l2_rect }

@__const.ivtv_g_selection.r = private unnamed_addr constant %struct.v4l2_rect { i32 0, i32 0, i32 720, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_YUV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_selection*)* @ivtv_g_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_g_selection(%struct.file* %0, i8* %1, %struct.v4l2_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_selection*, align 8
  %8 = alloca %struct.ivtv_open_id*, align 8
  %9 = alloca %struct.ivtv*, align 8
  %10 = alloca %struct.yuv_playback_info*, align 8
  %11 = alloca %struct.v4l2_rect, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_selection* %2, %struct.v4l2_selection** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.ivtv_open_id* @fh2id(i8* %13)
  store %struct.ivtv_open_id* %14, %struct.ivtv_open_id** %8, align 8
  %15 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %16 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %15, i32 0, i32 1
  %17 = load %struct.ivtv*, %struct.ivtv** %16, align 8
  store %struct.ivtv* %17, %struct.ivtv** %9, align 8
  %18 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %19 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %18, i32 0, i32 4
  store %struct.yuv_playback_info* %19, %struct.yuv_playback_info** %10, align 8
  %20 = bitcast %struct.v4l2_rect* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.v4l2_rect* @__const.ivtv_g_selection.r to i8*), i64 32, i1 false)
  %21 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %22 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %3
  %30 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %52 [
    i32 128, label %33
    i32 129, label %33
  ]

33:                                               ; preds = %29, %29
  %34 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %35, i32 0, i32 3
  store i32 0, i32* %36, align 4
  %37 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %38, i32 0, i32 4
  store i32 0, i32* %39, align 4
  %40 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %41, i32 0, i32 1
  store i32 720, i32* %42, align 4
  %43 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %44 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 576, i32 480
  %49 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 4
  store i32 0, i32* %4, align 4
  br label %127

52:                                               ; preds = %29
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %127

55:                                               ; preds = %3
  %56 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %55
  %62 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %63 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %61, %55
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %127

71:                                               ; preds = %61
  %72 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %124 [
    i32 132, label %75
    i32 130, label %94
    i32 131, label %94
  ]

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @IVTV_DEC_STREAM_TYPE_YUV, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %80, i32 0, i32 2
  %82 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %10, align 8
  %83 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %82, i32 0, i32 3
  %84 = bitcast %struct.v4l2_rect* %81 to i8*
  %85 = bitcast %struct.v4l2_rect* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 32, i1 false)
  br label %93

86:                                               ; preds = %75
  %87 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %88 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %87, i32 0, i32 2
  %89 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %90 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %89, i32 0, i32 2
  %91 = bitcast %struct.v4l2_rect* %88 to i8*
  %92 = bitcast %struct.v4l2_rect* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 32, i1 false)
  br label %93

93:                                               ; preds = %86, %79
  store i32 0, i32* %4, align 4
  br label %127

94:                                               ; preds = %71, %71
  %95 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %96 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 576, i32 480
  %101 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %11, i32 0, i32 2
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @IVTV_DEC_STREAM_TYPE_YUV, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %94
  %106 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %10, align 8
  %107 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %105
  %111 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %10, align 8
  %112 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %11, i32 0, i32 1
  store i32 %113, i32* %114, align 4
  %115 = load %struct.yuv_playback_info*, %struct.yuv_playback_info** %10, align 8
  %116 = getelementptr inbounds %struct.yuv_playback_info, %struct.yuv_playback_info* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %11, i32 0, i32 2
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %110, %105, %94
  %120 = load %struct.v4l2_selection*, %struct.v4l2_selection** %7, align 8
  %121 = getelementptr inbounds %struct.v4l2_selection, %struct.v4l2_selection* %120, i32 0, i32 2
  %122 = bitcast %struct.v4l2_rect* %121 to i8*
  %123 = bitcast %struct.v4l2_rect* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %122, i8* align 4 %123, i64 32, i1 false)
  store i32 0, i32* %4, align 4
  br label %127

124:                                              ; preds = %71
  %125 = load i32, i32* @EINVAL, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %124, %119, %93, %68, %52, %33
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.ivtv_open_id* @fh2id(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
