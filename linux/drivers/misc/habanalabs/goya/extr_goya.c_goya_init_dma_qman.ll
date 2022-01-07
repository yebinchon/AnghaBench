; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_dma_qman.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_dma_qman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.goya_device* }
%struct.goya_device = type { i32 }

@mmDMA_QM_1_PQ_PI = common dso_local global i32 0, align 4
@mmDMA_QM_0_PQ_PI = common dso_local global i32 0, align 4
@CFG_BASE = common dso_local global i64 0, align 8
@mmSYNC_MNGR_MON_PAY_ADDRL_0 = common dso_local global i64 0, align 8
@mmSYNC_MNGR_SOB_OBJ_0 = common dso_local global i64 0, align 8
@mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR = common dso_local global i64 0, align 8
@mmDMA_QM_0_PQ_BASE_LO = common dso_local global i32 0, align 4
@mmDMA_QM_0_PQ_BASE_HI = common dso_local global i32 0, align 4
@mmDMA_QM_0_PQ_SIZE = common dso_local global i32 0, align 4
@HL_QUEUE_LENGTH = common dso_local global i32 0, align 4
@mmDMA_QM_0_PQ_CI = common dso_local global i32 0, align 4
@mmDMA_QM_0_CP_MSG_BASE0_ADDR_LO = common dso_local global i32 0, align 4
@mmDMA_QM_0_CP_MSG_BASE0_ADDR_HI = common dso_local global i32 0, align 4
@mmDMA_QM_0_CP_MSG_BASE1_ADDR_LO = common dso_local global i32 0, align 4
@mmDMA_QM_0_CP_MSG_BASE1_ADDR_HI = common dso_local global i32 0, align 4
@mmDMA_QM_0_GLBL_ERR_ADDR_LO = common dso_local global i32 0, align 4
@mmDMA_QM_0_GLBL_ERR_ADDR_HI = common dso_local global i32 0, align 4
@mmDMA_QM_0_GLBL_ERR_WDATA = common dso_local global i32 0, align 4
@GOYA_ASYNC_EVENT_ID_DMA0_QM = common dso_local global i32 0, align 4
@mmDMA_QM_0_PQ_CFG1 = common dso_local global i32 0, align 4
@mmDMA_QM_0_CQ_CFG1 = common dso_local global i32 0, align 4
@HW_CAP_MMU = common dso_local global i32 0, align 4
@mmDMA_QM_0_GLBL_PROT = common dso_local global i32 0, align 4
@QMAN_DMA_PARTLY_TRUSTED = common dso_local global i32 0, align 4
@QMAN_DMA_FULLY_TRUSTED = common dso_local global i32 0, align 4
@mmDMA_QM_0_GLBL_ERR_CFG = common dso_local global i32 0, align 4
@QMAN_DMA_ERR_MSG_EN = common dso_local global i32 0, align 4
@mmDMA_QM_0_GLBL_CFG0 = common dso_local global i32 0, align 4
@QMAN_DMA_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*, i32, i64)* @goya_init_dma_qman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_init_dma_qman(%struct.hl_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.goya_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %15 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %16 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %15, i32 0, i32 0
  %17 = load %struct.goya_device*, %struct.goya_device** %16, align 8
  store %struct.goya_device* %17, %struct.goya_device** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @mmDMA_QM_1_PQ_PI, align 4
  %20 = load i32, i32* @mmDMA_QM_0_PQ_PI, align 4
  %21 = sub nsw i32 %19, %20
  %22 = mul nsw i32 %18, %21
  store i32 %22, i32* %14, align 4
  %23 = load i64, i64* @CFG_BASE, align 8
  %24 = load i64, i64* @mmSYNC_MNGR_MON_PAY_ADDRL_0, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @lower_32_bits(i64 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i64, i64* @CFG_BASE, align 8
  %28 = load i64, i64* @mmSYNC_MNGR_MON_PAY_ADDRL_0, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @upper_32_bits(i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i64, i64* @CFG_BASE, align 8
  %32 = load i64, i64* @mmSYNC_MNGR_SOB_OBJ_0, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @lower_32_bits(i64 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i64, i64* @CFG_BASE, align 8
  %36 = load i64, i64* @mmSYNC_MNGR_SOB_OBJ_0, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @upper_32_bits(i64 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i64, i64* @CFG_BASE, align 8
  %40 = load i64, i64* @mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @lower_32_bits(i64 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i64, i64* @CFG_BASE, align 8
  %44 = load i64, i64* @mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @upper_32_bits(i64 %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* @mmDMA_QM_0_PQ_BASE_LO, align 4
  %48 = load i32, i32* %14, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i64, i64* %6, align 8
  %51 = call i32 @lower_32_bits(i64 %50)
  %52 = call i32 @WREG32(i32 %49, i32 %51)
  %53 = load i32, i32* @mmDMA_QM_0_PQ_BASE_HI, align 4
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %53, %54
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @upper_32_bits(i64 %56)
  %58 = call i32 @WREG32(i32 %55, i32 %57)
  %59 = load i32, i32* @mmDMA_QM_0_PQ_SIZE, align 4
  %60 = load i32, i32* %14, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* @HL_QUEUE_LENGTH, align 4
  %63 = call i32 @ilog2(i32 %62)
  %64 = call i32 @WREG32(i32 %61, i32 %63)
  %65 = load i32, i32* @mmDMA_QM_0_PQ_PI, align 4
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %65, %66
  %68 = call i32 @WREG32(i32 %67, i32 0)
  %69 = load i32, i32* @mmDMA_QM_0_PQ_CI, align 4
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %69, %70
  %72 = call i32 @WREG32(i32 %71, i32 0)
  %73 = load i32, i32* @mmDMA_QM_0_CP_MSG_BASE0_ADDR_LO, align 4
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @WREG32(i32 %75, i32 %76)
  %78 = load i32, i32* @mmDMA_QM_0_CP_MSG_BASE0_ADDR_HI, align 4
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @WREG32(i32 %80, i32 %81)
  %83 = load i32, i32* @mmDMA_QM_0_CP_MSG_BASE1_ADDR_LO, align 4
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @WREG32(i32 %85, i32 %86)
  %88 = load i32, i32* @mmDMA_QM_0_CP_MSG_BASE1_ADDR_HI, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @WREG32(i32 %90, i32 %91)
  %93 = load i32, i32* @mmDMA_QM_0_GLBL_ERR_ADDR_LO, align 4
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @WREG32(i32 %95, i32 %96)
  %98 = load i32, i32* @mmDMA_QM_0_GLBL_ERR_ADDR_HI, align 4
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @WREG32(i32 %100, i32 %101)
  %103 = load i32, i32* @mmDMA_QM_0_GLBL_ERR_WDATA, align 4
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i32, i32* @GOYA_ASYNC_EVENT_ID_DMA0_QM, align 4
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %106, %107
  %109 = call i32 @WREG32(i32 %105, i32 %108)
  %110 = load i32, i32* @mmDMA_QM_0_PQ_CFG1, align 4
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %110, %111
  %113 = call i32 @WREG32(i32 %112, i32 131074)
  %114 = load i32, i32* @mmDMA_QM_0_CQ_CFG1, align 4
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %114, %115
  %117 = call i32 @WREG32(i32 %116, i32 524296)
  %118 = load %struct.goya_device*, %struct.goya_device** %7, align 8
  %119 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @HW_CAP_MMU, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %3
  %125 = load i32, i32* @mmDMA_QM_0_GLBL_PROT, align 4
  %126 = load i32, i32* %14, align 4
  %127 = add nsw i32 %125, %126
  %128 = load i32, i32* @QMAN_DMA_PARTLY_TRUSTED, align 4
  %129 = call i32 @WREG32(i32 %127, i32 %128)
  br label %136

130:                                              ; preds = %3
  %131 = load i32, i32* @mmDMA_QM_0_GLBL_PROT, align 4
  %132 = load i32, i32* %14, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* @QMAN_DMA_FULLY_TRUSTED, align 4
  %135 = call i32 @WREG32(i32 %133, i32 %134)
  br label %136

136:                                              ; preds = %130, %124
  %137 = load i32, i32* @mmDMA_QM_0_GLBL_ERR_CFG, align 4
  %138 = load i32, i32* %14, align 4
  %139 = add nsw i32 %137, %138
  %140 = load i32, i32* @QMAN_DMA_ERR_MSG_EN, align 4
  %141 = call i32 @WREG32(i32 %139, i32 %140)
  %142 = load i32, i32* @mmDMA_QM_0_GLBL_CFG0, align 4
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %142, %143
  %145 = load i32, i32* @QMAN_DMA_ENABLE, align 4
  %146 = call i32 @WREG32(i32 %144, i32 %145)
  ret void
}

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
