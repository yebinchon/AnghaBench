; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_sgmac_enable_tx_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_sgmac_enable_tx_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i64, i32 }

@XGENE_ENET1 = common dso_local global i64 0, align 8
@CSR_ECM_CFG_0_ADDR = common dso_local global i32 0, align 4
@CSR_ECM_CFG_1_ADDR = common dso_local global i32 0, align 4
@XG_MCX_ECM_CFG_0_ADDR = common dso_local global i32 0, align 4
@MULTI_DPF_AUTOCTRL = common dso_local global i32 0, align 4
@PAUSE_XON_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*, i32)* @xgene_sgmac_enable_tx_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_sgmac_enable_tx_pause(%struct.xgene_enet_pdata* %0, i32 %1) #0 {
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %8 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @XGENE_ENET1, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %14 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = srem i32 %15, 2
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @CSR_ECM_CFG_0_ADDR, align 4
  br label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @CSR_ECM_CFG_1_ADDR, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %6, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @XG_MCX_ECM_CFG_0_ADDR, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @xgene_enet_rd_mcx_csr(%struct.xgene_enet_pdata* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load i32, i32* @MULTI_DPF_AUTOCTRL, align 4
  %34 = load i32, i32* @PAUSE_XON_EN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %45

38:                                               ; preds = %26
  %39 = load i32, i32* @MULTI_DPF_AUTOCTRL, align 4
  %40 = load i32, i32* @PAUSE_XON_EN, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %38, %32
  %46 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @xgene_enet_wr_mcx_csr(%struct.xgene_enet_pdata* %46, i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @xgene_enet_rd_mcx_csr(%struct.xgene_enet_pdata*, i32) #1

declare dso_local i32 @xgene_enet_wr_mcx_csr(%struct.xgene_enet_pdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
