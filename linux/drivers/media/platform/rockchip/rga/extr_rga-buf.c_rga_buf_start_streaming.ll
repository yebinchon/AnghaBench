; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga-buf.c_rga_buf_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga-buf.c_rga_buf_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.rga_ctx = type { %struct.rockchip_rga* }
%struct.rockchip_rga = type { i32 }

@VB2_BUF_STATE_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @rga_buf_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rga_buf_start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rga_ctx*, align 8
  %7 = alloca %struct.rockchip_rga*, align 8
  %8 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %10 = call %struct.rga_ctx* @vb2_get_drv_priv(%struct.vb2_queue* %9)
  store %struct.rga_ctx* %10, %struct.rga_ctx** %6, align 8
  %11 = load %struct.rga_ctx*, %struct.rga_ctx** %6, align 8
  %12 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %11, i32 0, i32 0
  %13 = load %struct.rockchip_rga*, %struct.rockchip_rga** %12, align 8
  store %struct.rockchip_rga* %13, %struct.rockchip_rga** %7, align 8
  %14 = load %struct.rockchip_rga*, %struct.rockchip_rga** %7, align 8
  %15 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pm_runtime_get_sync(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %22 = load i32, i32* @VB2_BUF_STATE_QUEUED, align 4
  %23 = call i32 @rga_buf_return_buffers(%struct.vb2_queue* %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.rga_ctx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @rga_buf_return_buffers(%struct.vb2_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
