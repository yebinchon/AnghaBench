; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-m2m.c_fimc_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_v4l2_buffer = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.fimc_ctx = type { i32, %struct.TYPE_5__, %struct.fimc_frame, %struct.fimc_frame, %struct.fimc_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.fimc_frame = type { i32 }
%struct.fimc_dev = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.fimc_ctx* }

@.str = private unnamed_addr constant [14 x i8] c"Null context\0A\00", align 1
@ST_M2M_PEND = common dso_local global i32 0, align 4
@FIMC_PARAMS = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TSTAMP_SRC_MASK = common dso_local global i32 0, align 4
@FIMC_CTX_M2M = common dso_local global i32 0, align 4
@FIMC_CTX_CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fimc_device_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_device_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.vb2_v4l2_buffer*, align 8
  %5 = alloca %struct.fimc_ctx*, align 8
  %6 = alloca %struct.fimc_frame*, align 8
  %7 = alloca %struct.fimc_frame*, align 8
  %8 = alloca %struct.fimc_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.fimc_ctx*
  store %struct.fimc_ctx* %12, %struct.fimc_ctx** %5, align 8
  %13 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %14 = icmp ne %struct.fimc_ctx* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN(i32 %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %189

20:                                               ; preds = %1
  %21 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %22 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %21, i32 0, i32 4
  %23 = load %struct.fimc_dev*, %struct.fimc_dev** %22, align 8
  store %struct.fimc_dev* %23, %struct.fimc_dev** %8, align 8
  %24 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %25 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i32, i32* @ST_M2M_PEND, align 4
  %29 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %30 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %29, i32 0, i32 3
  %31 = call i32 @set_bit(i32 %28, i32* %30)
  %32 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %32, i32 0, i32 3
  store %struct.fimc_frame* %33, %struct.fimc_frame** %6, align 8
  %34 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %35 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %34, i32 0, i32 2
  store %struct.fimc_frame* %35, %struct.fimc_frame** %7, align 8
  %36 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FIMC_PARAMS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %20
  %43 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %44 = load %struct.fimc_frame*, %struct.fimc_frame** %6, align 8
  %45 = call i32 @fimc_prepare_dma_offset(%struct.fimc_ctx* %43, %struct.fimc_frame* %44)
  %46 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %47 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %48 = call i32 @fimc_prepare_dma_offset(%struct.fimc_ctx* %46, %struct.fimc_frame* %47)
  br label %49

49:                                               ; preds = %42, %20
  %50 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %53)
  store %struct.vb2_v4l2_buffer* %54, %struct.vb2_v4l2_buffer** %3, align 8
  %55 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %56 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %57 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %56, i32 0, i32 1
  %58 = load %struct.fimc_frame*, %struct.fimc_frame** %6, align 8
  %59 = load %struct.fimc_frame*, %struct.fimc_frame** %6, align 8
  %60 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %59, i32 0, i32 0
  %61 = call i32 @fimc_prepare_addr(%struct.fimc_ctx* %55, %struct.TYPE_8__* %57, %struct.fimc_frame* %58, i32* %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  br label %184

65:                                               ; preds = %49
  %66 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %69)
  store %struct.vb2_v4l2_buffer* %70, %struct.vb2_v4l2_buffer** %4, align 8
  %71 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %72 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %73 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %72, i32 0, i32 1
  %74 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %75 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %76 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %75, i32 0, i32 0
  %77 = call i32 @fimc_prepare_addr(%struct.fimc_ctx* %71, %struct.TYPE_8__* %73, %struct.fimc_frame* %74, i32* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %65
  br label %184

81:                                               ; preds = %65
  %82 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %83 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %87 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %92 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %96 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @V4L2_BUF_FLAG_TSTAMP_SRC_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %4, align 8
  %101 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  %104 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %105 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load %struct.fimc_ctx*, %struct.fimc_ctx** %106, align 8
  %108 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %109 = icmp ne %struct.fimc_ctx* %107, %108
  br i1 %109, label %110, label %120

110:                                              ; preds = %81
  %111 = load i32, i32* @FIMC_PARAMS, align 4
  %112 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %113 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %117 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %118 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store %struct.fimc_ctx* %116, %struct.fimc_ctx** %119, align 8
  br label %120

120:                                              ; preds = %110, %81
  %121 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %122 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @FIMC_PARAMS, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %164

127:                                              ; preds = %120
  %128 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %129 = call i32 @fimc_set_yuv_order(%struct.fimc_ctx* %128)
  %130 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %131 = call i32 @fimc_hw_set_input_path(%struct.fimc_ctx* %130)
  %132 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %133 = call i32 @fimc_hw_set_in_dma(%struct.fimc_ctx* %132)
  %134 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %135 = call i32 @fimc_set_scaler_info(%struct.fimc_ctx* %134)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %127
  br label %184

139:                                              ; preds = %127
  %140 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %141 = call i32 @fimc_hw_set_prescaler(%struct.fimc_ctx* %140)
  %142 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %143 = call i32 @fimc_hw_set_mainscaler(%struct.fimc_ctx* %142)
  %144 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %145 = call i32 @fimc_hw_set_target_format(%struct.fimc_ctx* %144)
  %146 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %147 = call i32 @fimc_hw_set_rotation(%struct.fimc_ctx* %146)
  %148 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %149 = call i32 @fimc_hw_set_effect(%struct.fimc_ctx* %148)
  %150 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %151 = call i32 @fimc_hw_set_out_dma(%struct.fimc_ctx* %150)
  %152 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %153 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %152, i32 0, i32 1
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %139
  %159 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %160 = call i32 @fimc_hw_set_rgb_alpha(%struct.fimc_ctx* %159)
  br label %161

161:                                              ; preds = %158, %139
  %162 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %163 = call i32 @fimc_hw_set_output_path(%struct.fimc_ctx* %162)
  br label %164

164:                                              ; preds = %161, %120
  %165 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %166 = load %struct.fimc_frame*, %struct.fimc_frame** %6, align 8
  %167 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %166, i32 0, i32 0
  %168 = call i32 @fimc_hw_set_input_addr(%struct.fimc_dev* %165, i32* %167)
  %169 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %170 = load %struct.fimc_frame*, %struct.fimc_frame** %7, align 8
  %171 = getelementptr inbounds %struct.fimc_frame, %struct.fimc_frame* %170, i32 0, i32 0
  %172 = call i32 @fimc_hw_set_output_addr(%struct.fimc_dev* %169, i32* %171, i32 -1)
  %173 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %174 = call i32 @fimc_activate_capture(%struct.fimc_ctx* %173)
  %175 = load i32, i32* @FIMC_CTX_M2M, align 4
  %176 = load i32, i32* @FIMC_CTX_CAP, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.fimc_ctx*, %struct.fimc_ctx** %5, align 8
  %179 = getelementptr inbounds %struct.fimc_ctx, %struct.fimc_ctx* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = and i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %183 = call i32 @fimc_hw_activate_input_dma(%struct.fimc_dev* %182, i32 1)
  br label %184

184:                                              ; preds = %164, %138, %80, %64
  %185 = load %struct.fimc_dev*, %struct.fimc_dev** %8, align 8
  %186 = getelementptr inbounds %struct.fimc_dev, %struct.fimc_dev* %185, i32 0, i32 0
  %187 = load i64, i64* %9, align 8
  %188 = call i32 @spin_unlock_irqrestore(i32* %186, i64 %187)
  br label %189

189:                                              ; preds = %184, %19
  ret void
}

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @fimc_prepare_dma_offset(%struct.fimc_ctx*, %struct.fimc_frame*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local i32 @fimc_prepare_addr(%struct.fimc_ctx*, %struct.TYPE_8__*, %struct.fimc_frame*, i32*) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #1

declare dso_local i32 @fimc_set_yuv_order(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_input_path(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_in_dma(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_set_scaler_info(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_prescaler(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_mainscaler(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_target_format(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_rotation(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_effect(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_out_dma(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_rgb_alpha(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_output_path(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_set_input_addr(%struct.fimc_dev*, i32*) #1

declare dso_local i32 @fimc_hw_set_output_addr(%struct.fimc_dev*, i32*, i32) #1

declare dso_local i32 @fimc_activate_capture(%struct.fimc_ctx*) #1

declare dso_local i32 @fimc_hw_activate_input_dma(%struct.fimc_dev*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
