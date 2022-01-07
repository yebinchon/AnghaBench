; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_init_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_init_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbe_priv = type { i32, i32, i32 }
%struct.gbe_slave = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"slave-port\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"missing slave-port parameter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"link-interface\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"missing link-interface value defaulting to 1G mac-phy link\0A\00", align 1
@SGMII_LINK_MAC_PHY = common dso_local global i64 0, align 8
@RGMII_LINK_MAC_PHY = common dso_local global i64 0, align 8
@XGMII_LINK_MAC_PHY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@GBE_DEF_10G_MAC_CONTROL = common dso_local global i32 0, align 4
@GBE_DEF_1G_MAC_CONTROL = common dso_local global i32 0, align 4
@GBE13_SLAVE_PORT2_OFFSET = common dso_local global i32 0, align 4
@GBE13_SLAVE_PORT_OFFSET = common dso_local global i32 0, align 4
@GBE13_EMAC_OFFSET = common dso_local global i32 0, align 4
@GBENU_SLAVE_PORT_OFFSET = common dso_local global i32 0, align 4
@GBENU_EMAC_OFFSET = common dso_local global i32 0, align 4
@XGBE10_SLAVE_PORT_OFFSET = common dso_local global i32 0, align 4
@XGBE10_EMAC_OFFSET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"unknown ethss(0x%x)\0A\00", align 1
@port_regs = common dso_local global i32 0, align 4
@port_vlan = common dso_local global i32 0, align 4
@tx_pri_map = common dso_local global i32 0, align 4
@sa_lo = common dso_local global i32 0, align 4
@sa_hi = common dso_local global i32 0, align 4
@ts_ctl = common dso_local global i32 0, align 4
@ts_seq_ltype = common dso_local global i32 0, align 4
@ts_vlan = common dso_local global i32 0, align 4
@ts_ctl_ltype2 = common dso_local global i32 0, align 4
@ts_ctl2 = common dso_local global i32 0, align 4
@emac_regs = common dso_local global i32 0, align 4
@mac_control = common dso_local global i32 0, align 4
@soft_reset = common dso_local global i32 0, align 4
@rx_maxlen = common dso_local global i32 0, align 4
@rx_pri_map = common dso_local global i32 0, align 4
@NETCP_LINK_STATE_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gbe_priv*, %struct.gbe_slave*, %struct.device_node*)* @init_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_slave(%struct.gbe_priv* %0, %struct.gbe_slave* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gbe_priv*, align 8
  %6 = alloca %struct.gbe_slave*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gbe_priv* %0, %struct.gbe_priv** %5, align 8
  store %struct.gbe_slave* %1, %struct.gbe_slave** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %13 = load %struct.device_node*, %struct.device_node** %7, align 8
  %14 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %15 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %14, i32 0, i32 0
  %16 = call i64 @of_property_read_u32(%struct.device_node* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %20 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %334

25:                                               ; preds = %3
  %26 = load %struct.device_node*, %struct.device_node** %7, align 8
  %27 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %28 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %27, i32 0, i32 1
  %29 = call i64 @of_property_read_u32(%struct.device_node* %26, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %33 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_warn(i32 %34, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i64, i64* @SGMII_LINK_MAC_PHY, align 8
  %37 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %38 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %31, %25
  %40 = load %struct.device_node*, %struct.device_node** %7, align 8
  %41 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %42 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %41, i32 0, i32 9
  store %struct.device_node* %40, %struct.device_node** %42, align 8
  %43 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %44 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %43, i32 0, i32 2
  store i32 0, i32* %44, align 8
  %45 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %46 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SGMII_LINK_MAC_PHY, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %62, label %50

50:                                               ; preds = %39
  %51 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %52 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RGMII_LINK_MAC_PHY, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %58 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @XGMII_LINK_MAC_PHY, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %56, %50, %39
  %63 = load %struct.device_node*, %struct.device_node** %7, align 8
  %64 = call i32 @of_parse_phandle(%struct.device_node* %63, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %65 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %66 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %62, %56
  %68 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %69 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %70 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @gbe_get_slave_port(%struct.gbe_priv* %68, i64 %71)
  %73 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %74 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 4
  %75 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %76 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @XGMII_LINK_MAC_PHY, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %67
  %81 = load i32, i32* @GBE_DEF_10G_MAC_CONTROL, align 4
  %82 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %83 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  br label %88

84:                                               ; preds = %67
  %85 = load i32, i32* @GBE_DEF_1G_MAC_CONTROL, align 4
  %86 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %87 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %80
  %89 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %90 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %8, align 4
  %93 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %94 = call i64 @IS_SS_ID_VER_14(%struct.gbe_priv* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %88
  %97 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %98 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %99, 1
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @GBE13_SLAVE_PORT2_OFFSET, align 4
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 %103, 2
  store i32 %104, i32* %8, align 4
  br label %107

105:                                              ; preds = %96
  %106 = load i32, i32* @GBE13_SLAVE_PORT_OFFSET, align 4
  store i32 %106, i32* %9, align 4
  br label %107

107:                                              ; preds = %105, %101
  %108 = load i32, i32* @GBE13_EMAC_OFFSET, align 4
  store i32 %108, i32* %10, align 4
  store i32 48, i32* %11, align 4
  store i32 64, i32* %12, align 4
  br label %135

109:                                              ; preds = %88
  %110 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %111 = call i64 @IS_SS_ID_MU(%struct.gbe_priv* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* @GBENU_SLAVE_PORT_OFFSET, align 4
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* @GBENU_EMAC_OFFSET, align 4
  store i32 %115, i32* %10, align 4
  store i32 4096, i32* %11, align 4
  store i32 4096, i32* %12, align 4
  br label %134

116:                                              ; preds = %109
  %117 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %118 = call i64 @IS_SS_ID_XGBE(%struct.gbe_priv* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* @XGBE10_SLAVE_PORT_OFFSET, align 4
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* @XGBE10_EMAC_OFFSET, align 4
  store i32 %122, i32* %10, align 4
  store i32 48, i32* %11, align 4
  store i32 64, i32* %12, align 4
  br label %133

123:                                              ; preds = %116
  %124 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %125 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %128 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @dev_err(i32 %126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %334

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133, %113
  br label %135

135:                                              ; preds = %134, %107
  %136 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %137 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %8, align 4
  %143 = mul nsw i32 %141, %142
  %144 = add nsw i32 %140, %143
  %145 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %146 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %148 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %10, align 4
  %151 = add nsw i32 %149, %150
  %152 = sext i32 %151 to i64
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %156 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = mul nsw i64 %154, %157
  %159 = add nsw i64 %152, %158
  %160 = trunc i64 %159 to i32
  %161 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %162 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %161, i32 0, i32 4
  store i32 %160, i32* %162, align 8
  %163 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %164 = call i64 @IS_SS_ID_VER_14(%struct.gbe_priv* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %215

166:                                              ; preds = %135
  %167 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %168 = load i32, i32* @port_regs, align 4
  %169 = load i32, i32* @port_vlan, align 4
  %170 = call i32 @GBE_SET_REG_OFS(%struct.gbe_slave* %167, i32 %168, i32 %169)
  %171 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %172 = load i32, i32* @port_regs, align 4
  %173 = load i32, i32* @tx_pri_map, align 4
  %174 = call i32 @GBE_SET_REG_OFS(%struct.gbe_slave* %171, i32 %172, i32 %173)
  %175 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %176 = load i32, i32* @port_regs, align 4
  %177 = load i32, i32* @sa_lo, align 4
  %178 = call i32 @GBE_SET_REG_OFS(%struct.gbe_slave* %175, i32 %176, i32 %177)
  %179 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %180 = load i32, i32* @port_regs, align 4
  %181 = load i32, i32* @sa_hi, align 4
  %182 = call i32 @GBE_SET_REG_OFS(%struct.gbe_slave* %179, i32 %180, i32 %181)
  %183 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %184 = load i32, i32* @port_regs, align 4
  %185 = load i32, i32* @ts_ctl, align 4
  %186 = call i32 @GBE_SET_REG_OFS(%struct.gbe_slave* %183, i32 %184, i32 %185)
  %187 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %188 = load i32, i32* @port_regs, align 4
  %189 = load i32, i32* @ts_seq_ltype, align 4
  %190 = call i32 @GBE_SET_REG_OFS(%struct.gbe_slave* %187, i32 %188, i32 %189)
  %191 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %192 = load i32, i32* @port_regs, align 4
  %193 = load i32, i32* @ts_vlan, align 4
  %194 = call i32 @GBE_SET_REG_OFS(%struct.gbe_slave* %191, i32 %192, i32 %193)
  %195 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %196 = load i32, i32* @port_regs, align 4
  %197 = load i32, i32* @ts_ctl_ltype2, align 4
  %198 = call i32 @GBE_SET_REG_OFS(%struct.gbe_slave* %195, i32 %196, i32 %197)
  %199 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %200 = load i32, i32* @port_regs, align 4
  %201 = load i32, i32* @ts_ctl2, align 4
  %202 = call i32 @GBE_SET_REG_OFS(%struct.gbe_slave* %199, i32 %200, i32 %201)
  %203 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %204 = load i32, i32* @emac_regs, align 4
  %205 = load i32, i32* @mac_control, align 4
  %206 = call i32 @GBE_SET_REG_OFS(%struct.gbe_slave* %203, i32 %204, i32 %205)
  %207 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %208 = load i32, i32* @emac_regs, align 4
  %209 = load i32, i32* @soft_reset, align 4
  %210 = call i32 @GBE_SET_REG_OFS(%struct.gbe_slave* %207, i32 %208, i32 %209)
  %211 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %212 = load i32, i32* @emac_regs, align 4
  %213 = load i32, i32* @rx_maxlen, align 4
  %214 = call i32 @GBE_SET_REG_OFS(%struct.gbe_slave* %211, i32 %212, i32 %213)
  br label %327

215:                                              ; preds = %135
  %216 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %217 = call i64 @IS_SS_ID_MU(%struct.gbe_priv* %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %272

219:                                              ; preds = %215
  %220 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %221 = load i32, i32* @port_regs, align 4
  %222 = load i32, i32* @port_vlan, align 4
  %223 = call i32 @GBENU_SET_REG_OFS(%struct.gbe_slave* %220, i32 %221, i32 %222)
  %224 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %225 = load i32, i32* @port_regs, align 4
  %226 = load i32, i32* @tx_pri_map, align 4
  %227 = call i32 @GBENU_SET_REG_OFS(%struct.gbe_slave* %224, i32 %225, i32 %226)
  %228 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %229 = load i32, i32* @port_regs, align 4
  %230 = load i32, i32* @rx_pri_map, align 4
  %231 = call i32 @GBENU_SET_REG_OFS(%struct.gbe_slave* %228, i32 %229, i32 %230)
  %232 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %233 = load i32, i32* @port_regs, align 4
  %234 = load i32, i32* @sa_lo, align 4
  %235 = call i32 @GBENU_SET_REG_OFS(%struct.gbe_slave* %232, i32 %233, i32 %234)
  %236 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %237 = load i32, i32* @port_regs, align 4
  %238 = load i32, i32* @sa_hi, align 4
  %239 = call i32 @GBENU_SET_REG_OFS(%struct.gbe_slave* %236, i32 %237, i32 %238)
  %240 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %241 = load i32, i32* @port_regs, align 4
  %242 = load i32, i32* @ts_ctl, align 4
  %243 = call i32 @GBENU_SET_REG_OFS(%struct.gbe_slave* %240, i32 %241, i32 %242)
  %244 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %245 = load i32, i32* @port_regs, align 4
  %246 = load i32, i32* @ts_seq_ltype, align 4
  %247 = call i32 @GBENU_SET_REG_OFS(%struct.gbe_slave* %244, i32 %245, i32 %246)
  %248 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %249 = load i32, i32* @port_regs, align 4
  %250 = load i32, i32* @ts_vlan, align 4
  %251 = call i32 @GBENU_SET_REG_OFS(%struct.gbe_slave* %248, i32 %249, i32 %250)
  %252 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %253 = load i32, i32* @port_regs, align 4
  %254 = load i32, i32* @ts_ctl_ltype2, align 4
  %255 = call i32 @GBENU_SET_REG_OFS(%struct.gbe_slave* %252, i32 %253, i32 %254)
  %256 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %257 = load i32, i32* @port_regs, align 4
  %258 = load i32, i32* @ts_ctl2, align 4
  %259 = call i32 @GBENU_SET_REG_OFS(%struct.gbe_slave* %256, i32 %257, i32 %258)
  %260 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %261 = load i32, i32* @port_regs, align 4
  %262 = load i32, i32* @rx_maxlen, align 4
  %263 = call i32 @GBENU_SET_REG_OFS(%struct.gbe_slave* %260, i32 %261, i32 %262)
  %264 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %265 = load i32, i32* @emac_regs, align 4
  %266 = load i32, i32* @mac_control, align 4
  %267 = call i32 @GBENU_SET_REG_OFS(%struct.gbe_slave* %264, i32 %265, i32 %266)
  %268 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %269 = load i32, i32* @emac_regs, align 4
  %270 = load i32, i32* @soft_reset, align 4
  %271 = call i32 @GBENU_SET_REG_OFS(%struct.gbe_slave* %268, i32 %269, i32 %270)
  br label %326

272:                                              ; preds = %215
  %273 = load %struct.gbe_priv*, %struct.gbe_priv** %5, align 8
  %274 = call i64 @IS_SS_ID_XGBE(%struct.gbe_priv* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %325

276:                                              ; preds = %272
  %277 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %278 = load i32, i32* @port_regs, align 4
  %279 = load i32, i32* @port_vlan, align 4
  %280 = call i32 @XGBE_SET_REG_OFS(%struct.gbe_slave* %277, i32 %278, i32 %279)
  %281 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %282 = load i32, i32* @port_regs, align 4
  %283 = load i32, i32* @tx_pri_map, align 4
  %284 = call i32 @XGBE_SET_REG_OFS(%struct.gbe_slave* %281, i32 %282, i32 %283)
  %285 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %286 = load i32, i32* @port_regs, align 4
  %287 = load i32, i32* @sa_lo, align 4
  %288 = call i32 @XGBE_SET_REG_OFS(%struct.gbe_slave* %285, i32 %286, i32 %287)
  %289 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %290 = load i32, i32* @port_regs, align 4
  %291 = load i32, i32* @sa_hi, align 4
  %292 = call i32 @XGBE_SET_REG_OFS(%struct.gbe_slave* %289, i32 %290, i32 %291)
  %293 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %294 = load i32, i32* @port_regs, align 4
  %295 = load i32, i32* @ts_ctl, align 4
  %296 = call i32 @XGBE_SET_REG_OFS(%struct.gbe_slave* %293, i32 %294, i32 %295)
  %297 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %298 = load i32, i32* @port_regs, align 4
  %299 = load i32, i32* @ts_seq_ltype, align 4
  %300 = call i32 @XGBE_SET_REG_OFS(%struct.gbe_slave* %297, i32 %298, i32 %299)
  %301 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %302 = load i32, i32* @port_regs, align 4
  %303 = load i32, i32* @ts_vlan, align 4
  %304 = call i32 @XGBE_SET_REG_OFS(%struct.gbe_slave* %301, i32 %302, i32 %303)
  %305 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %306 = load i32, i32* @port_regs, align 4
  %307 = load i32, i32* @ts_ctl_ltype2, align 4
  %308 = call i32 @XGBE_SET_REG_OFS(%struct.gbe_slave* %305, i32 %306, i32 %307)
  %309 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %310 = load i32, i32* @port_regs, align 4
  %311 = load i32, i32* @ts_ctl2, align 4
  %312 = call i32 @XGBE_SET_REG_OFS(%struct.gbe_slave* %309, i32 %310, i32 %311)
  %313 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %314 = load i32, i32* @emac_regs, align 4
  %315 = load i32, i32* @mac_control, align 4
  %316 = call i32 @XGBE_SET_REG_OFS(%struct.gbe_slave* %313, i32 %314, i32 %315)
  %317 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %318 = load i32, i32* @emac_regs, align 4
  %319 = load i32, i32* @soft_reset, align 4
  %320 = call i32 @XGBE_SET_REG_OFS(%struct.gbe_slave* %317, i32 %318, i32 %319)
  %321 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %322 = load i32, i32* @emac_regs, align 4
  %323 = load i32, i32* @rx_maxlen, align 4
  %324 = call i32 @XGBE_SET_REG_OFS(%struct.gbe_slave* %321, i32 %322, i32 %323)
  br label %325

325:                                              ; preds = %276, %272
  br label %326

326:                                              ; preds = %325, %219
  br label %327

327:                                              ; preds = %326, %166
  %328 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %329 = getelementptr inbounds %struct.gbe_slave, %struct.gbe_slave* %328, i32 0, i32 5
  %330 = load i32, i32* @NETCP_LINK_STATE_INVALID, align 4
  %331 = call i32 @atomic_set(i32* %329, i32 %330)
  %332 = load %struct.gbe_slave*, %struct.gbe_slave** %6, align 8
  %333 = call i32 @init_slave_ts_ctl(%struct.gbe_slave* %332)
  store i32 0, i32* %4, align 4
  br label %334

334:                                              ; preds = %327, %123, %18
  %335 = load i32, i32* %4, align 4
  ret i32 %335
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @gbe_get_slave_port(%struct.gbe_priv*, i64) #1

declare dso_local i64 @IS_SS_ID_VER_14(%struct.gbe_priv*) #1

declare dso_local i64 @IS_SS_ID_MU(%struct.gbe_priv*) #1

declare dso_local i64 @IS_SS_ID_XGBE(%struct.gbe_priv*) #1

declare dso_local i32 @GBE_SET_REG_OFS(%struct.gbe_slave*, i32, i32) #1

declare dso_local i32 @GBENU_SET_REG_OFS(%struct.gbe_slave*, i32, i32) #1

declare dso_local i32 @XGBE_SET_REG_OFS(%struct.gbe_slave*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_slave_ts_ctl(%struct.gbe_slave*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
