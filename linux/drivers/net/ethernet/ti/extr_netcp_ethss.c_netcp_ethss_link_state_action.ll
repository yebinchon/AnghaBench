; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_netcp_ethss_link_state_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_netcp_ethss_link_state_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbe_priv = type { i32 }
%struct.net_device = type { i32 }
%struct.gbe_slave = type { i64, i32, i64, i32, %struct.phy_device* }
%struct.phy_device = type { i64 }

@SPEED_1000 = common dso_local global i64 0, align 8
@MACSL_GIG_MODE = common dso_local global i32 0, align 4
@MACSL_XGIG_MODE = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i64 0, align 8
@emac_regs = common dso_local global i32 0, align 4
@ALE_PORT_STATE = common dso_local global i32 0, align 4
@ALE_PORT_STATE_FORWARD = common dso_local global i32 0, align 4
@SGMII_LINK_MAC_PHY = common dso_local global i64 0, align 8
@RGMII_LINK_MAC_PHY = common dso_local global i64 0, align 8
@XGMII_LINK_MAC_PHY = common dso_local global i64 0, align 8
@ALE_PORT_STATE_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gbe_priv*, %struct.net_device*, %struct.gbe_slave*, i32)* @netcp_ethss_link_state_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netcp_ethss_link_state_action(%struct.gbe_priv* %0, %struct.net_device* %1, %struct.gbe_slave* %2, i32 %3) #0 {
  %5 = alloca %struct.gbe_priv*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.gbe_slave*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.phy_device*, align 8
  %10 = alloca i32, align 4
  store %struct.gbe_priv* %0, %struct.gbe_priv** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.gbe_slave* %2, %struct.gbe_slave** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.gbe_slave*, %struct.gbe_slave** %7, align 8
  %12 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %11, i32 0, i32 4
  %13 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  store %struct.phy_device* %13, %struct.phy_device** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %99

16:                                               ; preds = %4
  %17 = load %struct.gbe_slave*, %struct.gbe_slave** %7, align 8
  %18 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %10, align 4
  %20 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %21 = icmp ne %struct.phy_device* %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SPEED_1000, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32, i32* @MACSL_GIG_MODE, align 4
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @MACSL_XGIG_MODE, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %54

36:                                               ; preds = %22, %16
  %37 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %38 = icmp ne %struct.phy_device* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %41 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SPEED_10000, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32, i32* @MACSL_XGIG_MODE, align 4
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* @MACSL_GIG_MODE, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %45, %39, %36
  br label %54

54:                                               ; preds = %53, %28
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.gbe_slave*, %struct.gbe_slave** %7, align 8
  %57 = load i32, i32* @emac_regs, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @GBE_REG_ADDR(%struct.gbe_slave* %56, i32 %57, i32 %58)
  %60 = call i32 @writel(i32 %55, i32 %59)
  %61 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %62 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.gbe_slave*, %struct.gbe_slave** %7, align 8
  %65 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @ALE_PORT_STATE, align 4
  %68 = load i32, i32* @ALE_PORT_STATE_FORWARD, align 4
  %69 = call i32 @cpsw_ale_control_set(i32 %63, i32 %66, i32 %67, i32 %68)
  %70 = load %struct.net_device*, %struct.net_device** %6, align 8
  %71 = icmp ne %struct.net_device* %70, null
  br i1 %71, label %72, label %98

72:                                               ; preds = %54
  %73 = load %struct.gbe_slave*, %struct.gbe_slave** %7, align 8
  %74 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %72
  %78 = load %struct.gbe_slave*, %struct.gbe_slave** %7, align 8
  %79 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SGMII_LINK_MAC_PHY, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load %struct.gbe_slave*, %struct.gbe_slave** %7, align 8
  %85 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @RGMII_LINK_MAC_PHY, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %83
  %90 = load %struct.gbe_slave*, %struct.gbe_slave** %7, align 8
  %91 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @XGMII_LINK_MAC_PHY, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load %struct.net_device*, %struct.net_device** %6, align 8
  %97 = call i32 @netif_carrier_on(%struct.net_device* %96)
  br label %98

98:                                               ; preds = %95, %89, %83, %77, %72, %54
  br label %139

99:                                               ; preds = %4
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.gbe_slave*, %struct.gbe_slave** %7, align 8
  %102 = load i32, i32* @emac_regs, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @GBE_REG_ADDR(%struct.gbe_slave* %101, i32 %102, i32 %103)
  %105 = call i32 @writel(i32 %100, i32 %104)
  %106 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %107 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.gbe_slave*, %struct.gbe_slave** %7, align 8
  %110 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ALE_PORT_STATE, align 4
  %113 = load i32, i32* @ALE_PORT_STATE_DISABLE, align 4
  %114 = call i32 @cpsw_ale_control_set(i32 %108, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.net_device*, %struct.net_device** %6, align 8
  %116 = icmp ne %struct.net_device* %115, null
  br i1 %116, label %117, label %138

117:                                              ; preds = %99
  %118 = load %struct.gbe_slave*, %struct.gbe_slave** %7, align 8
  %119 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @SGMII_LINK_MAC_PHY, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %117
  %124 = load %struct.gbe_slave*, %struct.gbe_slave** %7, align 8
  %125 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @RGMII_LINK_MAC_PHY, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = load %struct.gbe_slave*, %struct.gbe_slave** %7, align 8
  %131 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @XGMII_LINK_MAC_PHY, align 8
  %134 = icmp ne i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load %struct.net_device*, %struct.net_device** %6, align 8
  %137 = call i32 @netif_carrier_off(%struct.net_device* %136)
  br label %138

138:                                              ; preds = %135, %129, %123, %117, %99
  br label %139

139:                                              ; preds = %138, %98
  %140 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %141 = icmp ne %struct.phy_device* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %144 = call i32 @phy_print_status(%struct.phy_device* %143)
  br label %145

145:                                              ; preds = %142, %139
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @GBE_REG_ADDR(%struct.gbe_slave*, i32, i32) #1

declare dso_local i32 @cpsw_ale_control_set(i32, i32, i32, i32) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
