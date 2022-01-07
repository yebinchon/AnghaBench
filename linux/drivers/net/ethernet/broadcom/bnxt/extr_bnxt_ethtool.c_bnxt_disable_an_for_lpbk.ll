; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_disable_an_for_lpbk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_disable_an_for_lpbk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.bnxt_link_info, i32 }
%struct.bnxt_link_info = type { i32, i32 }
%struct.hwrm_port_phy_cfg_input = type { i8*, i32 }

@PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_1GB = common dso_local global i32 0, align 4
@BNXT_LINK_SPEED_MSK_10GB = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_10GB = common dso_local global i32 0, align 4
@BNXT_LINK_SPEED_MSK_25GB = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_25GB = common dso_local global i32 0, align 4
@BNXT_LINK_SPEED_MSK_40GB = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_40GB = common dso_local global i32 0, align 4
@BNXT_LINK_SPEED_MSK_50GB = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_50GB = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_FLAGS_FORCE = common dso_local global i32 0, align 4
@PORT_PHY_CFG_REQ_FLAGS_RESET_PHY = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.hwrm_port_phy_cfg_input*)* @bnxt_disable_an_for_lpbk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_disable_an_for_lpbk(%struct.bnxt* %0, %struct.hwrm_port_phy_cfg_input* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.hwrm_port_phy_cfg_input*, align 8
  %6 = alloca %struct.bnxt_link_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.hwrm_port_phy_cfg_input* %1, %struct.hwrm_port_phy_cfg_input** %5, align 8
  %10 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 0
  store %struct.bnxt_link_info* %11, %struct.bnxt_link_info** %6, align 8
  %12 = load %struct.bnxt_link_info*, %struct.bnxt_link_info** %6, align 8
  %13 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

17:                                               ; preds = %2
  %18 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %19 = call i32 @bnxt_query_force_speeds(%struct.bnxt* %18, i32* %7)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %3, align 4
  br label %91

24:                                               ; preds = %17
  %25 = load i32, i32* @PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_1GB, align 4
  store i32 %25, i32* %8, align 4
  %26 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %27 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @netif_carrier_ok(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %33 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.bnxt_link_info, %struct.bnxt_link_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %8, align 4
  br label %68

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @BNXT_LINK_SPEED_MSK_10GB, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_10GB, align 4
  store i32 %42, i32* %8, align 4
  br label %67

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @BNXT_LINK_SPEED_MSK_25GB, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_25GB, align 4
  store i32 %49, i32* %8, align 4
  br label %66

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @BNXT_LINK_SPEED_MSK_40GB, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_40GB, align 4
  store i32 %56, i32* %8, align 4
  br label %65

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @BNXT_LINK_SPEED_MSK_50GB, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @PORT_PHY_CFG_REQ_FORCE_LINK_SPEED_50GB, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %62, %57
  br label %65

65:                                               ; preds = %64, %55
  br label %66

66:                                               ; preds = %65, %48
  br label %67

67:                                               ; preds = %66, %41
  br label %68

68:                                               ; preds = %67, %31
  %69 = load i32, i32* %8, align 4
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %5, align 8
  %72 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @PORT_PHY_CFG_REQ_FLAGS_FORCE, align 4
  %74 = load i32, i32* @PORT_PHY_CFG_REQ_FLAGS_RESET_PHY, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @cpu_to_le32(i32 %75)
  %77 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %5, align 8
  %78 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %82 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %5, align 8
  %83 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %84 = call i32 @hwrm_send_message(%struct.bnxt* %81, %struct.hwrm_port_phy_cfg_input* %82, i32 16, i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %5, align 8
  %86 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %85, i32 0, i32 1
  store i32 0, i32* %86, align 8
  %87 = call i8* @cpu_to_le16(i32 0)
  %88 = load %struct.hwrm_port_phy_cfg_input*, %struct.hwrm_port_phy_cfg_input** %5, align 8
  %89 = getelementptr inbounds %struct.hwrm_port_phy_cfg_input, %struct.hwrm_port_phy_cfg_input* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %68, %22, %16
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @bnxt_query_force_speeds(%struct.bnxt*, i32*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_port_phy_cfg_input*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
