; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_xgmac.c_xgene_enet_xgcle_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_xgmac.c_xgene_enet_xgcle_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32 }

@XCLE_BYPASS_REG0_ADDR = common dso_local global i32 0, align 4
@CFG_CLE_BYPASS_EN0 = common dso_local global i32 0, align 4
@XCLE_BYPASS_REG1_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"+ cle_bypass: fpsel: %d nxtfpsel: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*, i32, i32, i32)* @xgene_enet_xgcle_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_xgcle_bypass(%struct.xgene_enet_pdata* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xgene_enet_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %13 = load i32, i32* @XCLE_BYPASS_REG0_ADDR, align 4
  %14 = call i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata* %12, i32 %13, i32* %9)
  %15 = load i32, i32* @CFG_CLE_BYPASS_EN0, align 4
  %16 = load i32, i32* %9, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %9, align 4
  %18 = call i32 @CFG_CLE_IP_PROTOCOL0_SET(i32* %9, i32 3)
  %19 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %20 = load i32, i32* @XCLE_BYPASS_REG0_ADDR, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @xgene_enet_get_fpsel(i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @xgene_enet_get_fpsel(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %28 = load i32, i32* @XCLE_BYPASS_REG1_ADDR, align 4
  %29 = call i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata* %27, i32 %28, i32* %9)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @CFG_CLE_DSTQID0_SET(i32* %9, i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @CFG_CLE_FPSEL0_SET(i32* %9, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @CFG_CLE_NXTFPSEL0_SET(i32* %9, i32 %34)
  %36 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %37 = load i32, i32* @XCLE_BYPASS_REG1_ADDR, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %36, i32 %37, i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  ret void
}

declare dso_local i32 @xgene_enet_rd_csr(%struct.xgene_enet_pdata*, i32, i32*) #1

declare dso_local i32 @CFG_CLE_IP_PROTOCOL0_SET(i32*, i32) #1

declare dso_local i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @xgene_enet_get_fpsel(i32) #1

declare dso_local i32 @CFG_CLE_DSTQID0_SET(i32*, i32) #1

declare dso_local i32 @CFG_CLE_FPSEL0_SET(i32*, i32) #1

declare dso_local i32 @CFG_CLE_NXTFPSEL0_SET(i32*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
