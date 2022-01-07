; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_hw_enable_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_hw_enable_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@CFC_REG_WEAK_ENABLE_PF = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"CFC_REG_WEAK_ENABLE_PF is 0x%x\0A\00", align 1
@PBF_REG_DISABLE_PF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"PBF_REG_DISABLE_PF is 0x%x\0A\00", align 1
@IGU_REG_PCI_PF_MSI_EN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"IGU_REG_PCI_PF_MSI_EN is 0x%x\0A\00", align 1
@IGU_REG_PCI_PF_MSIX_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"IGU_REG_PCI_PF_MSIX_EN is 0x%x\0A\00", align 1
@IGU_REG_PCI_PF_MSIX_FUNC_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"IGU_REG_PCI_PF_MSIX_FUNC_MASK is 0x%x\0A\00", align 1
@PGLUE_B_REG_SHADOW_BME_PF_7_0_CLR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"PGLUE_B_REG_SHADOW_BME_PF_7_0_CLR is 0x%x\0A\00", align 1
@PGLUE_B_REG_FLR_REQUEST_PF_7_0_CLR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [44 x i8] c"PGLUE_B_REG_FLR_REQUEST_PF_7_0_CLR is 0x%x\0A\00", align 1
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER is 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_hw_enable_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_hw_enable_status(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %4 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %5 = load i32, i32* @CFC_REG_WEAK_ENABLE_PF, align 4
  %6 = call i32 @REG_RD(%struct.bnx2x* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @BNX2X_MSG_SP, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @DP(i32 %7, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = load i32, i32* @PBF_REG_DISABLE_PF, align 4
  %12 = call i32 @REG_RD(%struct.bnx2x* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @BNX2X_MSG_SP, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @DP(i32 %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %17 = load i32, i32* @IGU_REG_PCI_PF_MSI_EN, align 4
  %18 = call i32 @REG_RD(%struct.bnx2x* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @BNX2X_MSG_SP, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @DP(i32 %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %23 = load i32, i32* @IGU_REG_PCI_PF_MSIX_EN, align 4
  %24 = call i32 @REG_RD(%struct.bnx2x* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @BNX2X_MSG_SP, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @DP(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %29 = load i32, i32* @IGU_REG_PCI_PF_MSIX_FUNC_MASK, align 4
  %30 = call i32 @REG_RD(%struct.bnx2x* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* @BNX2X_MSG_SP, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @DP(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %32)
  %34 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %35 = load i32, i32* @PGLUE_B_REG_SHADOW_BME_PF_7_0_CLR, align 4
  %36 = call i32 @REG_RD(%struct.bnx2x* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @BNX2X_MSG_SP, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @DP(i32 %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i32 %38)
  %40 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %41 = load i32, i32* @PGLUE_B_REG_FLR_REQUEST_PF_7_0_CLR, align 4
  %42 = call i32 @REG_RD(%struct.bnx2x* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* @BNX2X_MSG_SP, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @DP(i32 %43, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 %44)
  %46 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %47 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, align 4
  %48 = call i32 @REG_RD(%struct.bnx2x* %46, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* @BNX2X_MSG_SP, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @DP(i32 %49, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %50)
  ret void
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
