; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos-gsc/extr_gsc-m2m.c_gsc_m2m_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_ctx = type { i32, %struct.TYPE_5__, %struct.TYPE_6__, %struct.gsc_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.gsc_dev = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.gsc_ctx* }

@.str = private unnamed_addr constant [23 x i8] c"null hardware context\0A\00", align 1
@ST_M2M_PEND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"gsc->m2m.ctx = 0x%p, current_ctx = 0x%p\00", align 1
@GSC_PARAMS = common dso_local global i32 0, align 4
@GSC_CTX_STOP_REQ = common dso_local global i32 0, align 4
@GSC_CTX_ABORT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"Wrong address\00", align 1
@GSC_M2M_BUF_NUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Scaler setup error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @gsc_m2m_device_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsc_m2m_device_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.gsc_ctx*, align 8
  %4 = alloca %struct.gsc_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.gsc_ctx*
  store %struct.gsc_ctx* %9, %struct.gsc_ctx** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %11 = icmp ne %struct.gsc_ctx* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN(i32 %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %167

17:                                               ; preds = %1
  %18 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %18, i32 0, i32 3
  %20 = load %struct.gsc_dev*, %struct.gsc_dev** %19, align 8
  store %struct.gsc_dev* %20, %struct.gsc_dev** %4, align 8
  %21 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %22 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load i32, i32* @ST_M2M_PEND, align 4
  %26 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %27 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %26, i32 0, i32 3
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  %29 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %30 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.gsc_ctx*, %struct.gsc_ctx** %31, align 8
  %33 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %34 = icmp ne %struct.gsc_ctx* %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %17
  %36 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %37 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.gsc_ctx*, %struct.gsc_ctx** %38, align 8
  %40 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.gsc_ctx* %39, %struct.gsc_ctx* %40)
  %42 = load i32, i32* @GSC_PARAMS, align 4
  %43 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %44 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %48 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %49 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store %struct.gsc_ctx* %47, %struct.gsc_ctx** %50, align 8
  br label %51

51:                                               ; preds = %35, %17
  %52 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @GSC_CTX_STOP_REQ, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %51
  %60 = load i32, i32* @GSC_CTX_STOP_REQ, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* @GSC_CTX_ABORT, align 4
  %67 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %72 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %71, i32 0, i32 1
  %73 = call i32 @wake_up(i32* %72)
  br label %156

74:                                               ; preds = %51
  %75 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %76 = call i32 @gsc_get_bufs(%struct.gsc_ctx* %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %156

81:                                               ; preds = %74
  %82 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %83 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %83, i32 0, i32 2
  %85 = call i32 @gsc_set_prefbuf(%struct.gsc_dev* %82, %struct.TYPE_6__* %84)
  %86 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %87 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %88 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* @GSC_M2M_BUF_NUM, align 4
  %91 = call i32 @gsc_hw_set_input_addr(%struct.gsc_dev* %86, i32* %89, i32 %90)
  %92 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %93 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %94 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* @GSC_M2M_BUF_NUM, align 4
  %97 = call i32 @gsc_hw_set_output_addr(%struct.gsc_dev* %92, i32* %95, i32 %96)
  %98 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %99 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @GSC_PARAMS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %141

104:                                              ; preds = %81
  %105 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %106 = load i32, i32* @GSC_M2M_BUF_NUM, align 4
  %107 = call i32 @gsc_hw_set_input_buf_masking(%struct.gsc_dev* %105, i32 %106, i32 0)
  %108 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %109 = load i32, i32* @GSC_M2M_BUF_NUM, align 4
  %110 = call i32 @gsc_hw_set_output_buf_masking(%struct.gsc_dev* %108, i32 %109, i32 0)
  %111 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %112 = call i32 @gsc_hw_set_frm_done_irq_mask(%struct.gsc_dev* %111, i32 0)
  %113 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %114 = call i32 @gsc_hw_set_gsc_irq_enable(%struct.gsc_dev* %113, i32 1)
  %115 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %116 = call i64 @gsc_set_scaler_info(%struct.gsc_ctx* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %104
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %156

120:                                              ; preds = %104
  %121 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %122 = call i32 @gsc_hw_set_input_path(%struct.gsc_ctx* %121)
  %123 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %124 = call i32 @gsc_hw_set_in_size(%struct.gsc_ctx* %123)
  %125 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %126 = call i32 @gsc_hw_set_in_image_format(%struct.gsc_ctx* %125)
  %127 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %128 = call i32 @gsc_hw_set_output_path(%struct.gsc_ctx* %127)
  %129 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %130 = call i32 @gsc_hw_set_out_size(%struct.gsc_ctx* %129)
  %131 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %132 = call i32 @gsc_hw_set_out_image_format(%struct.gsc_ctx* %131)
  %133 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %134 = call i32 @gsc_hw_set_prescaler(%struct.gsc_ctx* %133)
  %135 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %136 = call i32 @gsc_hw_set_mainscaler(%struct.gsc_ctx* %135)
  %137 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %138 = call i32 @gsc_hw_set_rotation(%struct.gsc_ctx* %137)
  %139 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %140 = call i32 @gsc_hw_set_global_alpha(%struct.gsc_ctx* %139)
  br label %141

141:                                              ; preds = %120, %81
  %142 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %143 = call i32 @gsc_hw_set_sfr_update(%struct.gsc_ctx* %142)
  %144 = load i32, i32* @GSC_PARAMS, align 4
  %145 = xor i32 %144, -1
  %146 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %147 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = and i32 %148, %145
  store i32 %149, i32* %147, align 8
  %150 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %151 = call i32 @gsc_hw_enable_control(%struct.gsc_dev* %150, i32 1)
  %152 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %153 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %152, i32 0, i32 0
  %154 = load i64, i64* %5, align 8
  %155 = call i32 @spin_unlock_irqrestore(i32* %153, i64 %154)
  br label %167

156:                                              ; preds = %118, %79, %59
  %157 = load i32, i32* @GSC_PARAMS, align 4
  %158 = xor i32 %157, -1
  %159 = load %struct.gsc_ctx*, %struct.gsc_ctx** %3, align 8
  %160 = getelementptr inbounds %struct.gsc_ctx, %struct.gsc_ctx* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = load %struct.gsc_dev*, %struct.gsc_dev** %4, align 8
  %164 = getelementptr inbounds %struct.gsc_dev, %struct.gsc_dev* %163, i32 0, i32 0
  %165 = load i64, i64* %5, align 8
  %166 = call i32 @spin_unlock_irqrestore(i32* %164, i64 %165)
  br label %167

167:                                              ; preds = %156, %141, %16
  ret void
}

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, %struct.gsc_ctx*, %struct.gsc_ctx*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @gsc_get_bufs(%struct.gsc_ctx*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @gsc_set_prefbuf(%struct.gsc_dev*, %struct.TYPE_6__*) #1

declare dso_local i32 @gsc_hw_set_input_addr(%struct.gsc_dev*, i32*, i32) #1

declare dso_local i32 @gsc_hw_set_output_addr(%struct.gsc_dev*, i32*, i32) #1

declare dso_local i32 @gsc_hw_set_input_buf_masking(%struct.gsc_dev*, i32, i32) #1

declare dso_local i32 @gsc_hw_set_output_buf_masking(%struct.gsc_dev*, i32, i32) #1

declare dso_local i32 @gsc_hw_set_frm_done_irq_mask(%struct.gsc_dev*, i32) #1

declare dso_local i32 @gsc_hw_set_gsc_irq_enable(%struct.gsc_dev*, i32) #1

declare dso_local i64 @gsc_set_scaler_info(%struct.gsc_ctx*) #1

declare dso_local i32 @gsc_hw_set_input_path(%struct.gsc_ctx*) #1

declare dso_local i32 @gsc_hw_set_in_size(%struct.gsc_ctx*) #1

declare dso_local i32 @gsc_hw_set_in_image_format(%struct.gsc_ctx*) #1

declare dso_local i32 @gsc_hw_set_output_path(%struct.gsc_ctx*) #1

declare dso_local i32 @gsc_hw_set_out_size(%struct.gsc_ctx*) #1

declare dso_local i32 @gsc_hw_set_out_image_format(%struct.gsc_ctx*) #1

declare dso_local i32 @gsc_hw_set_prescaler(%struct.gsc_ctx*) #1

declare dso_local i32 @gsc_hw_set_mainscaler(%struct.gsc_ctx*) #1

declare dso_local i32 @gsc_hw_set_rotation(%struct.gsc_ctx*) #1

declare dso_local i32 @gsc_hw_set_global_alpha(%struct.gsc_ctx*) #1

declare dso_local i32 @gsc_hw_set_sfr_update(%struct.gsc_ctx*) #1

declare dso_local i32 @gsc_hw_enable_control(%struct.gsc_dev*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
