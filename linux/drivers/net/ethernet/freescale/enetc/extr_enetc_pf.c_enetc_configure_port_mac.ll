; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_configure_port_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_configure_port_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_hw = type { i32 }

@ENETC_PM0_MAXFRM = common dso_local global i32 0, align 4
@ENETC_RX_MAXFRM_SIZE = common dso_local global i32 0, align 4
@ENETC_MAC_MAXFRM_SIZE = common dso_local global i32 0, align 4
@ENETC_PTXMBAR = common dso_local global i32 0, align 4
@ENETC_PM0_CMD_CFG = common dso_local global i32 0, align 4
@ENETC_PM0_CMD_PHY_TX_EN = common dso_local global i32 0, align 4
@ENETC_PM0_CMD_TXP = common dso_local global i32 0, align 4
@ENETC_PM0_PROMISC = common dso_local global i32 0, align 4
@ENETC_PM0_TX_EN = common dso_local global i32 0, align 4
@ENETC_PM0_RX_EN = common dso_local global i32 0, align 4
@ENETC_PM1_CMD_CFG = common dso_local global i32 0, align 4
@ENETC_PM0_IF_MODE = common dso_local global i32 0, align 4
@ENETC_PMO_IFM_RG = common dso_local global i32 0, align 4
@ENETC_PM0_IFM_RGAUTO = common dso_local global i32 0, align 4
@ENETC_G_EPFBLPR1_XGMII = common dso_local global i64 0, align 8
@ENETC_PM0_IFM_XGMII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_hw*)* @enetc_configure_port_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_configure_port_mac(%struct.enetc_hw* %0) #0 {
  %2 = alloca %struct.enetc_hw*, align 8
  store %struct.enetc_hw* %0, %struct.enetc_hw** %2, align 8
  %3 = load %struct.enetc_hw*, %struct.enetc_hw** %2, align 8
  %4 = load i32, i32* @ENETC_PM0_MAXFRM, align 4
  %5 = load i32, i32* @ENETC_RX_MAXFRM_SIZE, align 4
  %6 = call i32 @ENETC_SET_MAXFRM(i32 %5)
  %7 = call i32 @enetc_port_wr(%struct.enetc_hw* %3, i32 %4, i32 %6)
  %8 = load %struct.enetc_hw*, %struct.enetc_hw** %2, align 8
  %9 = call i32 @ENETC_PTCMSDUR(i32 0)
  %10 = load i32, i32* @ENETC_MAC_MAXFRM_SIZE, align 4
  %11 = call i32 @enetc_port_wr(%struct.enetc_hw* %8, i32 %9, i32 %10)
  %12 = load %struct.enetc_hw*, %struct.enetc_hw** %2, align 8
  %13 = load i32, i32* @ENETC_PTXMBAR, align 4
  %14 = load i32, i32* @ENETC_MAC_MAXFRM_SIZE, align 4
  %15 = mul nsw i32 2, %14
  %16 = call i32 @enetc_port_wr(%struct.enetc_hw* %12, i32 %13, i32 %15)
  %17 = load %struct.enetc_hw*, %struct.enetc_hw** %2, align 8
  %18 = load i32, i32* @ENETC_PM0_CMD_CFG, align 4
  %19 = load i32, i32* @ENETC_PM0_CMD_PHY_TX_EN, align 4
  %20 = load i32, i32* @ENETC_PM0_CMD_TXP, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @ENETC_PM0_PROMISC, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ENETC_PM0_TX_EN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @ENETC_PM0_RX_EN, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @enetc_port_wr(%struct.enetc_hw* %17, i32 %18, i32 %27)
  %29 = load %struct.enetc_hw*, %struct.enetc_hw** %2, align 8
  %30 = load i32, i32* @ENETC_PM1_CMD_CFG, align 4
  %31 = load i32, i32* @ENETC_PM0_CMD_PHY_TX_EN, align 4
  %32 = load i32, i32* @ENETC_PM0_CMD_TXP, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ENETC_PM0_PROMISC, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ENETC_PM0_TX_EN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ENETC_PM0_RX_EN, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @enetc_port_wr(%struct.enetc_hw* %29, i32 %30, i32 %39)
  %41 = load %struct.enetc_hw*, %struct.enetc_hw** %2, align 8
  %42 = load i32, i32* @ENETC_PM0_IF_MODE, align 4
  %43 = call i32 @enetc_port_rd(%struct.enetc_hw* %41, i32 %42)
  %44 = load i32, i32* @ENETC_PMO_IFM_RG, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %1
  %48 = load %struct.enetc_hw*, %struct.enetc_hw** %2, align 8
  %49 = load i32, i32* @ENETC_PM0_IF_MODE, align 4
  %50 = load i32, i32* @ENETC_PM0_IFM_RGAUTO, align 4
  %51 = call i32 @enetc_port_wr(%struct.enetc_hw* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %1
  %53 = load %struct.enetc_hw*, %struct.enetc_hw** %2, align 8
  %54 = call i32 @ENETC_G_EPFBLPR(i32 1)
  %55 = call i64 @enetc_global_rd(%struct.enetc_hw* %53, i32 %54)
  %56 = load i64, i64* @ENETC_G_EPFBLPR1_XGMII, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.enetc_hw*, %struct.enetc_hw** %2, align 8
  %60 = load i32, i32* @ENETC_PM0_IF_MODE, align 4
  %61 = load i32, i32* @ENETC_PM0_IFM_XGMII, align 4
  %62 = call i32 @enetc_port_wr(%struct.enetc_hw* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %52
  ret void
}

declare dso_local i32 @enetc_port_wr(%struct.enetc_hw*, i32, i32) #1

declare dso_local i32 @ENETC_SET_MAXFRM(i32) #1

declare dso_local i32 @ENETC_PTCMSDUR(i32) #1

declare dso_local i32 @enetc_port_rd(%struct.enetc_hw*, i32) #1

declare dso_local i64 @enetc_global_rd(%struct.enetc_hw*, i32) #1

declare dso_local i32 @ENETC_G_EPFBLPR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
