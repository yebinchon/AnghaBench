; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vicodec_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vicodec/extr_vicodec-core.c_vicodec_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.vicodec_ctx = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_5__, i32, i32, %struct.TYPE_6__, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32, i32 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_LAST = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@vicodec_eos_event = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @vicodec_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vicodec_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.vicodec_ctx*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %5 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %6 = call %struct.vicodec_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %5)
  store %struct.vicodec_ctx* %6, %struct.vicodec_ctx** %3, align 8
  %7 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %8 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %9 = call i32 @vicodec_return_bufs(%struct.vb2_queue* %7, i32 %8)
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %11 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %60

15:                                               ; preds = %1
  %16 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %59

20:                                               ; preds = %15
  %21 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %21, i32 0, i32 15
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @spin_lock(i32 %23)
  %25 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %25, i32 0, i32 17
  store i32* null, i32** %26, align 8
  %27 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %27, i32 0, i32 16
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %30)
  store %struct.vb2_v4l2_buffer* %31, %struct.vb2_v4l2_buffer** %4, align 8
  %32 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %33 = icmp ne %struct.vb2_v4l2_buffer* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %20
  %35 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %54

37:                                               ; preds = %20
  %38 = load i32, i32* @V4L2_BUF_FLAG_LAST, align 4
  %39 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %40 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %44 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %43, i32 0, i32 0
  %45 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %46 = call i32 @vb2_buffer_done(i32* %44, i32 %45)
  %47 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %49, i32 0, i32 2
  store i32 1, i32* %50, align 8
  %51 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %52 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %51, i32 0, i32 16
  %53 = call i32 @v4l2_event_queue_fh(%struct.TYPE_6__* %52, i32* @vicodec_eos_event)
  br label %54

54:                                               ; preds = %37, %34
  %55 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %55, i32 0, i32 15
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @spin_unlock(i32 %57)
  br label %59

59:                                               ; preds = %54, %15
  br label %67

60:                                               ; preds = %1
  %61 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %64 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %63, i32 0, i32 2
  store i32 0, i32* %64, align 8
  %65 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %66 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %60, %59
  %68 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %69 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %68, i32 0, i32 11
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %67
  %73 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %74 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %79, i32 0, i32 3
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %72, %67
  %82 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %83 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %81
  %88 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %88, i32 0, i32 11
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %87, %81
  %93 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %94 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %128

98:                                               ; preds = %92
  %99 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %100 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %99, i32 0, i32 11
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %128

103:                                              ; preds = %98, %87
  %104 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %105 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %104, i32 0, i32 14
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %103
  %109 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %110 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %109, i32 0, i32 13
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @kvfree(i32* %113)
  br label %115

115:                                              ; preds = %108, %103
  %116 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %117 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %116, i32 0, i32 13
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i32* null, i32** %119, align 8
  %120 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %121 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %120, i32 0, i32 13
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i32* null, i32** %123, align 8
  %124 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %125 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %124, i32 0, i32 12
  store i64 0, i64* %125, align 8
  %126 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %127 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %126, i32 0, i32 4
  store i32 0, i32* %127, align 8
  br label %128

128:                                              ; preds = %115, %98, %92
  %129 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %130 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %128
  %135 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %136 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %135, i32 0, i32 11
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %152, label %139

139:                                              ; preds = %134
  %140 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %141 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %140, i32 0, i32 10
  store i64 0, i64* %141, align 8
  %142 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %143 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %142, i32 0, i32 9
  store i64 0, i64* %143, align 8
  %144 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %145 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %144, i32 0, i32 8
  store i64 0, i64* %145, align 8
  %146 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %147 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %146, i32 0, i32 7
  store i64 0, i64* %147, align 8
  %148 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %149 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %148, i32 0, i32 6
  store i64 0, i64* %149, align 8
  %150 = load %struct.vicodec_ctx*, %struct.vicodec_ctx** %3, align 8
  %151 = getelementptr inbounds %struct.vicodec_ctx, %struct.vicodec_ctx* %150, i32 0, i32 5
  store i64 0, i64* %151, align 8
  br label %152

152:                                              ; preds = %139, %134, %128
  ret void
}

declare dso_local %struct.vicodec_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @vicodec_return_bufs(%struct.vb2_queue*, i32) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @vb2_buffer_done(i32*, i32) #1

declare dso_local i32 @v4l2_event_queue_fh(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
