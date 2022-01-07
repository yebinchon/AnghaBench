; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_device_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga.c_device_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rga_ctx = type { %struct.TYPE_2__, %struct.rockchip_rga* }
%struct.TYPE_2__ = type { i32 }
%struct.rockchip_rga = type { i32, %struct.rga_ctx* }
%struct.vb2_v4l2_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @device_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rga_ctx*, align 8
  %4 = alloca %struct.rockchip_rga*, align 8
  %5 = alloca %struct.vb2_v4l2_buffer*, align 8
  %6 = alloca %struct.vb2_v4l2_buffer*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.rga_ctx*
  store %struct.rga_ctx* %9, %struct.rga_ctx** %3, align 8
  %10 = load %struct.rga_ctx*, %struct.rga_ctx** %3, align 8
  %11 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %10, i32 0, i32 1
  %12 = load %struct.rockchip_rga*, %struct.rockchip_rga** %11, align 8
  store %struct.rockchip_rga* %12, %struct.rockchip_rga** %4, align 8
  %13 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %14 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %13, i32 0, i32 0
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.rga_ctx*, %struct.rga_ctx** %3, align 8
  %18 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %19 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %18, i32 0, i32 1
  store %struct.rga_ctx* %17, %struct.rga_ctx** %19, align 8
  %20 = load %struct.rga_ctx*, %struct.rga_ctx** %3, align 8
  %21 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32 %23)
  store %struct.vb2_v4l2_buffer* %24, %struct.vb2_v4l2_buffer** %5, align 8
  %25 = load %struct.rga_ctx*, %struct.rga_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32 %28)
  store %struct.vb2_v4l2_buffer* %29, %struct.vb2_v4l2_buffer** %6, align 8
  %30 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %5, align 8
  %31 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %30, i32 0, i32 0
  %32 = call i32 @rga_buf_map(i32* %31)
  %33 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %6, align 8
  %34 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %33, i32 0, i32 0
  %35 = call i32 @rga_buf_map(i32* %34)
  %36 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %37 = call i32 @rga_hw_start(%struct.rockchip_rga* %36)
  %38 = load %struct.rockchip_rga*, %struct.rockchip_rga** %4, align 8
  %39 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %38, i32 0, i32 0
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_src_buf(i32) #1

declare dso_local %struct.vb2_v4l2_buffer* @v4l2_m2m_next_dst_buf(i32) #1

declare dso_local i32 @rga_buf_map(i32*) #1

declare dso_local i32 @rga_hw_start(%struct.rockchip_rga*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
