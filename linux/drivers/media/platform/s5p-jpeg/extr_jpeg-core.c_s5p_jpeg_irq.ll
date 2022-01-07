; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg = type { i32, i32, i32 }
%struct.s5p_jpeg_ctx = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vb2_v4l2_buffer = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@S5P_JPEG_ENCODE = common dso_local global i64 0, align 8
@S5P_JPEG_DECODE = common dso_local global i64 0, align 8
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TSTAMP_SRC_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @s5p_jpeg_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_jpeg_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.s5p_jpeg*, align 8
  %6 = alloca %struct.s5p_jpeg_ctx*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca %struct.vb2_v4l2_buffer*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.s5p_jpeg*
  store %struct.s5p_jpeg* %15, %struct.s5p_jpeg** %5, align 8
  store i64 0, i64* %9, align 8
  %16 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %5, align 8
  %18 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %17, i32 0, i32 2
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %5, align 8
  %21 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.s5p_jpeg_ctx* @v4l2_m2m_get_curr_priv(i32 %22)
  store %struct.s5p_jpeg_ctx* %23, %struct.s5p_jpeg_ctx** %6, align 8
  %24 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %27)
  store %struct.vb2_v4l2_buffer* %28, %struct.vb2_v4l2_buffer** %7, align 8
  %29 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %30 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %32)
  store %struct.vb2_v4l2_buffer* %33, %struct.vb2_v4l2_buffer** %8, align 8
  %34 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %35 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @S5P_JPEG_ENCODE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %2
  %40 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %5, align 8
  %41 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @s5p_jpeg_enc_stream_stat(i32 %42)
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %39, %2
  %45 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %5, align 8
  %46 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @s5p_jpeg_timer_stat(i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %5, align 8
  %50 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @s5p_jpeg_result_stat_ok(i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %54 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @S5P_JPEG_DECODE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %44
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %5, align 8
  %63 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @s5p_jpeg_stream_stat_ok(i32 %64)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %61, %58
  %68 = phi i1 [ false, %58 ], [ %66, %61 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %67, %44
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %74, i32* %10, align 4
  %75 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %5, align 8
  %76 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @s5p_jpeg_clear_enc_stream_stat(i32 %77)
  br label %100

79:                                               ; preds = %70
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %79
  %83 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %83, i32* %10, align 4
  %84 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %5, align 8
  %85 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @s5p_jpeg_clear_timer_stat(i32 %86)
  br label %99

88:                                               ; preds = %79
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  store i32 %92, i32* %10, align 4
  br label %98

93:                                               ; preds = %88
  %94 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %5, align 8
  %95 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @s5p_jpeg_compressed_size(i32 %96)
  store i64 %97, i64* %9, align 8
  br label %98

98:                                               ; preds = %93, %91
  br label %99

99:                                               ; preds = %98, %82
  br label %100

100:                                              ; preds = %99, %73
  %101 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %102 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %105 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %107 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %111 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %114 = xor i32 %113, -1
  %115 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %116 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %120 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %123 = and i32 %121, %122
  %124 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %125 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  %128 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %128, i32 %129)
  %131 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %132 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @S5P_JPEG_ENCODE, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %100
  %137 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %138 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %137, i32 0, i32 1
  %139 = load i64, i64* %9, align 8
  %140 = call i32 @vb2_set_plane_payload(%struct.TYPE_4__* %138, i32 0, i64 %139)
  br label %141

141:                                              ; preds = %136, %100
  %142 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %8, align 8
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %142, i32 %143)
  %145 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %5, align 8
  %146 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @s5p_jpeg_get_subsampling_mode(i32 %147)
  %149 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %150 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  %151 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %5, align 8
  %152 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %151, i32 0, i32 2
  %153 = call i32 @spin_unlock(i32* %152)
  %154 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %5, align 8
  %155 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @s5p_jpeg_clear_int(i32 %156)
  %158 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %5, align 8
  %159 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %6, align 8
  %162 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @v4l2_m2m_job_finish(i32 %160, i32 %164)
  %166 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %166
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.s5p_jpeg_ctx* @v4l2_m2m_get_curr_priv(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @s5p_jpeg_enc_stream_stat(i32) #1

declare dso_local i32 @s5p_jpeg_timer_stat(i32) #1

declare dso_local i32 @s5p_jpeg_result_stat_ok(i32) #1

declare dso_local i64 @s5p_jpeg_stream_stat_ok(i32) #1

declare dso_local i32 @s5p_jpeg_clear_enc_stream_stat(i32) #1

declare dso_local i32 @s5p_jpeg_clear_timer_stat(i32) #1

declare dso_local i64 @s5p_jpeg_compressed_size(i32) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.TYPE_4__*, i32, i64) #1

declare dso_local i32 @s5p_jpeg_get_subsampling_mode(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @s5p_jpeg_clear_int(i32) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
