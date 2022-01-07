; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_buf_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_vdec_buf_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i64, i32, i32, i32 }
%struct.vb2_v4l2_buffer = type { i32, i64, %struct.vb2_buffer, i32 }
%struct.vb2_buffer = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_event = type { i32 }

@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@HFI_BUFFER_INPUT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_LAST = common dso_local global i32 0, align 4
@V4L2_EVENT_EOS = common dso_local global i32 0, align 4
@VENUS_DEC_STATE_DRAIN = common dso_local global i64 0, align 8
@VENUS_DEC_STATE_STOPPED = common dso_local global i64 0, align 8
@HFI_BUFFERFLAG_READONLY = common dso_local global i32 0, align 4
@HFI_BUFFERFLAG_DATACORRUPT = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@HFI_BUFFERFLAG_DROP_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_inst*, i32, i32, i32, i32, i32, i32, i32)* @vdec_buf_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdec_buf_done(%struct.venus_inst* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.venus_inst*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.vb2_v4l2_buffer*, align 8
  %19 = alloca %struct.vb2_buffer*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.v4l2_event, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %22 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  store i32 %22, i32* %17, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @HFI_BUFFER_INPUT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %8
  %27 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  store i32 %27, i32* %20, align 4
  br label %30

28:                                               ; preds = %8
  %29 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  store i32 %29, i32* %20, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %32 = load i32, i32* %20, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call %struct.vb2_v4l2_buffer* @venus_helper_find_buf(%struct.venus_inst* %31, i32 %32, i32 %33)
  store %struct.vb2_v4l2_buffer* %34, %struct.vb2_v4l2_buffer** %18, align 8
  %35 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %18, align 8
  %36 = icmp ne %struct.vb2_v4l2_buffer* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %137

38:                                               ; preds = %30
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %18, align 8
  %41 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %43 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %18, align 8
  %44 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %18, align 8
  %46 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %45, i32 0, i32 2
  store %struct.vb2_buffer* %46, %struct.vb2_buffer** %19, align 8
  %47 = load i32, i32* %20, align 4
  %48 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %95

50:                                               ; preds = %38
  %51 = load %struct.vb2_buffer*, %struct.vb2_buffer** %19, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %51, i32 0, i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.vb2_buffer*, %struct.vb2_buffer** %19, align 8
  %56 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @NSEC_PER_USEC, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load %struct.vb2_buffer*, %struct.vb2_buffer** %19, align 8
  %64 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %66 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = sext i32 %67 to i64
  %70 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %18, align 8
  %71 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %18, align 8
  %73 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %50
  %79 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %21, i32 0, i32 0
  %80 = load i32, i32* @V4L2_EVENT_EOS, align 4
  store i32 %80, i32* %79, align 4
  %81 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %82 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %81, i32 0, i32 2
  %83 = call i32 @v4l2_event_queue_fh(i32* %82, %struct.v4l2_event* %21)
  %84 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %85 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @VENUS_DEC_STATE_DRAIN, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %78
  %90 = load i64, i64* @VENUS_DEC_STATE_STOPPED, align 8
  %91 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %92 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %89, %78
  br label %94

94:                                               ; preds = %93, %50
  br label %103

95:                                               ; preds = %38
  %96 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %97 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 8
  %100 = sext i32 %98 to i64
  %101 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %18, align 8
  %102 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %101, i32 0, i32 1
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %95, %94
  %104 = load %struct.venus_inst*, %struct.venus_inst** %9, align 8
  %105 = load i32, i32* %16, align 4
  %106 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %18, align 8
  %107 = call i32 @venus_helper_get_ts_metadata(%struct.venus_inst* %104, i32 %105, %struct.vb2_v4l2_buffer* %106)
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* @HFI_BUFFERFLAG_READONLY, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %18, align 8
  %114 = call i32 @venus_helper_acquire_buf_ref(%struct.vb2_v4l2_buffer* %113)
  br label %115

115:                                              ; preds = %112, %103
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* @HFI_BUFFERFLAG_DATACORRUPT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %120, %115
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* @HFI_BUFFERFLAG_DROP_FRAME, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %128, i32* %17, align 4
  %129 = load %struct.vb2_buffer*, %struct.vb2_buffer** %19, align 8
  %130 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %129, i32 0, i32 0)
  %131 = load %struct.vb2_buffer*, %struct.vb2_buffer** %19, align 8
  %132 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  br label %133

133:                                              ; preds = %127, %122
  %134 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %18, align 8
  %135 = load i32, i32* %17, align 4
  %136 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %37
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @venus_helper_find_buf(%struct.venus_inst*, i32, i32) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i32) #1

declare dso_local i32 @v4l2_event_queue_fh(i32*, %struct.v4l2_event*) #1

declare dso_local i32 @venus_helper_get_ts_metadata(%struct.venus_inst*, i32, %struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @venus_helper_acquire_buf_ref(%struct.vb2_v4l2_buffer*) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
