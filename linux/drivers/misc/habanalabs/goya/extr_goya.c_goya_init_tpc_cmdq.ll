; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_tpc_cmdq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_tpc_cmdq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }

@mmTPC1_CMDQ_CQ_CFG1 = common dso_local global i32 0, align 4
@mmTPC0_CMDQ_CQ_CFG1 = common dso_local global i32 0, align 4
@CFG_BASE = common dso_local global i64 0, align 8
@mmSYNC_MNGR_MON_PAY_ADDRL_0 = common dso_local global i64 0, align 8
@mmSYNC_MNGR_SOB_OBJ_0 = common dso_local global i64 0, align 8
@mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR = common dso_local global i64 0, align 8
@mmTPC0_CMDQ_CP_MSG_BASE0_ADDR_LO = common dso_local global i32 0, align 4
@mmTPC0_CMDQ_CP_MSG_BASE0_ADDR_HI = common dso_local global i32 0, align 4
@mmTPC0_CMDQ_CP_MSG_BASE1_ADDR_LO = common dso_local global i32 0, align 4
@mmTPC0_CMDQ_CP_MSG_BASE1_ADDR_HI = common dso_local global i32 0, align 4
@mmTPC0_CMDQ_GLBL_ERR_ADDR_LO = common dso_local global i32 0, align 4
@mmTPC0_CMDQ_GLBL_ERR_ADDR_HI = common dso_local global i32 0, align 4
@mmTPC0_CMDQ_GLBL_ERR_WDATA = common dso_local global i32 0, align 4
@GOYA_ASYNC_EVENT_ID_TPC0_CMDQ = common dso_local global i32 0, align 4
@mmTPC0_CMDQ_GLBL_ERR_CFG = common dso_local global i32 0, align 4
@CMDQ_TPC_ERR_MSG_EN = common dso_local global i32 0, align 4
@mmTPC0_CMDQ_GLBL_PROT = common dso_local global i32 0, align 4
@CMDQ_TPC_ERR_PROT = common dso_local global i32 0, align 4
@mmTPC0_CMDQ_GLBL_CFG0 = common dso_local global i32 0, align 4
@CMDQ_TPC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*, i32)* @goya_init_tpc_cmdq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_init_tpc_cmdq(%struct.hl_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @mmTPC1_CMDQ_CQ_CFG1, align 4
  %14 = load i32, i32* @mmTPC0_CMDQ_CQ_CFG1, align 4
  %15 = sub nsw i32 %13, %14
  %16 = mul nsw i32 %12, %15
  store i32 %16, i32* %11, align 4
  %17 = load i64, i64* @CFG_BASE, align 8
  %18 = load i64, i64* @mmSYNC_MNGR_MON_PAY_ADDRL_0, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @lower_32_bits(i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i64, i64* @CFG_BASE, align 8
  %22 = load i64, i64* @mmSYNC_MNGR_MON_PAY_ADDRL_0, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @upper_32_bits(i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i64, i64* @CFG_BASE, align 8
  %26 = load i64, i64* @mmSYNC_MNGR_SOB_OBJ_0, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @lower_32_bits(i64 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i64, i64* @CFG_BASE, align 8
  %30 = load i64, i64* @mmSYNC_MNGR_SOB_OBJ_0, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @upper_32_bits(i64 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i64, i64* @CFG_BASE, align 8
  %34 = load i64, i64* @mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @lower_32_bits(i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i64, i64* @CFG_BASE, align 8
  %38 = load i64, i64* @mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @upper_32_bits(i64 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @mmTPC0_CMDQ_CP_MSG_BASE0_ADDR_LO, align 4
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @WREG32(i32 %43, i32 %44)
  %46 = load i32, i32* @mmTPC0_CMDQ_CP_MSG_BASE0_ADDR_HI, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @WREG32(i32 %48, i32 %49)
  %51 = load i32, i32* @mmTPC0_CMDQ_CP_MSG_BASE1_ADDR_LO, align 4
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @WREG32(i32 %53, i32 %54)
  %56 = load i32, i32* @mmTPC0_CMDQ_CP_MSG_BASE1_ADDR_HI, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @WREG32(i32 %58, i32 %59)
  %61 = load i32, i32* @mmTPC0_CMDQ_CQ_CFG1, align 4
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %61, %62
  %64 = call i32 @WREG32(i32 %63, i32 1310740)
  %65 = load i32, i32* @mmTPC0_CMDQ_GLBL_ERR_ADDR_LO, align 4
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @WREG32(i32 %67, i32 %68)
  %70 = load i32, i32* @mmTPC0_CMDQ_GLBL_ERR_ADDR_HI, align 4
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @WREG32(i32 %72, i32 %73)
  %75 = load i32, i32* @mmTPC0_CMDQ_GLBL_ERR_WDATA, align 4
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* @GOYA_ASYNC_EVENT_ID_TPC0_CMDQ, align 4
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @WREG32(i32 %77, i32 %80)
  %82 = load i32, i32* @mmTPC0_CMDQ_GLBL_ERR_CFG, align 4
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* @CMDQ_TPC_ERR_MSG_EN, align 4
  %86 = call i32 @WREG32(i32 %84, i32 %85)
  %87 = load i32, i32* @mmTPC0_CMDQ_GLBL_PROT, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* @CMDQ_TPC_ERR_PROT, align 4
  %91 = call i32 @WREG32(i32 %89, i32 %90)
  %92 = load i32, i32* @mmTPC0_CMDQ_GLBL_CFG0, align 4
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* @CMDQ_TPC_ENABLE, align 4
  %96 = call i32 @WREG32(i32 %94, i32 %95)
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
