; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_mme_qman.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_mme_qman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CFG_BASE = common dso_local global i64 0, align 8
@mmSYNC_MNGR_MON_PAY_ADDRL_0 = common dso_local global i64 0, align 8
@mmSYNC_MNGR_SOB_OBJ_0 = common dso_local global i64 0, align 8
@mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR = common dso_local global i64 0, align 8
@MME_QMAN_BASE_OFFSET = common dso_local global i64 0, align 8
@mmMME_QM_PQ_BASE_LO = common dso_local global i32 0, align 4
@mmMME_QM_PQ_BASE_HI = common dso_local global i32 0, align 4
@mmMME_QM_PQ_SIZE = common dso_local global i32 0, align 4
@MME_QMAN_LENGTH = common dso_local global i32 0, align 4
@mmMME_QM_PQ_PI = common dso_local global i32 0, align 4
@mmMME_QM_PQ_CI = common dso_local global i32 0, align 4
@mmMME_QM_CP_LDMA_SRC_BASE_LO_OFFSET = common dso_local global i32 0, align 4
@mmMME_QM_CP_LDMA_SRC_BASE_HI_OFFSET = common dso_local global i32 0, align 4
@mmMME_QM_CP_LDMA_TSIZE_OFFSET = common dso_local global i32 0, align 4
@mmMME_QM_CP_LDMA_COMMIT_OFFSET = common dso_local global i32 0, align 4
@mmMME_QM_CP_MSG_BASE0_ADDR_LO = common dso_local global i32 0, align 4
@mmMME_QM_CP_MSG_BASE0_ADDR_HI = common dso_local global i32 0, align 4
@mmMME_QM_CP_MSG_BASE1_ADDR_LO = common dso_local global i32 0, align 4
@mmMME_QM_CP_MSG_BASE1_ADDR_HI = common dso_local global i32 0, align 4
@mmMME_QM_CQ_CFG1 = common dso_local global i32 0, align 4
@mmMME_QM_GLBL_ERR_ADDR_LO = common dso_local global i32 0, align 4
@mmMME_QM_GLBL_ERR_ADDR_HI = common dso_local global i32 0, align 4
@mmMME_QM_GLBL_ERR_WDATA = common dso_local global i32 0, align 4
@GOYA_ASYNC_EVENT_ID_MME_QM = common dso_local global i32 0, align 4
@mmMME_QM_GLBL_ERR_CFG = common dso_local global i32 0, align 4
@QMAN_MME_ERR_MSG_EN = common dso_local global i32 0, align 4
@mmMME_QM_GLBL_PROT = common dso_local global i32 0, align 4
@QMAN_MME_ERR_PROT = common dso_local global i32 0, align 4
@mmMME_QM_GLBL_CFG0 = common dso_local global i32 0, align 4
@QMAN_MME_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*)* @goya_init_mme_qman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_init_mme_qman(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %10 = load i64, i64* @CFG_BASE, align 8
  %11 = load i64, i64* @mmSYNC_MNGR_MON_PAY_ADDRL_0, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @lower_32_bits(i64 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i64, i64* @CFG_BASE, align 8
  %15 = load i64, i64* @mmSYNC_MNGR_MON_PAY_ADDRL_0, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @upper_32_bits(i64 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i64, i64* @CFG_BASE, align 8
  %19 = load i64, i64* @mmSYNC_MNGR_SOB_OBJ_0, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @lower_32_bits(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i64, i64* @CFG_BASE, align 8
  %23 = load i64, i64* @mmSYNC_MNGR_SOB_OBJ_0, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @upper_32_bits(i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i64, i64* @CFG_BASE, align 8
  %27 = load i64, i64* @mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @lower_32_bits(i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i64, i64* @CFG_BASE, align 8
  %31 = load i64, i64* @mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @upper_32_bits(i64 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %35 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MME_QMAN_BASE_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  store i64 %39, i64* %9, align 8
  %40 = load i32, i32* @mmMME_QM_PQ_BASE_LO, align 4
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @lower_32_bits(i64 %41)
  %43 = call i32 @WREG32(i32 %40, i32 %42)
  %44 = load i32, i32* @mmMME_QM_PQ_BASE_HI, align 4
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @upper_32_bits(i64 %45)
  %47 = call i32 @WREG32(i32 %44, i32 %46)
  %48 = load i32, i32* @mmMME_QM_PQ_SIZE, align 4
  %49 = load i32, i32* @MME_QMAN_LENGTH, align 4
  %50 = call i32 @ilog2(i32 %49)
  %51 = call i32 @WREG32(i32 %48, i32 %50)
  %52 = load i32, i32* @mmMME_QM_PQ_PI, align 4
  %53 = call i32 @WREG32(i32 %52, i32 0)
  %54 = load i32, i32* @mmMME_QM_PQ_CI, align 4
  %55 = call i32 @WREG32(i32 %54, i32 0)
  %56 = load i32, i32* @mmMME_QM_CP_LDMA_SRC_BASE_LO_OFFSET, align 4
  %57 = call i32 @WREG32(i32 %56, i32 4288)
  %58 = load i32, i32* @mmMME_QM_CP_LDMA_SRC_BASE_HI_OFFSET, align 4
  %59 = call i32 @WREG32(i32 %58, i32 4292)
  %60 = load i32, i32* @mmMME_QM_CP_LDMA_TSIZE_OFFSET, align 4
  %61 = call i32 @WREG32(i32 %60, i32 4296)
  %62 = load i32, i32* @mmMME_QM_CP_LDMA_COMMIT_OFFSET, align 4
  %63 = call i32 @WREG32(i32 %62, i32 4300)
  %64 = load i32, i32* @mmMME_QM_CP_MSG_BASE0_ADDR_LO, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @WREG32(i32 %64, i32 %65)
  %67 = load i32, i32* @mmMME_QM_CP_MSG_BASE0_ADDR_HI, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @WREG32(i32 %67, i32 %68)
  %70 = load i32, i32* @mmMME_QM_CP_MSG_BASE1_ADDR_LO, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @WREG32(i32 %70, i32 %71)
  %73 = load i32, i32* @mmMME_QM_CP_MSG_BASE1_ADDR_HI, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @WREG32(i32 %73, i32 %74)
  %76 = load i32, i32* @mmMME_QM_CQ_CFG1, align 4
  %77 = call i32 @WREG32(i32 %76, i32 524296)
  %78 = load i32, i32* @mmMME_QM_GLBL_ERR_ADDR_LO, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @WREG32(i32 %78, i32 %79)
  %81 = load i32, i32* @mmMME_QM_GLBL_ERR_ADDR_HI, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @WREG32(i32 %81, i32 %82)
  %84 = load i32, i32* @mmMME_QM_GLBL_ERR_WDATA, align 4
  %85 = load i32, i32* @GOYA_ASYNC_EVENT_ID_MME_QM, align 4
  %86 = call i32 @WREG32(i32 %84, i32 %85)
  %87 = load i32, i32* @mmMME_QM_GLBL_ERR_CFG, align 4
  %88 = load i32, i32* @QMAN_MME_ERR_MSG_EN, align 4
  %89 = call i32 @WREG32(i32 %87, i32 %88)
  %90 = load i32, i32* @mmMME_QM_GLBL_PROT, align 4
  %91 = load i32, i32* @QMAN_MME_ERR_PROT, align 4
  %92 = call i32 @WREG32(i32 %90, i32 %91)
  %93 = load i32, i32* @mmMME_QM_GLBL_CFG0, align 4
  %94 = load i32, i32* @QMAN_MME_ENABLE, align 4
  %95 = call i32 @WREG32(i32 %93, i32 %94)
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
