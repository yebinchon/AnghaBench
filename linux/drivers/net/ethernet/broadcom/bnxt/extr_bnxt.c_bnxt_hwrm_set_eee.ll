; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_eee.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_set_eee.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.ethtool_eee }
%struct.ethtool_eee = type { i32, i32, i64, i64 }
%struct.hwrm_port_phy_cfg_input = type { i32, i32, i32 }

@PORT_PHY_CFG_REQ_FLAGS_EEE_ENABLE = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_FLAGS_EEE_TX_LPI_ENABLE = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_FLAGS_EEE_TX_LPI_DISABLE = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_FLAGS_EEE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, %struct.hwrm_port_phy_cfg_input*)* @bnxt_hwrm_set_eee to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_hwrm_set_eee(%struct.bnxt* %0, %struct.hwrm_port_phy_cfg_input* %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.hwrm_port_phy_cfg_input*, align 8
  %5 = alloca %struct.ethtool_eee*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store %struct.hwrm_port_phy_cfg_input* %1, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %8 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %9 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %8, i32 0, i32 0
  store %struct.ethtool_eee* %9, %struct.ethtool_eee** %5, align 8
  %10 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %2
  %15 = load i32, i32* @PORT_PHY_CFG_REQ_FLAGS_EEE_ENABLE, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @PORT_PHY_CFG_REQ_FLAGS_EEE_TX_LPI_ENABLE, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %7, align 4
  br label %28

24:                                               ; preds = %14
  %25 = load i32, i32* @PORT_PHY_CFG_REQ_FLAGS_EEE_TX_LPI_DISABLE, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @cpu_to_le32(i32 %29)
  %31 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %32 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bnxt_get_fw_auto_link_speeds(i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @cpu_to_le16(i32 %39)
  %41 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %42 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ethtool_eee*, %struct.ethtool_eee** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_eee, %struct.ethtool_eee* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @cpu_to_le32(i32 %45)
  %47 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %48 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %56

49:                                               ; preds = %2
  %50 = load i32, i32* @PORT_PHY_CFG_REQ_FLAGS_EEE_DISABLE, align 4
  %51 = call i32 @cpu_to_le32(i32 %50)
  %52 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %4, align 8
  %53 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %49, %28
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @bnxt_get_fw_auto_link_speeds(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
