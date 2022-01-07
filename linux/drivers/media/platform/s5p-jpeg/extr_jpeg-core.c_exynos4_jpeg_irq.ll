; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos4_jpeg_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_v4l2_buffer = type { i32 }
%struct.s5p_jpeg = type { i64, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.s5p_jpeg_ctx = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@ERR_PROT = common dso_local global i64 0, align 8
@OK_ENC_OR_DEC = common dso_local global i64 0, align 8
@ERR_DEC_INVALID_FORMAT = common dso_local global i64 0, align 8
@ERR_MULTI_SCAN = common dso_local global i64 0, align 8
@ERR_FRAME = common dso_local global i64 0, align 8
@ERR_UNKNOWN = common dso_local global i8* null, align 8
@S5P_JPEG_ENCODE = common dso_local global i64 0, align 8
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@SJPEG_EXYNOS4 = common dso_local global i64 0, align 8
@S5P_JPEG_DISABLE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @exynos4_jpeg_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos4_jpeg_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca %struct.vb2_v4l2_buffer*, align 8
  %8 = alloca %struct.s5p_jpeg*, align 8
  %9 = alloca %struct.s5p_jpeg_ctx*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.s5p_jpeg*
  store %struct.s5p_jpeg* %12, %struct.s5p_jpeg** %8, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %14 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %13, i32 0, i32 2
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %17 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @exynos4_jpeg_set_sys_int_enable(i32 %18, i32 0)
  %20 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %21 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.s5p_jpeg_ctx* @v4l2_m2m_get_curr_priv(i32 %22)
  store %struct.s5p_jpeg_ctx* %23, %struct.s5p_jpeg_ctx** %9, align 8
  %24 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %9, align 8
  %25 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32 %27)
  store %struct.vb2_v4l2_buffer* %28, %struct.vb2_v4l2_buffer** %6, align 8
  %29 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32 %32)
  store %struct.vb2_v4l2_buffer* %33, %struct.vb2_v4l2_buffer** %7, align 8
  %34 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %35 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @exynos4_jpeg_get_int_status(i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %69

40:                                               ; preds = %2
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, 31
  switch i32 %42, label %63 [
    i32 1, label %43
    i32 2, label %47
    i32 4, label %51
    i32 8, label %55
    i32 16, label %59
  ]

43:                                               ; preds = %40
  %44 = load i64, i64* @ERR_PROT, align 8
  %45 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %46 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %68

47:                                               ; preds = %40
  %48 = load i64, i64* @OK_ENC_OR_DEC, align 8
  %49 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %50 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %68

51:                                               ; preds = %40
  %52 = load i64, i64* @ERR_DEC_INVALID_FORMAT, align 8
  %53 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %54 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %68

55:                                               ; preds = %40
  %56 = load i64, i64* @ERR_MULTI_SCAN, align 8
  %57 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %58 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %68

59:                                               ; preds = %40
  %60 = load i64, i64* @ERR_FRAME, align 8
  %61 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %62 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %68

63:                                               ; preds = %40
  %64 = load i8*, i8** @ERR_UNKNOWN, align 8
  %65 = ptrtoint i8* %64 to i64
  %66 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %67 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %63, %59, %55, %51, %47, %43
  br label %74

69:                                               ; preds = %2
  %70 = load i8*, i8** @ERR_UNKNOWN, align 8
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %73 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %69, %68
  %75 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %76 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @OK_ENC_OR_DEC, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %102

80:                                               ; preds = %74
  %81 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %9, align 8
  %82 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @S5P_JPEG_ENCODE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %88 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @exynos4_jpeg_get_stream_size(i32 %89)
  store i64 %90, i64* %10, align 8
  %91 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %92 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %91, i32 0, i32 0
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @vb2_set_plane_payload(i32* %92, i32 0, i64 %93)
  br label %95

95:                                               ; preds = %86, %80
  %96 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %97 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %98 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %96, i32 %97)
  %99 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %100 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %101 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %99, i32 %100)
  br label %109

102:                                              ; preds = %74
  %103 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %104 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %105 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %103, i32 %104)
  %106 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %7, align 8
  %107 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %108 = call i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer* %106, i32 %107)
  br label %109

109:                                              ; preds = %102, %95
  %110 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %111 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %110, i32 0, i32 4
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SJPEG_EXYNOS4, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %109
  %118 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %119 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @exynos4_jpeg_get_frame_fmt(i32 %120)
  %122 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %9, align 8
  %123 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %117, %109
  %125 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %126 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @S5P_JPEG_DISABLE, align 4
  %129 = call i32 @exynos4_jpeg_set_enc_dec_mode(i32 %127, i32 %128)
  %130 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %131 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %130, i32 0, i32 2
  %132 = call i32 @spin_unlock(i32* %131)
  %133 = load %struct.s5p_jpeg*, %struct.s5p_jpeg** %8, align 8
  %134 = getelementptr inbounds %struct.s5p_jpeg, %struct.s5p_jpeg* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %9, align 8
  %137 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @v4l2_m2m_job_finish(i32 %135, i32 %139)
  %141 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %141
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @exynos4_jpeg_set_sys_int_enable(i32, i32) #1

declare dso_local %struct.s5p_jpeg_ctx* @v4l2_m2m_get_curr_priv(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_src_buf_remove(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_dst_buf_remove(i32) #1

declare dso_local i32 @exynos4_jpeg_get_int_status(i32) #1

declare dso_local i64 @exynos4_jpeg_get_stream_size(i32) #1

declare dso_local i32 @vb2_set_plane_payload(i32*, i32, i64) #1

declare dso_local i32 @v4l2_m2m_buf_done(%struct.vb2_v4l2_buffer*, i32) #1

declare dso_local i32 @exynos4_jpeg_get_frame_fmt(i32) #1

declare dso_local i32 @exynos4_jpeg_set_enc_dec_mode(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @v4l2_m2m_job_finish(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
