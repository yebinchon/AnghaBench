; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_vb2ops_venc_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_enc.c_vb2ops_venc_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32, i32 }
%struct.mtk_vcodec_ctx = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_11__*, i32, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.venc_enc_param = type { i32 }
%struct.vb2_buffer = type { i64 }

@MTK_STATE_ABORT = common dso_local global i64 0, align 8
@MTK_STATE_FREE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@VENC_SET_PARAM_ENC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"venc_if_set_param failed=%d\00", align 1
@MTK_ENCODE_PARAM_NONE = common dso_local global i32 0, align 4
@MTK_Q_DATA_DST = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_H264 = common dso_local global i64 0, align 8
@V4L2_MPEG_VIDEO_HEADER_MODE_SEPARATE = common dso_local global i64 0, align 8
@VENC_SET_PARAM_PREPEND_HEADER = common dso_local global i32 0, align 4
@MTK_STATE_HEADER = common dso_local global i64 0, align 8
@VB2_BUF_STATE_ACTIVE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"[%d] id=%d, type=%d, %d -> VB2_BUF_STATE_QUEUED\00", align 1
@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @vb2ops_venc_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vb2ops_venc_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtk_vcodec_ctx*, align 8
  %7 = alloca %struct.venc_enc_param, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vb2_buffer*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %12 = call %struct.mtk_vcodec_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %11)
  store %struct.mtk_vcodec_ctx* %12, %struct.mtk_vcodec_ctx** %6, align 8
  %13 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %14 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MTK_STATE_ABORT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MTK_STATE_FREE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %2
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %106

27:                                               ; preds = %18
  %28 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %29 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %34, i32 0, i32 5
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = call i32 @vb2_start_streaming_called(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %145

42:                                               ; preds = %33
  br label %53

43:                                               ; preds = %27
  %44 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %44, i32 0, i32 5
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = call i32 @vb2_start_streaming_called(i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %145

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %42
  %54 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %55 = call i32 @mtk_venc_set_param(%struct.mtk_vcodec_ctx* %54, %struct.venc_enc_param* %7)
  %56 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %57 = load i32, i32* @VENC_SET_PARAM_ENC, align 4
  %58 = call i32 @venc_if_set_param(%struct.mtk_vcodec_ctx* %56, i32 %57, %struct.venc_enc_param* %7)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @mtk_v4l2_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i64, i64* @MTK_STATE_ABORT, align 8
  %65 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %106

67:                                               ; preds = %53
  %68 = load i32, i32* @MTK_ENCODE_PARAM_NONE, align 4
  %69 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %70 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %72 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %71, i32 0, i32 3
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %72, align 8
  %74 = load i64, i64* @MTK_Q_DATA_DST, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @V4L2_PIX_FMT_H264, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %67
  %83 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %84 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @V4L2_MPEG_VIDEO_HEADER_MODE_SEPARATE, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %82
  %90 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %91 = load i32, i32* @VENC_SET_PARAM_PREPEND_HEADER, align 4
  %92 = call i32 @venc_if_set_param(%struct.mtk_vcodec_ctx* %90, i32 %91, %struct.venc_enc_param* null)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @mtk_v4l2_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %96)
  %98 = load i64, i64* @MTK_STATE_ABORT, align 8
  %99 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %100 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %106

101:                                              ; preds = %89
  %102 = load i64, i64* @MTK_STATE_HEADER, align 8
  %103 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %104 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %101, %82, %67
  store i32 0, i32* %3, align 4
  br label %145

106:                                              ; preds = %95, %61, %24
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %140, %106
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %110 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %143

113:                                              ; preds = %107
  %114 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call %struct.vb2_buffer* @vb2_get_buffer(%struct.vb2_queue* %114, i32 %115)
  store %struct.vb2_buffer* %116, %struct.vb2_buffer** %10, align 8
  %117 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %118 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @VB2_BUF_STATE_ACTIVE, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %113
  %123 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %124 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %128 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %131 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 @mtk_v4l2_debug(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %125, i32 %126, i32 %129, i32 %133)
  %135 = load %struct.vb2_buffer*, %struct.vb2_buffer** %10, align 8
  %136 = call i32 @to_vb2_v4l2_buffer(%struct.vb2_buffer* %135)
  %137 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %138 = call i32 @v4l2_m2m_buf_done(i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %122, %113
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %107

143:                                              ; preds = %107
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %143, %105, %51, %41
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.mtk_vcodec_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @vb2_start_streaming_called(i32*) #1

declare dso_local i32 @mtk_venc_set_param(%struct.mtk_vcodec_ctx*, %struct.venc_enc_param*) #1

declare dso_local i32 @venc_if_set_param(%struct.mtk_vcodec_ctx*, i32, %struct.venc_enc_param*) #1

declare dso_local i32 @mtk_v4l2_err(i8*, i32) #1

declare dso_local %struct.vb2_buffer* @vb2_get_buffer(%struct.vb2_queue*, i32) #1

declare dso_local i32 @mtk_v4l2_debug(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(i32, i32) #1

declare dso_local i32 @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
