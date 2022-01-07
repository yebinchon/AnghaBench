; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_enet_cle_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_enet_cle_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32, i64 }

@MAC_OFFSET = common dso_local global i32 0, align 4
@XGENE_ENET1 = common dso_local global i64 0, align 8
@CLE_BYPASS_REG0_0_ADDR = common dso_local global i32 0, align 4
@CLE_BYPASS_REG1_0_ADDR = common dso_local global i32 0, align 4
@XCLE_BYPASS_REG0_ADDR = common dso_local global i32 0, align 4
@XCLE_BYPASS_REG1_ADDR = common dso_local global i32 0, align 4
@CFG_CLE_BYPASS_EN0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*, i32, i32, i32)* @xgene_enet_cle_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_cle_bypass(%struct.xgene_enet_pdata* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.xgene_enet_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %16 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MAC_OFFSET, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %21 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @XGENE_ENET1, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @CLE_BYPASS_REG0_0_ADDR, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @CLE_BYPASS_REG1_0_ADDR, align 4
  store i32 %27, i32* %10, align 4
  br label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @XCLE_BYPASS_REG0_ADDR, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* @XCLE_BYPASS_REG1_ADDR, align 4
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* @CFG_CLE_BYPASS_EN0, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %33, i32 %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @xgene_enet_get_fpsel(i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @xgene_enet_get_fpsel(i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @CFG_CLE_DSTQID0(i32 %43)
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @CFG_CLE_FPSEL0(i32 %45)
  %47 = or i32 %44, %46
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @CFG_CLE_NXTFPSEL0(i32 %48)
  %50 = or i32 %47, %49
  store i32 %50, i32* %12, align 4
  %51 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata* %51, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @xgene_enet_wr_csr(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @xgene_enet_get_fpsel(i32) #1

declare dso_local i32 @CFG_CLE_DSTQID0(i32) #1

declare dso_local i32 @CFG_CLE_FPSEL0(i32) #1

declare dso_local i32 @CFG_CLE_NXTFPSEL0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
