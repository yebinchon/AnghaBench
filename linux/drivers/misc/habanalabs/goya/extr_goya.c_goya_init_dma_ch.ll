; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_dma_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_dma_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }

@mmDMA_CH_1_CFG1 = common dso_local global i32 0, align 4
@mmDMA_CH_0_CFG1 = common dso_local global i32 0, align 4
@CFG_BASE = common dso_local global i64 0, align 8
@mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR = common dso_local global i64 0, align 8
@mmDMA_CH_0_ERRMSG_ADDR_LO = common dso_local global i32 0, align 4
@mmDMA_CH_0_ERRMSG_ADDR_HI = common dso_local global i32 0, align 4
@mmDMA_CH_0_ERRMSG_WDATA = common dso_local global i32 0, align 4
@GOYA_ASYNC_EVENT_ID_DMA0_CH = common dso_local global i32 0, align 4
@mmSYNC_MNGR_SOB_OBJ_1000 = common dso_local global i64 0, align 8
@mmSYNC_MNGR_SOB_OBJ_1007 = common dso_local global i64 0, align 8
@mmDMA_CH_0_WR_COMP_ADDR_HI = common dso_local global i32 0, align 4
@mmDMA_CH_0_WR_COMP_WDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*, i32)* @goya_init_dma_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_init_dma_ch(%struct.hl_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @mmDMA_CH_1_CFG1, align 4
  %11 = load i32, i32* @mmDMA_CH_0_CFG1, align 4
  %12 = sub nsw i32 %10, %11
  %13 = mul nsw i32 %9, %12
  store i32 %13, i32* %8, align 4
  %14 = load i64, i64* @CFG_BASE, align 8
  %15 = load i64, i64* @mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @lower_32_bits(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i64, i64* @CFG_BASE, align 8
  %19 = load i64, i64* @mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @upper_32_bits(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* @mmDMA_CH_0_ERRMSG_ADDR_LO, align 4
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @WREG32(i32 %24, i32 %25)
  %27 = load i32, i32* @mmDMA_CH_0_ERRMSG_ADDR_HI, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @WREG32(i32 %29, i32 %30)
  %32 = load i32, i32* @mmDMA_CH_0_ERRMSG_WDATA, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* @GOYA_ASYNC_EVENT_ID_DMA0_CH, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %35, %36
  %38 = call i32 @WREG32(i32 %34, i32 %37)
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %2
  %42 = load i64, i64* @CFG_BASE, align 8
  %43 = load i64, i64* @mmSYNC_MNGR_SOB_OBJ_1000, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %45, 1
  %47 = mul nsw i32 %46, 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %44, %48
  store i64 %49, i64* %7, align 8
  br label %54

50:                                               ; preds = %2
  %51 = load i64, i64* @CFG_BASE, align 8
  %52 = load i64, i64* @mmSYNC_MNGR_SOB_OBJ_1007, align 8
  %53 = add nsw i64 %51, %52
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %50, %41
  %55 = load i32, i32* @mmDMA_CH_0_WR_COMP_ADDR_HI, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @upper_32_bits(i64 %58)
  %60 = call i32 @WREG32(i32 %57, i32 %59)
  %61 = load i32, i32* @mmDMA_CH_0_WR_COMP_WDATA, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i32 @WREG32(i32 %63, i32 -2147483647)
  ret void
}

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
