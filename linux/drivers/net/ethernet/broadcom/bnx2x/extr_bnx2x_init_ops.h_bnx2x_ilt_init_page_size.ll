; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_init_ops.h_bnx2x_ilt_init_page_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_init_ops.h_bnx2x_ilt_init_page_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@ILT_CLIENT_CDU = common dso_local global i32 0, align 4
@PXP2_REG_RQ_CDU_P_SIZE = common dso_local global i32 0, align 4
@ILT_CLIENT_QM = common dso_local global i32 0, align 4
@PXP2_REG_RQ_QM_P_SIZE = common dso_local global i32 0, align 4
@ILT_CLIENT_SRC = common dso_local global i32 0, align 4
@PXP2_REG_RQ_SRC_P_SIZE = common dso_local global i32 0, align 4
@ILT_CLIENT_TM = common dso_local global i32 0, align 4
@PXP2_REG_RQ_TM_P_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32)* @bnx2x_ilt_init_page_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_ilt_init_page_size(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %6 = load i32, i32* @ILT_CLIENT_CDU, align 4
  %7 = load i32, i32* @PXP2_REG_RQ_CDU_P_SIZE, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @bnx2x_ilt_init_client_psz(%struct.bnx2x* %5, i32 %6, i32 %7, i32 %8)
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = load i32, i32* @ILT_CLIENT_QM, align 4
  %12 = load i32, i32* @PXP2_REG_RQ_QM_P_SIZE, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @bnx2x_ilt_init_client_psz(%struct.bnx2x* %10, i32 %11, i32 %12, i32 %13)
  %15 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %16 = load i32, i32* @ILT_CLIENT_SRC, align 4
  %17 = load i32, i32* @PXP2_REG_RQ_SRC_P_SIZE, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @bnx2x_ilt_init_client_psz(%struct.bnx2x* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %21 = load i32, i32* @ILT_CLIENT_TM, align 4
  %22 = load i32, i32* @PXP2_REG_RQ_TM_P_SIZE, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @bnx2x_ilt_init_client_psz(%struct.bnx2x* %20, i32 %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @bnx2x_ilt_init_client_psz(%struct.bnx2x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
