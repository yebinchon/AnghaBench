; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_tpc_qman.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_tpc_qman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mmTPC1_QM_PQ_PI = common dso_local global i32 0, align 4
@mmTPC0_QM_PQ_PI = common dso_local global i32 0, align 4
@CFG_BASE = common dso_local global i32 0, align 4
@mmSYNC_MNGR_MON_PAY_ADDRL_0 = common dso_local global i32 0, align 4
@mmSYNC_MNGR_SOB_OBJ_0 = common dso_local global i32 0, align 4
@mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR = common dso_local global i32 0, align 4
@mmTPC0_QM_PQ_BASE_LO = common dso_local global i32 0, align 4
@mmTPC0_QM_PQ_BASE_HI = common dso_local global i32 0, align 4
@mmTPC0_QM_PQ_SIZE = common dso_local global i32 0, align 4
@TPC_QMAN_LENGTH = common dso_local global i32 0, align 4
@mmTPC0_QM_PQ_CI = common dso_local global i32 0, align 4
@mmTPC0_QM_CP_LDMA_SRC_BASE_LO_OFFSET = common dso_local global i32 0, align 4
@mmTPC0_QM_CP_LDMA_SRC_BASE_HI_OFFSET = common dso_local global i32 0, align 4
@mmTPC0_QM_CP_LDMA_TSIZE_OFFSET = common dso_local global i32 0, align 4
@mmTPC0_QM_CP_LDMA_COMMIT_OFFSET = common dso_local global i32 0, align 4
@mmTPC0_QM_CP_MSG_BASE0_ADDR_LO = common dso_local global i32 0, align 4
@mmTPC0_QM_CP_MSG_BASE0_ADDR_HI = common dso_local global i32 0, align 4
@mmTPC0_QM_CP_MSG_BASE1_ADDR_LO = common dso_local global i32 0, align 4
@mmTPC0_QM_CP_MSG_BASE1_ADDR_HI = common dso_local global i32 0, align 4
@mmTPC0_QM_CQ_CFG1 = common dso_local global i32 0, align 4
@mmTPC0_QM_GLBL_ERR_ADDR_LO = common dso_local global i32 0, align 4
@mmTPC0_QM_GLBL_ERR_ADDR_HI = common dso_local global i32 0, align 4
@mmTPC0_QM_GLBL_ERR_WDATA = common dso_local global i32 0, align 4
@GOYA_ASYNC_EVENT_ID_TPC0_QM = common dso_local global i32 0, align 4
@mmTPC0_QM_GLBL_ERR_CFG = common dso_local global i32 0, align 4
@QMAN_TPC_ERR_MSG_EN = common dso_local global i32 0, align 4
@mmTPC0_QM_GLBL_PROT = common dso_local global i32 0, align 4
@QMAN_TPC_ERR_PROT = common dso_local global i32 0, align 4
@mmTPC0_QM_GLBL_CFG0 = common dso_local global i32 0, align 4
@QMAN_TPC_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*, i32, i32)* @goya_init_tpc_qman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_init_tpc_qman(%struct.hl_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @mmTPC1_QM_PQ_PI, align 4
  %17 = load i32, i32* @mmTPC0_QM_PQ_PI, align 4
  %18 = sub nsw i32 %16, %17
  %19 = mul nsw i32 %15, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* @CFG_BASE, align 4
  %21 = load i32, i32* @mmSYNC_MNGR_MON_PAY_ADDRL_0, align 4
  %22 = add nsw i32 %20, %21
  %23 = call i32 @lower_32_bits(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @CFG_BASE, align 4
  %25 = load i32, i32* @mmSYNC_MNGR_MON_PAY_ADDRL_0, align 4
  %26 = add nsw i32 %24, %25
  %27 = call i32 @upper_32_bits(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @CFG_BASE, align 4
  %29 = load i32, i32* @mmSYNC_MNGR_SOB_OBJ_0, align 4
  %30 = add nsw i32 %28, %29
  %31 = call i32 @lower_32_bits(i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* @CFG_BASE, align 4
  %33 = load i32, i32* @mmSYNC_MNGR_SOB_OBJ_0, align 4
  %34 = add nsw i32 %32, %33
  %35 = call i32 @upper_32_bits(i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @CFG_BASE, align 4
  %37 = load i32, i32* @mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @lower_32_bits(i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @CFG_BASE, align 4
  %41 = load i32, i32* @mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR, align 4
  %42 = add nsw i32 %40, %41
  %43 = call i32 @upper_32_bits(i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %45 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* @mmTPC0_QM_PQ_BASE_LO, align 4
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @lower_32_bits(i32 %53)
  %55 = call i32 @WREG32(i32 %52, i32 %54)
  %56 = load i32, i32* @mmTPC0_QM_PQ_BASE_HI, align 4
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @upper_32_bits(i32 %59)
  %61 = call i32 @WREG32(i32 %58, i32 %60)
  %62 = load i32, i32* @mmTPC0_QM_PQ_SIZE, align 4
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* @TPC_QMAN_LENGTH, align 4
  %66 = call i32 @ilog2(i32 %65)
  %67 = call i32 @WREG32(i32 %64, i32 %66)
  %68 = load i32, i32* @mmTPC0_QM_PQ_PI, align 4
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %68, %69
  %71 = call i32 @WREG32(i32 %70, i32 0)
  %72 = load i32, i32* @mmTPC0_QM_PQ_CI, align 4
  %73 = load i32, i32* %14, align 4
  %74 = add nsw i32 %72, %73
  %75 = call i32 @WREG32(i32 %74, i32 0)
  %76 = load i32, i32* @mmTPC0_QM_CP_LDMA_SRC_BASE_LO_OFFSET, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i32 @WREG32(i32 %78, i32 4288)
  %80 = load i32, i32* @mmTPC0_QM_CP_LDMA_SRC_BASE_HI_OFFSET, align 4
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i32 @WREG32(i32 %82, i32 4292)
  %84 = load i32, i32* @mmTPC0_QM_CP_LDMA_TSIZE_OFFSET, align 4
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %84, %85
  %87 = call i32 @WREG32(i32 %86, i32 4296)
  %88 = load i32, i32* @mmTPC0_QM_CP_LDMA_COMMIT_OFFSET, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %88, %89
  %91 = call i32 @WREG32(i32 %90, i32 4300)
  %92 = load i32, i32* @mmTPC0_QM_CP_MSG_BASE0_ADDR_LO, align 4
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @WREG32(i32 %94, i32 %95)
  %97 = load i32, i32* @mmTPC0_QM_CP_MSG_BASE0_ADDR_HI, align 4
  %98 = load i32, i32* %14, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @WREG32(i32 %99, i32 %100)
  %102 = load i32, i32* @mmTPC0_QM_CP_MSG_BASE1_ADDR_LO, align 4
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %102, %103
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @WREG32(i32 %104, i32 %105)
  %107 = load i32, i32* @mmTPC0_QM_CP_MSG_BASE1_ADDR_HI, align 4
  %108 = load i32, i32* %14, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @WREG32(i32 %109, i32 %110)
  %112 = load i32, i32* @mmTPC0_QM_CQ_CFG1, align 4
  %113 = load i32, i32* %14, align 4
  %114 = add nsw i32 %112, %113
  %115 = call i32 @WREG32(i32 %114, i32 524296)
  %116 = load i32, i32* @mmTPC0_QM_GLBL_ERR_ADDR_LO, align 4
  %117 = load i32, i32* %14, align 4
  %118 = add nsw i32 %116, %117
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @WREG32(i32 %118, i32 %119)
  %121 = load i32, i32* @mmTPC0_QM_GLBL_ERR_ADDR_HI, align 4
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @WREG32(i32 %123, i32 %124)
  %126 = load i32, i32* @mmTPC0_QM_GLBL_ERR_WDATA, align 4
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* @GOYA_ASYNC_EVENT_ID_TPC0_QM, align 4
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %129, %130
  %132 = call i32 @WREG32(i32 %128, i32 %131)
  %133 = load i32, i32* @mmTPC0_QM_GLBL_ERR_CFG, align 4
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %133, %134
  %136 = load i32, i32* @QMAN_TPC_ERR_MSG_EN, align 4
  %137 = call i32 @WREG32(i32 %135, i32 %136)
  %138 = load i32, i32* @mmTPC0_QM_GLBL_PROT, align 4
  %139 = load i32, i32* %14, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* @QMAN_TPC_ERR_PROT, align 4
  %142 = call i32 @WREG32(i32 %140, i32 %141)
  %143 = load i32, i32* @mmTPC0_QM_GLBL_CFG0, align 4
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* @QMAN_TPC_ENABLE, align 4
  %147 = call i32 @WREG32(i32 %145, i32 %146)
  ret void
}

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
