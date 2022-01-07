; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga-hw.c_rga_cmd_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga-hw.c_rga_cmd_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rga_ctx = type { %struct.rockchip_rga* }
%struct.rockchip_rga = type { i32, i32, i32, i32, i32 }

@RGA_CMDBUF_SIZE = common dso_local global i32 0, align 4
@RGA_CMD_BASE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rga_ctx*)* @rga_cmd_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rga_cmd_set(%struct.rga_ctx* %0) #0 {
  %2 = alloca %struct.rga_ctx*, align 8
  %3 = alloca %struct.rockchip_rga*, align 8
  store %struct.rga_ctx* %0, %struct.rga_ctx** %2, align 8
  %4 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %4, i32 0, i32 0
  %6 = load %struct.rockchip_rga*, %struct.rockchip_rga** %5, align 8
  store %struct.rockchip_rga* %6, %struct.rockchip_rga** %3, align 8
  %7 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %8 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @RGA_CMDBUF_SIZE, align 4
  %11 = mul nsw i32 %10, 4
  %12 = call i32 @memset(i32 %9, i32 0, i32 %11)
  %13 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %14 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %15 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @rga_cmd_set_src_addr(%struct.rga_ctx* %13, i32 %16)
  %18 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %19 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %20 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rga_cmd_set_src1_addr(%struct.rga_ctx* %18, i32 %21)
  %23 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %24 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %25 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rga_cmd_set_dst_addr(%struct.rga_ctx* %23, i32 %26)
  %28 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %29 = call i32 @rga_cmd_set_mode(%struct.rga_ctx* %28)
  %30 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %31 = call i32 @rga_cmd_set_trans_info(%struct.rga_ctx* %30)
  %32 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %33 = load i32, i32* @RGA_CMD_BASE, align 4
  %34 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %35 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @rga_write(%struct.rockchip_rga* %32, i32 %33, i32 %36)
  %38 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %39 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %42 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %46 = call i32 @dma_sync_single_for_device(i32 %40, i32 %43, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @rga_cmd_set_src_addr(%struct.rga_ctx*, i32) #1

declare dso_local i32 @rga_cmd_set_src1_addr(%struct.rga_ctx*, i32) #1

declare dso_local i32 @rga_cmd_set_dst_addr(%struct.rga_ctx*, i32) #1

declare dso_local i32 @rga_cmd_set_mode(%struct.rga_ctx*) #1

declare dso_local i32 @rga_cmd_set_trans_info(%struct.rga_ctx*) #1

declare dso_local i32 @rga_write(%struct.rockchip_rga*, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
