; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_config_endianity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_config_endianity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@PXP2_REG_RQ_QM_ENDIAN_M = common dso_local global i32 0, align 4
@PXP2_REG_RQ_TM_ENDIAN_M = common dso_local global i32 0, align 4
@PXP2_REG_RQ_SRC_ENDIAN_M = common dso_local global i32 0, align 4
@PXP2_REG_RQ_CDU_ENDIAN_M = common dso_local global i32 0, align 4
@PXP2_REG_RQ_DBG_ENDIAN_M = common dso_local global i32 0, align 4
@PXP2_REG_RQ_HC_ENDIAN_M = common dso_local global i32 0, align 4
@PXP2_REG_RD_QM_SWAP_MODE = common dso_local global i32 0, align 4
@PXP2_REG_RD_TM_SWAP_MODE = common dso_local global i32 0, align 4
@PXP2_REG_RD_SRC_SWAP_MODE = common dso_local global i32 0, align 4
@PXP2_REG_RD_CDURD_SWAP_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_config_endianity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_config_endianity(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %6 = load i32, i32* @PXP2_REG_RQ_QM_ENDIAN_M, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @REG_WR(%struct.bnx2x* %5, i32 %6, i32 %7)
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = load i32, i32* @PXP2_REG_RQ_TM_ENDIAN_M, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @REG_WR(%struct.bnx2x* %9, i32 %10, i32 %11)
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = load i32, i32* @PXP2_REG_RQ_SRC_ENDIAN_M, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @REG_WR(%struct.bnx2x* %13, i32 %14, i32 %15)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %18 = load i32, i32* @PXP2_REG_RQ_CDU_ENDIAN_M, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @REG_WR(%struct.bnx2x* %17, i32 %18, i32 %19)
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = load i32, i32* @PXP2_REG_RQ_DBG_ENDIAN_M, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @REG_WR(%struct.bnx2x* %21, i32 %22, i32 %23)
  %25 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %26 = load i32, i32* @PXP2_REG_RQ_HC_ENDIAN_M, align 4
  %27 = call i32 @REG_WR(%struct.bnx2x* %25, i32 %26, i32 0)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %29 = load i32, i32* @PXP2_REG_RD_QM_SWAP_MODE, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @REG_WR(%struct.bnx2x* %28, i32 %29, i32 %30)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %33 = load i32, i32* @PXP2_REG_RD_TM_SWAP_MODE, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @REG_WR(%struct.bnx2x* %32, i32 %33, i32 %34)
  %36 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %37 = load i32, i32* @PXP2_REG_RD_SRC_SWAP_MODE, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @REG_WR(%struct.bnx2x* %36, i32 %37, i32 %38)
  %40 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %41 = load i32, i32* @PXP2_REG_RD_CDURD_SWAP_MODE, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @REG_WR(%struct.bnx2x* %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
