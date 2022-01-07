; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_isr_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_isr_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_csi2_device = type { i32, %struct.isp_device* }
%struct.isp_device = type { i32 }
%struct.isp_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_csi2_device*)* @csi2_isr_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_isr_buffer(%struct.isp_csi2_device* %0) #0 {
  %2 = alloca %struct.isp_csi2_device*, align 8
  %3 = alloca %struct.isp_device*, align 8
  %4 = alloca %struct.isp_buffer*, align 8
  store %struct.isp_csi2_device* %0, %struct.isp_csi2_device** %2, align 8
  %5 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %2, align 8
  %6 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %5, i32 0, i32 1
  %7 = load %struct.isp_device*, %struct.isp_device** %6, align 8
  store %struct.isp_device* %7, %struct.isp_device** %3, align 8
  %8 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %9 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %2, align 8
  %10 = call i32 @csi2_ctx_enable(%struct.isp_device* %8, %struct.isp_csi2_device* %9, i32 0, i32 0)
  %11 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %2, align 8
  %12 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %11, i32 0, i32 0
  %13 = call %struct.isp_buffer* @omap3isp_video_buffer_next(i32* %12)
  store %struct.isp_buffer* %13, %struct.isp_buffer** %4, align 8
  %14 = load %struct.isp_buffer*, %struct.isp_buffer** %4, align 8
  %15 = icmp eq %struct.isp_buffer* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %2, align 8
  %19 = load %struct.isp_buffer*, %struct.isp_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.isp_buffer, %struct.isp_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @csi2_set_outaddr(%struct.isp_csi2_device* %18, i32 %21)
  %23 = load %struct.isp_device*, %struct.isp_device** %3, align 8
  %24 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %2, align 8
  %25 = call i32 @csi2_ctx_enable(%struct.isp_device* %23, %struct.isp_csi2_device* %24, i32 0, i32 1)
  br label %26

26:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @csi2_ctx_enable(%struct.isp_device*, %struct.isp_csi2_device*, i32, i32) #1

declare dso_local %struct.isp_buffer* @omap3isp_video_buffer_next(i32*) #1

declare dso_local i32 @csi2_set_outaddr(%struct.isp_csi2_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
