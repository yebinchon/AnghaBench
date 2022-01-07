; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga-buf.c_rga_buf_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga-buf.c_rga_buf_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.rga_ctx = type { %struct.rockchip_rga* }
%struct.rockchip_rga = type { i32 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @rga_buf_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rga_buf_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.rga_ctx*, align 8
  %4 = alloca %struct.rockchip_rga*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %5 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %6 = call %struct.rga_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %5)
  store %struct.rga_ctx* %6, %struct.rga_ctx** %3, align 8
  %7 = load %struct.rga_ctx*, %struct.rga_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %7, i32 0, i32 0
  %9 = load %struct.rockchip_rga*, %struct.rockchip_rga** %8, align 8
  store %struct.rockchip_rga* %9, %struct.rockchip_rga** %4, align 8
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %11 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %12 = call i32 @rga_buf_return_buffers(%struct.vb2_queue* %10, i32 %11)
  %13 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %14 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pm_runtime_put(i32 %15)
  ret void
}

declare dso_local %struct.rga_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @rga_buf_return_buffers(%struct.vb2_queue*, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
