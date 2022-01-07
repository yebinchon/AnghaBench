; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_mme_cmdq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_mme_cmdq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@CFG_BASE = common dso_local global i64 0, align 8
@mmSYNC_MNGR_MON_PAY_ADDRL_0 = common dso_local global i64 0, align 8
@mmSYNC_MNGR_SOB_OBJ_0 = common dso_local global i64 0, align 8
@mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR = common dso_local global i64 0, align 8
@MME_QMAN_BASE_OFFSET = common dso_local global i64 0, align 8
@mmMME_CMDQ_CP_MSG_BASE0_ADDR_LO = common dso_local global i32 0, align 4
@mmMME_CMDQ_CP_MSG_BASE0_ADDR_HI = common dso_local global i32 0, align 4
@mmMME_CMDQ_CP_MSG_BASE1_ADDR_LO = common dso_local global i32 0, align 4
@mmMME_CMDQ_CP_MSG_BASE1_ADDR_HI = common dso_local global i32 0, align 4
@mmMME_CMDQ_CQ_CFG1 = common dso_local global i32 0, align 4
@mmMME_CMDQ_GLBL_ERR_ADDR_LO = common dso_local global i32 0, align 4
@mmMME_CMDQ_GLBL_ERR_ADDR_HI = common dso_local global i32 0, align 4
@mmMME_CMDQ_GLBL_ERR_WDATA = common dso_local global i32 0, align 4
@GOYA_ASYNC_EVENT_ID_MME_CMDQ = common dso_local global i32 0, align 4
@mmMME_CMDQ_GLBL_ERR_CFG = common dso_local global i32 0, align 4
@CMDQ_MME_ERR_MSG_EN = common dso_local global i32 0, align 4
@mmMME_CMDQ_GLBL_PROT = common dso_local global i32 0, align 4
@CMDQ_MME_ERR_PROT = common dso_local global i32 0, align 4
@mmMME_CMDQ_GLBL_CFG0 = common dso_local global i32 0, align 4
@CMDQ_MME_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*)* @goya_init_mme_cmdq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_init_mme_cmdq(%struct.hl_device* %0) #0 {
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
  %40 = load i32, i32* @mmMME_CMDQ_CP_MSG_BASE0_ADDR_LO, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @WREG32(i32 %40, i32 %41)
  %43 = load i32, i32* @mmMME_CMDQ_CP_MSG_BASE0_ADDR_HI, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @WREG32(i32 %43, i32 %44)
  %46 = load i32, i32* @mmMME_CMDQ_CP_MSG_BASE1_ADDR_LO, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @WREG32(i32 %46, i32 %47)
  %49 = load i32, i32* @mmMME_CMDQ_CP_MSG_BASE1_ADDR_HI, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @WREG32(i32 %49, i32 %50)
  %52 = load i32, i32* @mmMME_CMDQ_CQ_CFG1, align 4
  %53 = call i32 @WREG32(i32 %52, i32 1310740)
  %54 = load i32, i32* @mmMME_CMDQ_GLBL_ERR_ADDR_LO, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @WREG32(i32 %54, i32 %55)
  %57 = load i32, i32* @mmMME_CMDQ_GLBL_ERR_ADDR_HI, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @WREG32(i32 %57, i32 %58)
  %60 = load i32, i32* @mmMME_CMDQ_GLBL_ERR_WDATA, align 4
  %61 = load i32, i32* @GOYA_ASYNC_EVENT_ID_MME_CMDQ, align 4
  %62 = call i32 @WREG32(i32 %60, i32 %61)
  %63 = load i32, i32* @mmMME_CMDQ_GLBL_ERR_CFG, align 4
  %64 = load i32, i32* @CMDQ_MME_ERR_MSG_EN, align 4
  %65 = call i32 @WREG32(i32 %63, i32 %64)
  %66 = load i32, i32* @mmMME_CMDQ_GLBL_PROT, align 4
  %67 = load i32, i32* @CMDQ_MME_ERR_PROT, align 4
  %68 = call i32 @WREG32(i32 %66, i32 %67)
  %69 = load i32, i32* @mmMME_CMDQ_GLBL_CFG0, align 4
  %70 = load i32, i32* @CMDQ_MME_ENABLE, align 4
  %71 = call i32 @WREG32(i32 %69, i32 %70)
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
