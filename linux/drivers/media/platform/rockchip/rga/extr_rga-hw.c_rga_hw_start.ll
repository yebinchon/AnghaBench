; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga-hw.c_rga_hw_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga-hw.c_rga_hw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_rga = type { %struct.rga_ctx* }
%struct.rga_ctx = type { i32 }

@RGA_SYS_CTRL = common dso_local global i32 0, align 4
@RGA_INT = common dso_local global i32 0, align 4
@RGA_CMD_CTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rga_hw_start(%struct.rockchip_rga* %0) #0 {
  %2 = alloca %struct.rockchip_rga*, align 8
  %3 = alloca %struct.rga_ctx*, align 8
  store %struct.rockchip_rga* %0, %struct.rockchip_rga** %2, align 8
  %4 = load %struct.rockchip_rga*, %struct.rockchip_rga** %2, align 8
  %5 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %4, i32 0, i32 0
  %6 = load %struct.rga_ctx*, %struct.rga_ctx** %5, align 8
  store %struct.rga_ctx* %6, %struct.rga_ctx** %3, align 8
  %7 = load %struct.rga_ctx*, %struct.rga_ctx** %3, align 8
  %8 = call i32 @rga_cmd_set(%struct.rga_ctx* %7)
  %9 = load %struct.rockchip_rga*, %struct.rockchip_rga** %2, align 8
  %10 = load i32, i32* @RGA_SYS_CTRL, align 4
  %11 = call i32 @rga_write(%struct.rockchip_rga* %9, i32 %10, i32 0)
  %12 = load %struct.rockchip_rga*, %struct.rockchip_rga** %2, align 8
  %13 = load i32, i32* @RGA_SYS_CTRL, align 4
  %14 = call i32 @rga_write(%struct.rockchip_rga* %12, i32 %13, i32 34)
  %15 = load %struct.rockchip_rga*, %struct.rockchip_rga** %2, align 8
  %16 = load i32, i32* @RGA_INT, align 4
  %17 = call i32 @rga_write(%struct.rockchip_rga* %15, i32 %16, i32 1536)
  %18 = load %struct.rockchip_rga*, %struct.rockchip_rga** %2, align 8
  %19 = load i32, i32* @RGA_CMD_CTRL, align 4
  %20 = call i32 @rga_write(%struct.rockchip_rga* %18, i32 %19, i32 1)
  ret void
}

declare dso_local i32 @rga_cmd_set(%struct.rga_ctx*) #1

declare dso_local i32 @rga_write(%struct.rockchip_rga*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
