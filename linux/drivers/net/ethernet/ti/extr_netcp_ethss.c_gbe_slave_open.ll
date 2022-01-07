; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_slave_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_slave_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbe_intf = type { %struct.TYPE_2__*, %struct.gbe_slave*, %struct.gbe_priv* }
%struct.TYPE_2__ = type { i32 }
%struct.gbe_slave = type { i32, i64, i64, i32, i32, i8*, i32 }
%struct.gbe_priv = type { i32, i32, i32 }
%struct.net_device = type opaque
%struct.net_device.2 = type opaque
%struct.net_device.0 = type opaque
%struct.net_device.1 = type opaque

@HOST_TX_PRI_MAP_DEFAULT = common dso_local global i32 0, align 4
@port_regs = common dso_local global i32 0, align 4
@rx_pri_map = common dso_local global i32 0, align 4
@ALE_PORT_STATE = common dso_local global i32 0, align 4
@ALE_PORT_STATE_FORWARD = common dso_local global i32 0, align 4
@ALE_MCAST_FWD_2 = common dso_local global i32 0, align 4
@SGMII_LINK_MAC_PHY = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@PORT_MII = common dso_local global i8* null, align 8
@RGMII_LINK_MAC_PHY = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Unsupported phy mode %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XGMII_LINK_MAC_PHY = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_NA = common dso_local global i64 0, align 8
@PORT_FIBRE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"phy not found on slave %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"phy found: id is: 0x%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbe_intf*)* @gbe_slave_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbe_slave_open(%struct.gbe_intf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gbe_intf*, align 8
  %4 = alloca %struct.gbe_priv*, align 8
  %5 = alloca %struct.gbe_slave*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (%struct.net_device*)*, align 8
  store %struct.gbe_intf* %0, %struct.gbe_intf** %3, align 8
  %9 = load %struct.gbe_intf*, %struct.gbe_intf** %3, align 8
  %10 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %9, i32 0, i32 2
  %11 = load %struct.gbe_priv*, %struct.gbe_priv** %10, align 8
  store %struct.gbe_priv* %11, %struct.gbe_priv** %4, align 8
  %12 = load %struct.gbe_intf*, %struct.gbe_intf** %3, align 8
  %13 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %12, i32 0, i32 1
  %14 = load %struct.gbe_slave*, %struct.gbe_slave** %13, align 8
  store %struct.gbe_slave* %14, %struct.gbe_slave** %5, align 8
  store i32 0, i32* %7, align 4
  store void (%struct.net_device*)* bitcast (void (%struct.net_device.0*)* @gbe_adjust_link to void (%struct.net_device*)*), void (%struct.net_device*)** %8, align 8
  %15 = load %struct.gbe_priv*, %struct.gbe_priv** %4, align 8
  %16 = call i32 @IS_SS_ID_2U(%struct.gbe_priv* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.gbe_priv*, %struct.gbe_priv** %4, align 8
  %20 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %21 = call i32 @gbe_sgmii_config(%struct.gbe_priv* %19, %struct.gbe_slave* %20)
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %24 = call i32 @gbe_port_reset(%struct.gbe_slave* %23)
  %25 = load %struct.gbe_priv*, %struct.gbe_priv** %4, align 8
  %26 = call i32 @IS_SS_ID_2U(%struct.gbe_priv* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load %struct.gbe_priv*, %struct.gbe_priv** %4, align 8
  %30 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %31 = call i32 @gbe_sgmii_rtreset(%struct.gbe_priv* %29, %struct.gbe_slave* %30, i32 0)
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.gbe_priv*, %struct.gbe_priv** %4, align 8
  %34 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %35 = load %struct.gbe_priv*, %struct.gbe_priv** %4, align 8
  %36 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @gbe_port_config(%struct.gbe_priv* %33, %struct.gbe_slave* %34, i32 %37)
  %39 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %40 = load %struct.gbe_intf*, %struct.gbe_intf** %3, align 8
  %41 = call i32 @gbe_set_slave_mac(%struct.gbe_slave* %39, %struct.gbe_intf* %40)
  %42 = load %struct.gbe_priv*, %struct.gbe_priv** %4, align 8
  %43 = call i64 @IS_SS_ID_MU(%struct.gbe_priv* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %32
  %46 = load i32, i32* @HOST_TX_PRI_MAP_DEFAULT, align 4
  %47 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %48 = load i32, i32* @port_regs, align 4
  %49 = load i32, i32* @rx_pri_map, align 4
  %50 = call i32 @GBE_REG_ADDR(%struct.gbe_slave* %47, i32 %48, i32 %49)
  %51 = call i32 @writel(i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %45, %32
  %53 = load %struct.gbe_priv*, %struct.gbe_priv** %4, align 8
  %54 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %57 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ALE_PORT_STATE, align 4
  %60 = load i32, i32* @ALE_PORT_STATE_FORWARD, align 4
  %61 = call i32 @cpsw_ale_control_set(i32 %55, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.gbe_priv*, %struct.gbe_priv** %4, align 8
  %63 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.gbe_intf*, %struct.gbe_intf** %3, align 8
  %66 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %71 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = shl i32 1, %72
  %74 = load i32, i32* @ALE_MCAST_FWD_2, align 4
  %75 = call i32 @cpsw_ale_add_mcast(i32 %64, i32 %69, i32 %73, i32 0, i32 0, i32 %74)
  %76 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %77 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @SGMII_LINK_MAC_PHY, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %52
  store i32 1, i32* %7, align 4
  %82 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  store i64 %82, i64* %6, align 8
  %83 = load i8*, i8** @PORT_MII, align 8
  %84 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %85 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %84, i32 0, i32 5
  store i8* %83, i8** %85, align 8
  br label %130

86:                                               ; preds = %52
  %87 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %88 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @RGMII_LINK_MAC_PHY, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %86
  store i32 1, i32* %7, align 4
  %93 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %94 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @of_get_phy_mode(i32 %95)
  store i64 %96, i64* %6, align 8
  %97 = load i64, i64* %6, align 8
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i64, i64* @PHY_INTERFACE_MODE_RGMII, align 8
  store i64 %100, i64* %6, align 8
  br label %101

101:                                              ; preds = %99, %92
  %102 = load i64, i64* %6, align 8
  %103 = call i32 @phy_interface_mode_is_rgmii(i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %113, label %105

105:                                              ; preds = %101
  %106 = load %struct.gbe_priv*, %struct.gbe_priv** %4, align 8
  %107 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %179

113:                                              ; preds = %101
  %114 = load i8*, i8** @PORT_MII, align 8
  %115 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %116 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %115, i32 0, i32 5
  store i8* %114, i8** %116, align 8
  br label %129

117:                                              ; preds = %86
  %118 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %119 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @XGMII_LINK_MAC_PHY, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  store i32 1, i32* %7, align 4
  %124 = load i64, i64* @PHY_INTERFACE_MODE_NA, align 8
  store i64 %124, i64* %6, align 8
  %125 = load i8*, i8** @PORT_FIBRE, align 8
  %126 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %127 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %126, i32 0, i32 5
  store i8* %125, i8** %127, align 8
  br label %128

128:                                              ; preds = %123, %117
  br label %129

129:                                              ; preds = %128, %113
  br label %130

130:                                              ; preds = %129, %81
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %178

133:                                              ; preds = %130
  %134 = load %struct.gbe_priv*, %struct.gbe_priv** %4, align 8
  %135 = call i64 @IS_SS_ID_XGBE(%struct.gbe_priv* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %133
  store void (%struct.net_device*)* bitcast (void (%struct.net_device.1*)* @xgbe_adjust_link to void (%struct.net_device*)*), void (%struct.net_device*)** %8, align 8
  br label %138

138:                                              ; preds = %137, %133
  %139 = load %struct.gbe_intf*, %struct.gbe_intf** %3, align 8
  %140 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %139, i32 0, i32 0
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %140, align 8
  %142 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %143 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load void (%struct.net_device*)*, void (%struct.net_device*)** %8, align 8
  %146 = bitcast void (%struct.net_device*)* %145 to void (%struct.net_device.2*)*
  %147 = load i64, i64* %6, align 8
  %148 = call i32 @of_phy_connect(%struct.TYPE_2__* %141, i32 %144, void (%struct.net_device.2*)* %146, i32 0, i64 %147)
  %149 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %150 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  %151 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %152 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %138
  %156 = load %struct.gbe_priv*, %struct.gbe_priv** %4, align 8
  %157 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %160 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @dev_err(i32 %158, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %161)
  %163 = load i32, i32* @ENODEV, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %2, align 4
  br label %179

165:                                              ; preds = %138
  %166 = load %struct.gbe_priv*, %struct.gbe_priv** %4, align 8
  %167 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %170 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @phydev_name(i32 %171)
  %173 = call i32 @dev_dbg(i32 %168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %172)
  %174 = load %struct.gbe_slave*, %struct.gbe_slave** %5, align 8
  %175 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @phy_start(i32 %176)
  br label %178

178:                                              ; preds = %165, %130
  store i32 0, i32* %2, align 4
  br label %179

179:                                              ; preds = %178, %155, %105
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local void @gbe_adjust_link(%struct.net_device.0*) #1

declare dso_local i32 @IS_SS_ID_2U(%struct.gbe_priv*) #1

declare dso_local i32 @gbe_sgmii_config(%struct.gbe_priv*, %struct.gbe_slave*) #1

declare dso_local i32 @gbe_port_reset(%struct.gbe_slave*) #1

declare dso_local i32 @gbe_sgmii_rtreset(%struct.gbe_priv*, %struct.gbe_slave*, i32) #1

declare dso_local i32 @gbe_port_config(%struct.gbe_priv*, %struct.gbe_slave*, i32) #1

declare dso_local i32 @gbe_set_slave_mac(%struct.gbe_slave*, %struct.gbe_intf*) #1

declare dso_local i64 @IS_SS_ID_MU(%struct.gbe_priv*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @GBE_REG_ADDR(%struct.gbe_slave*, i32, i32) #1

declare dso_local i32 @cpsw_ale_control_set(i32, i32, i32, i32) #1

declare dso_local i32 @cpsw_ale_add_mcast(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @of_get_phy_mode(i32) #1

declare dso_local i32 @phy_interface_mode_is_rgmii(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i64 @IS_SS_ID_XGBE(%struct.gbe_priv*) #1

declare dso_local void @xgbe_adjust_link(%struct.net_device.1*) #1

declare dso_local i32 @of_phy_connect(%struct.TYPE_2__*, i32, void (%struct.net_device.2*)*, i32, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @phydev_name(i32) #1

declare dso_local i32 @phy_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
