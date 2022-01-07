; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_buf_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_buf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.vb2_queue* }
%struct.vb2_queue = type { i64 }
%struct.vb2_v4l2_buffer = type { i64 }
%struct.coda_ctx = type { i64, %struct.TYPE_10__, i32, i64, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.coda_q_data = type { i64 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_H264 = common dso_local global i64 0, align 8
@CODA_INST_ENCODER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*)* @coda_buf_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_buf_queue(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.coda_ctx*, align 8
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca %struct.coda_q_data*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %8 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %7)
  store %struct.vb2_v4l2_buffer* %8, %struct.vb2_v4l2_buffer** %3, align 8
  %9 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %10 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %9, i32 0, i32 0
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %10, align 8
  %12 = call %struct.coda_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %11)
  store %struct.coda_ctx* %12, %struct.coda_ctx** %4, align 8
  %13 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %14 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %13, i32 0, i32 0
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %14, align 8
  store %struct.vb2_queue* %15, %struct.vb2_queue** %5, align 8
  %16 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %17 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %18 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %17, i32 0, i32 0
  %19 = load %struct.vb2_queue*, %struct.vb2_queue** %18, align 8
  %20 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %16, i64 %21)
  store %struct.coda_q_data* %22, %struct.coda_q_data** %6, align 8
  %23 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %129

28:                                               ; preds = %1
  %29 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %30 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %129

34:                                               ; preds = %28
  %35 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %36 = call i64 @vb2_get_plane_payload(%struct.vb2_buffer* %35, i32 0)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %40 = call i32 @coda_bit_stream_end_flag(%struct.coda_ctx* %39)
  br label %41

41:                                               ; preds = %38, %34
  %42 = load %struct.coda_q_data*, %struct.coda_q_data** %6, align 8
  %43 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @V4L2_PIX_FMT_H264, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %41
  %48 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %49 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %47
  %54 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %55 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %56 = call i32 @coda_sps_parse_profile(%struct.coda_ctx* %54, %struct.vb2_buffer* %55)
  %57 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %58 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %59 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %63 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @coda_update_profile_level_ctrls(%struct.coda_ctx* %57, i32 %61, i32 %65)
  br label %67

67:                                               ; preds = %53, %47
  br label %68

68:                                               ; preds = %67, %41
  %69 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %70 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %69, i32 0, i32 7
  %71 = call i32 @mutex_lock(i32* %70)
  %72 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %73 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %77 = call i32 @v4l2_m2m_buf_queue(i32 %75, %struct.vb2_v4l2_buffer* %76)
  %78 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %79 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %78, i32 0, i32 0
  %80 = load %struct.vb2_queue*, %struct.vb2_queue** %79, align 8
  %81 = call i64 @vb2_is_streaming(%struct.vb2_queue* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %68
  %84 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %85 = call i32 @coda_fill_bitstream(%struct.coda_ctx* %84, i32* null)
  br label %86

86:                                               ; preds = %83, %68
  %87 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %87, i32 0, i32 7
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %91 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %128, label %94

94:                                               ; preds = %86
  %95 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %96 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %95, i32 0, i32 0
  %97 = load %struct.vb2_queue*, %struct.vb2_queue** %96, align 8
  %98 = call i64 @vb2_is_streaming(%struct.vb2_queue* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %94
  %101 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %102 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %101, i32 0, i32 6
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %100
  %108 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %109 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %108, i32 0, i32 5
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %114 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %113, i32 0, i32 4
  %115 = call i32 @queue_work(i32 %112, i32* %114)
  %116 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %117 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %116, i32 0, i32 4
  %118 = call i32 @flush_work(i32* %117)
  br label %119

119:                                              ; preds = %107, %100, %94
  %120 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %121 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %126 = call i32 @coda_queue_source_change_event(%struct.coda_ctx* %125)
  br label %127

127:                                              ; preds = %124, %119
  br label %128

128:                                              ; preds = %127, %86
  br label %156

129:                                              ; preds = %28, %1
  %130 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %131 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @CODA_INST_ENCODER, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %129
  %136 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %137 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %135
  %142 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %143 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  %146 = sext i32 %144 to i64
  %147 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %148 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  br label %149

149:                                              ; preds = %141, %135, %129
  %150 = load %struct.coda_ctx*, %struct.coda_ctx** %4, align 8
  %151 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %155 = call i32 @v4l2_m2m_buf_queue(i32 %153, %struct.vb2_v4l2_buffer* %154)
  br label %156

156:                                              ; preds = %149, %128
  ret void
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local %struct.coda_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local %struct.coda_q_data* @get_q_data(%struct.coda_ctx*, i64) #1

declare dso_local i64 @vb2_get_plane_payload(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @coda_bit_stream_end_flag(%struct.coda_ctx*) #1

declare dso_local i32 @coda_sps_parse_profile(%struct.coda_ctx*, %struct.vb2_buffer*) #1

declare dso_local i32 @coda_update_profile_level_ctrls(%struct.coda_ctx*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_m2m_buf_queue(i32, %struct.vb2_v4l2_buffer*) #1

declare dso_local i64 @vb2_is_streaming(%struct.vb2_queue*) #1

declare dso_local i32 @coda_fill_bitstream(%struct.coda_ctx*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @coda_queue_source_change_event(%struct.coda_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
