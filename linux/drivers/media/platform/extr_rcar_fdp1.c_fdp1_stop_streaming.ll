; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_fdp1.c_fdp1_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.fdp1_ctx = type { %struct.TYPE_6__*, %struct.fdp1_field_buffer*, i32, i32, i32*, i64*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.fdp1_field_buffer = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32 }
%struct.fdp1_job = type { %struct.TYPE_5__*, %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer* }
%struct.TYPE_5__ = type { %struct.vb2_v4l2_buffer* }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Buffer queue not empty\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Queued Job List not empty\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"HW Job list not empty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @fdp1_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdp1_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.fdp1_ctx*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fdp1_field_buffer*, align 8
  %7 = alloca %struct.fdp1_job*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %9 = call %struct.fdp1_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %8)
  store %struct.fdp1_ctx* %9, %struct.fdp1_ctx** %3, align 8
  br label %10

10:                                               ; preds = %1, %32
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %12 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %17, i32 0, i32 7
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %20)
  store %struct.vb2_v4l2_buffer* %21, %struct.vb2_v4l2_buffer** %4, align 8
  br label %28

22:                                               ; preds = %10
  %23 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %23, i32 0, i32 7
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %26)
  store %struct.vb2_v4l2_buffer* %27, %struct.vb2_v4l2_buffer** %4, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %30 = icmp eq %struct.vb2_v4l2_buffer* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %48

32:                                               ; preds = %28
  %33 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %40 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %41 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %39, i32 %40)
  %42 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  br label %10

48:                                               ; preds = %31
  %49 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %50 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %107

54:                                               ; preds = %48
  %55 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %56 = call %struct.fdp1_field_buffer* @fdp1_dequeue_field(%struct.fdp1_ctx* %55)
  store %struct.fdp1_field_buffer* %56, %struct.fdp1_field_buffer** %6, align 8
  br label %57

57:                                               ; preds = %60, %54
  %58 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %6, align 8
  %59 = icmp ne %struct.fdp1_field_buffer* %58, null
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %62 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %6, align 8
  %63 = call i32 @fdp1_field_complete(%struct.fdp1_ctx* %61, %struct.fdp1_field_buffer* %62)
  %64 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %65 = call %struct.fdp1_field_buffer* @fdp1_dequeue_field(%struct.fdp1_ctx* %64)
  store %struct.fdp1_field_buffer* %65, %struct.fdp1_field_buffer** %6, align 8
  br label %57

66:                                               ; preds = %57
  %67 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %99

71:                                               ; preds = %66
  %72 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %83, i32 0, i32 5
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @dma_free_coherent(i32 %76, i32 %79, i32* %82, i64 %87)
  %89 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %90 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %89, i32 0, i32 5
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %94 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %93, i32 0, i32 5
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  store i64 0, i64* %96, align 8
  %97 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %98 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %97, i32 0, i32 4
  store i32* null, i32** %98, align 8
  br label %99

99:                                               ; preds = %71, %66
  %100 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %101 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %100, i32 0, i32 3
  %102 = call i32 @list_empty(i32* %101)
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @WARN(i32 %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %171

107:                                              ; preds = %48
  %108 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %109 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = call %struct.fdp1_job* @get_queued_job(%struct.TYPE_6__* %110)
  store %struct.fdp1_job* %111, %struct.fdp1_job** %7, align 8
  br label %112

112:                                              ; preds = %133, %107
  %113 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %114 = icmp ne %struct.fdp1_job* %113, null
  br i1 %114, label %115, label %147

115:                                              ; preds = %112
  %116 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %117 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @FDP1_DEINT_MODE_USES_PREV(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %123 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %124 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %123, i32 0, i32 2
  %125 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %124, align 8
  %126 = call i32 @fdp1_field_complete(%struct.fdp1_ctx* %122, %struct.fdp1_field_buffer* %125)
  br label %133

127:                                              ; preds = %115
  %128 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %129 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %130 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %129, i32 0, i32 1
  %131 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %130, align 8
  %132 = call i32 @fdp1_field_complete(%struct.fdp1_ctx* %128, %struct.fdp1_field_buffer* %131)
  br label %133

133:                                              ; preds = %127, %121
  %134 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %135 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %134, i32 0, i32 0
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %137, align 8
  %139 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %140 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %138, i32 %139)
  %141 = load %struct.fdp1_job*, %struct.fdp1_job** %7, align 8
  %142 = getelementptr inbounds %struct.fdp1_job, %struct.fdp1_job* %141, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %142, align 8
  %143 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %144 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %143, i32 0, i32 0
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = call %struct.fdp1_job* @get_queued_job(%struct.TYPE_6__* %145)
  store %struct.fdp1_job* %146, %struct.fdp1_job** %7, align 8
  br label %112

147:                                              ; preds = %112
  %148 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %149 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %150 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %149, i32 0, i32 1
  %151 = load %struct.fdp1_field_buffer*, %struct.fdp1_field_buffer** %150, align 8
  %152 = call i32 @fdp1_field_complete(%struct.fdp1_ctx* %148, %struct.fdp1_field_buffer* %151)
  %153 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %154 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = call i32 @list_empty(i32* %156)
  %158 = icmp ne i32 %157, 0
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = call i32 @WARN(i32 %160, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %162 = load %struct.fdp1_ctx*, %struct.fdp1_ctx** %3, align 8
  %163 = getelementptr inbounds %struct.fdp1_ctx, %struct.fdp1_ctx* %162, i32 0, i32 0
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = call i32 @list_empty(i32* %165)
  %167 = icmp ne i32 %166, 0
  %168 = xor i1 %167, true
  %169 = zext i1 %168 to i32
  %170 = call i32 @WARN(i32 %169, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %171

171:                                              ; preds = %147, %99
  ret void
}

declare dso_local %struct.fdp1_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.fdp1_field_buffer* @fdp1_dequeue_field(%struct.fdp1_ctx*) #1

declare dso_local i32 @fdp1_field_complete(%struct.fdp1_ctx*, %struct.fdp1_field_buffer*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.fdp1_job* @get_queued_job(%struct.TYPE_6__*) #1

declare dso_local i64 @FDP1_DEINT_MODE_USES_PREV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
