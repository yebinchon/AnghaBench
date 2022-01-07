; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga-hw.c_rga_cmd_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga-hw.c_rga_cmd_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rga_ctx = type { %struct.rockchip_rga* }
%struct.rockchip_rga = type { i64* }
%union.rga_mode_ctrl = type { i64, [8 x i8] }
%union.rga_alpha_ctrl0 = type { i64 }
%union.rga_alpha_ctrl1 = type { i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@RGA_MODE_RENDER_BITBLT = common dso_local global i32 0, align 4
@RGA_MODE_BITBLT_MODE_SRC_TO_DST = common dso_local global i32 0, align 4
@RGA_ALPHA_CTRL0 = common dso_local global i32 0, align 4
@RGA_MODE_BASE_REG = common dso_local global i32 0, align 4
@RGA_ALPHA_CTRL1 = common dso_local global i32 0, align 4
@RGA_MODE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rga_ctx*)* @rga_cmd_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rga_cmd_set_mode(%struct.rga_ctx* %0) #0 {
  %2 = alloca %struct.rga_ctx*, align 8
  %3 = alloca %struct.rockchip_rga*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %union.rga_mode_ctrl, align 8
  %6 = alloca %union.rga_alpha_ctrl0, align 8
  %7 = alloca %union.rga_alpha_ctrl1, align 8
  store %struct.rga_ctx* %0, %struct.rga_ctx** %2, align 8
  %8 = load %struct.rga_ctx*, %struct.rga_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.rga_ctx, %struct.rga_ctx* %8, i32 0, i32 0
  %10 = load %struct.rockchip_rga*, %struct.rockchip_rga** %9, align 8
  store %struct.rockchip_rga* %10, %struct.rockchip_rga** %3, align 8
  %11 = load %struct.rockchip_rga*, %struct.rockchip_rga** %3, align 8
  %12 = getelementptr inbounds %struct.rockchip_rga, %struct.rockchip_rga* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  store i64* %13, i64** %4, align 8
  %14 = bitcast %union.rga_mode_ctrl* %5 to i64*
  store i64 0, i64* %14, align 8
  %15 = bitcast %union.rga_alpha_ctrl0* %6 to i64*
  store i64 0, i64* %15, align 8
  %16 = bitcast %union.rga_alpha_ctrl1* %7 to i64*
  store i64 0, i64* %16, align 8
  %17 = bitcast %union.rga_mode_ctrl* %5 to %struct.TYPE_2__*
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = load i32, i32* @RGA_MODE_RENDER_BITBLT, align 4
  %20 = bitcast %union.rga_mode_ctrl* %5 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @RGA_MODE_BITBLT_MODE_SRC_TO_DST, align 4
  %23 = bitcast %union.rga_mode_ctrl* %5 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = bitcast %union.rga_alpha_ctrl0* %6 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %4, align 8
  %28 = load i32, i32* @RGA_ALPHA_CTRL0, align 4
  %29 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %30 = sub nsw i32 %28, %29
  %31 = ashr i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %27, i64 %32
  store i64 %26, i64* %33, align 8
  %34 = bitcast %union.rga_alpha_ctrl1* %7 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %4, align 8
  %37 = load i32, i32* @RGA_ALPHA_CTRL1, align 4
  %38 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %39 = sub nsw i32 %37, %38
  %40 = ashr i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %36, i64 %41
  store i64 %35, i64* %42, align 8
  %43 = bitcast %union.rga_mode_ctrl* %5 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** %4, align 8
  %46 = load i32, i32* @RGA_MODE_CTRL, align 4
  %47 = load i32, i32* @RGA_MODE_BASE_REG, align 4
  %48 = sub nsw i32 %46, %47
  %49 = ashr i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %45, i64 %50
  store i64 %44, i64* %51, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
