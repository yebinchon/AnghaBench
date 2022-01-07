; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_decoder_ioctls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_decoder_ioctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, i32 }
%struct.ivtv_open_id = type { i64, i32, %struct.ivtv* }
%struct.ivtv = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.ivtv_stream* }
%struct.TYPE_4__ = type { i32 }
%struct.ivtv_stream = type { i32, i32 }
%struct.ivtv_dma_frame = type { i32*, i32 }

@.str = private unnamed_addr constant [20 x i8] c"IVTV_IOC_DMA_FRAME\0A\00", align 1
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@OUT_UDMA_YUV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"IVTV_IOC_PASSTHROUGH_MODE\0A\00", align 1
@AUDIO_STEREO_SWAPPED = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i32 0, align 4
@IVTV_F_I_EV_DEC_STOPPED = common dso_local global i32 0, align 4
@IVTV_F_I_EV_VSYNC = common dso_local global i32 0, align 4
@IVTV_F_I_EV_VSYNC_ENABLED = common dso_local global i32 0, align 4
@IVTV_F_I_EV_VSYNC_FIELD = common dso_local global i32 0, align 4
@IVTV_YUV_MODE_MASK = common dso_local global i32 0, align 4
@IVTV_YUV_MODE_PROGRESSIVE = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@V4L2_DEC_CMD_PAUSE = common dso_local global i32 0, align 4
@V4L2_DEC_CMD_RESUME = common dso_local global i32 0, align 4
@V4L2_DEC_CMD_START = common dso_local global i32 0, align 4
@V4L2_DEC_CMD_STOP = common dso_local global i32 0, align 4
@V4L2_DEC_CMD_STOP_IMMEDIATELY = common dso_local global i32 0, align 4
@V4L2_DEC_CMD_STOP_TO_BLACK = common dso_local global i32 0, align 4
@VIDEO_EVENT_DECODER_STOPPED = common dso_local global i32 0, align 4
@VIDEO_EVENT_VSYNC = common dso_local global i32 0, align 4
@VIDEO_SOURCE_DEMUX = common dso_local global i64 0, align 8
@VIDEO_VSYNC_FIELD_EVEN = common dso_local global i8 0, align 1
@VIDEO_VSYNC_FIELD_ODD = common dso_local global i8 0, align 1
@VIDEO_VSYNC_FIELD_PROGRESSIVE = common dso_local global i8 0, align 1
@current = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i8*)* @ivtv_decoder_ioctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_decoder_ioctls(%struct.file* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ivtv_open_id*, align 8
  %9 = alloca %struct.ivtv*, align 8
  %10 = alloca %struct.ivtv_stream*, align 8
  %11 = alloca %struct.ivtv_dma_frame*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ivtv_open_id* @fh2id(i32 %14)
  store %struct.ivtv_open_id* %15, %struct.ivtv_open_id** %8, align 8
  %16 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %17 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %16, i32 0, i32 2
  %18 = load %struct.ivtv*, %struct.ivtv** %17, align 8
  store %struct.ivtv* %18, %struct.ivtv** %9, align 8
  %19 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %20 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %19, i32 0, i32 9
  %21 = load %struct.ivtv_stream*, %struct.ivtv_stream** %20, align 8
  %22 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %23 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %21, i64 %24
  store %struct.ivtv_stream* %25, %struct.ivtv_stream** %10, align 8
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %113 [
    i32 140, label %27
    i32 139, label %94
  ]

27:                                               ; preds = %3
  %28 = load i8*, i8** %7, align 8
  %29 = bitcast i8* %28 to %struct.ivtv_dma_frame*
  store %struct.ivtv_dma_frame* %29, %struct.ivtv_dma_frame** %11, align 8
  %30 = call i32 @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %32 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %116

40:                                               ; preds = %27
  %41 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %11, align 8
  %42 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %116

49:                                               ; preds = %40
  %50 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %51 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @OUT_UDMA_YUV, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %11, align 8
  %57 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %116

61:                                               ; preds = %55, %49
  %62 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %63 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %64 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @ivtv_start_decoding(%struct.ivtv_open_id* %62, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @EBUSY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %116

71:                                               ; preds = %61
  %72 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %73 = load i32, i32* @OUT_UDMA_YUV, align 4
  %74 = call i32 @ivtv_set_output_mode(%struct.ivtv* %72, i32 %73)
  %75 = load i32, i32* @OUT_UDMA_YUV, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.ivtv_stream*, %struct.ivtv_stream** %10, align 8
  %79 = call i32 @ivtv_release_stream(%struct.ivtv_stream* %78)
  %80 = load i32, i32* @EBUSY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %116

82:                                               ; preds = %71
  %83 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %8, align 8
  %84 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %83, i32 0, i32 1
  store i32 1, i32* %84, align 8
  %85 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %11, align 8
  %86 = getelementptr inbounds %struct.ivtv_dma_frame, %struct.ivtv_dma_frame* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %116

90:                                               ; preds = %82
  %91 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %92 = load %struct.ivtv_dma_frame*, %struct.ivtv_dma_frame** %11, align 8
  %93 = call i32 @ivtv_yuv_prep_frame(%struct.ivtv* %91, %struct.ivtv_dma_frame* %92)
  store i32 %93, i32* %4, align 4
  br label %116

94:                                               ; preds = %3
  %95 = call i32 @IVTV_DEBUG_IOCTL(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %96 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %97 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %94
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %116

105:                                              ; preds = %94
  %106 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  %107 = load i8*, i8** %7, align 8
  %108 = bitcast i8* %107 to i32*
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i32
  %112 = call i32 @ivtv_passthrough_mode(%struct.ivtv* %106, i32 %111)
  store i32 %112, i32* %4, align 4
  br label %116

113:                                              ; preds = %3
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %113, %105, %102, %90, %89, %77, %68, %60, %46, %37
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.ivtv_open_id* @fh2id(i32) #1

declare dso_local i32 @IVTV_DEBUG_IOCTL(i8*) #1

declare dso_local i32 @ivtv_start_decoding(%struct.ivtv_open_id*, i64) #1

declare dso_local i32 @ivtv_set_output_mode(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_release_stream(%struct.ivtv_stream*) #1

declare dso_local i32 @ivtv_yuv_prep_frame(%struct.ivtv*, %struct.ivtv_dma_frame*) #1

declare dso_local i32 @ivtv_passthrough_mode(%struct.ivtv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
