; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_hwrm_phy_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_hwrm_phy_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.hwrm_port_phy_cfg_input = type { i32, i32, i32 }

@HWRM_PORT_PHY_CFG = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_LPBK_EXTERNAL = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_LPBK_LOCAL = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_LPBK_NONE = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_ENABLES_LPBK = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32, i32)* @bnxt_hwrm_phy_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_phy_loopback(%struct.bnxt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hwrm_port_phy_cfg_input, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = bitcast %struct.hwrm_port_phy_cfg_input* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 12, i1 false)
  %9 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %10 = load i32, i32* @HWRM_PORT_PHY_CFG, align 4
  %11 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %9, %struct.hwrm_port_phy_cfg_input* %7, i32 %10, i32 -1, i32 -1)
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %3
  %15 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %16 = call i32 @bnxt_disable_an_for_lpbk(%struct.bnxt* %15, %struct.hwrm_port_phy_cfg_input* %7)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @PORT_PHY_CFG_REQ_LPBK_EXTERNAL, align 4
  %21 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %7, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  br label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @PORT_PHY_CFG_REQ_LPBK_LOCAL, align 4
  %24 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %7, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %19
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @PORT_PHY_CFG_REQ_LPBK_NONE, align 4
  %28 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %7, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %25
  %30 = load i32, i32* @PORT_PHY_CFG_REQ_ENABLES_LPBK, align 4
  %31 = call i32 @cpu_to_le32(i32 %30)
  %32 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %7, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %34 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %35 = call i32 @hwrm_send_message(%struct.bnxt* %33, %struct.hwrm_port_phy_cfg_input* %7, i32 12, i32 %34)
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_port_phy_cfg_input*, i32, i32, i32) #2

declare dso_local i32 @bnxt_disable_an_for_lpbk(%struct.bnxt*, %struct.hwrm_port_phy_cfg_input*) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_port_phy_cfg_input*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
