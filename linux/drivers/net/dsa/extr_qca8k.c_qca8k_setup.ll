; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.TYPE_3__*, i32, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.qca8k_priv = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"port 0 is not the CPU port\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@qca8k_regmap_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"regmap initialization failed\00", align 1
@QCA8K_CPU_PORT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Can't find phy-mode for master device\0A\00", align 1
@QCA8K_PORT_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@QCA8K_PORT_STATUS_TXFLOW = common dso_local global i32 0, align 4
@QCA8K_PORT_STATUS_RXFLOW = common dso_local global i32 0, align 4
@QCA8K_PORT_STATUS_DUPLEX = common dso_local global i32 0, align 4
@QCA8K_REG_GLOBAL_FW_CTRL0 = common dso_local global i32 0, align 4
@QCA8K_GLOBAL_FW_CTRL0_CPU_PORT_EN = common dso_local global i32 0, align 4
@QCA8K_PORT_HDR_CTRL_ALL = common dso_local global i32 0, align 4
@QCA8K_PORT_HDR_CTRL_TX_S = common dso_local global i32 0, align 4
@QCA8K_PORT_HDR_CTRL_RX_S = common dso_local global i32 0, align 4
@QCA8K_NUM_PORTS = common dso_local global i32 0, align 4
@QCA8K_PORT_LOOKUP_MEMBER = common dso_local global i32 0, align 4
@QCA8K_REG_GLOBAL_FW_CTRL1 = common dso_local global i32 0, align 4
@QCA8K_GLOBAL_FW_CTRL1_IGMP_DP_S = common dso_local global i32 0, align 4
@QCA8K_GLOBAL_FW_CTRL1_BC_DP_S = common dso_local global i32 0, align 4
@QCA8K_GLOBAL_FW_CTRL1_MC_DP_S = common dso_local global i32 0, align 4
@QCA8K_GLOBAL_FW_CTRL1_UC_DP_S = common dso_local global i32 0, align 4
@QCA8K_PORT_LOOKUP_LEARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @qca8k_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca8k_setup(%struct.dsa_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca %struct.qca8k_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.qca8k_priv*
  store %struct.qca8k_priv* %13, %struct.qca8k_priv** %4, align 8
  store i32 -1, i32* %7, align 4
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %15 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %14, i32 0)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %220

21:                                               ; preds = %1
  %22 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %23 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %22, i32 0, i32 2
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %26 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %29 = call i32 @devm_regmap_init(i32 %27, i32* null, %struct.qca8k_priv* %28, i32* @qca8k_regmap_config)
  %30 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %31 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %33 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = call i32 @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %21
  %40 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %41 = call i32 @qca8k_setup_mdio_bus(%struct.qca8k_priv* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %220

46:                                               ; preds = %39
  %47 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %48 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load i64, i64* @QCA8K_CPU_PORT, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @of_get_phy_mode(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %46
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %220

60:                                               ; preds = %46
  %61 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %62 = load i64, i64* @QCA8K_CPU_PORT, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @qca8k_set_pad_ctrl(%struct.qca8k_priv* %61, i64 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %220

69:                                               ; preds = %60
  %70 = load i32, i32* @QCA8K_PORT_STATUS_SPEED_1000, align 4
  %71 = load i32, i32* @QCA8K_PORT_STATUS_TXFLOW, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @QCA8K_PORT_STATUS_RXFLOW, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @QCA8K_PORT_STATUS_DUPLEX, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %8, align 4
  %77 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %78 = load i64, i64* @QCA8K_CPU_PORT, align 8
  %79 = call i32 @QCA8K_REG_PORT_STATUS(i64 %78)
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @qca8k_write(%struct.qca8k_priv* %77, i32 %79, i32 %80)
  %82 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %83 = load i32, i32* @QCA8K_REG_GLOBAL_FW_CTRL0, align 4
  %84 = load i32, i32* @QCA8K_GLOBAL_FW_CTRL0_CPU_PORT_EN, align 4
  %85 = call i32 @qca8k_reg_set(%struct.qca8k_priv* %82, i32 %83, i32 %84)
  %86 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %87 = load i64, i64* @QCA8K_CPU_PORT, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 @qca8k_port_set_status(%struct.qca8k_priv* %86, i32 %88, i32 1)
  %90 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %91 = getelementptr inbounds %struct.qca8k_priv, %struct.qca8k_priv* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i64, i64* @QCA8K_CPU_PORT, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  %96 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %97 = call i32 @qca8k_mib_init(%struct.qca8k_priv* %96)
  %98 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %99 = load i64, i64* @QCA8K_CPU_PORT, align 8
  %100 = call i32 @QCA8K_REG_PORT_HDR_CTRL(i64 %99)
  %101 = load i32, i32* @QCA8K_PORT_HDR_CTRL_ALL, align 4
  %102 = load i32, i32* @QCA8K_PORT_HDR_CTRL_TX_S, align 4
  %103 = shl i32 %101, %102
  %104 = load i32, i32* @QCA8K_PORT_HDR_CTRL_ALL, align 4
  %105 = load i32, i32* @QCA8K_PORT_HDR_CTRL_RX_S, align 4
  %106 = shl i32 %104, %105
  %107 = or i32 %103, %106
  %108 = call i32 @qca8k_write(%struct.qca8k_priv* %98, i32 %100, i32 %107)
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %119, %69
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @QCA8K_NUM_PORTS, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %109
  %114 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @QCA8K_PORT_LOOKUP_CTRL(i32 %115)
  %117 = load i32, i32* @QCA8K_PORT_LOOKUP_MEMBER, align 4
  %118 = call i32 @qca8k_rmw(%struct.qca8k_priv* %114, i32 %116, i32 %117, i32 0)
  br label %119

119:                                              ; preds = %113
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %109

122:                                              ; preds = %109
  store i32 1, i32* %6, align 4
  br label %123

123:                                              ; preds = %137, %122
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @QCA8K_NUM_PORTS, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %123
  %128 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call i64 @dsa_is_user_port(%struct.dsa_switch* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @qca8k_port_set_status(%struct.qca8k_priv* %133, i32 %134, i32 0)
  br label %136

136:                                              ; preds = %132, %127
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %123

140:                                              ; preds = %123
  %141 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %142 = load i32, i32* @QCA8K_REG_GLOBAL_FW_CTRL1, align 4
  %143 = call i32 @BIT(i64 0)
  %144 = load i32, i32* @QCA8K_GLOBAL_FW_CTRL1_IGMP_DP_S, align 4
  %145 = shl i32 %143, %144
  %146 = call i32 @BIT(i64 0)
  %147 = load i32, i32* @QCA8K_GLOBAL_FW_CTRL1_BC_DP_S, align 4
  %148 = shl i32 %146, %147
  %149 = or i32 %145, %148
  %150 = call i32 @BIT(i64 0)
  %151 = load i32, i32* @QCA8K_GLOBAL_FW_CTRL1_MC_DP_S, align 4
  %152 = shl i32 %150, %151
  %153 = or i32 %149, %152
  %154 = call i32 @BIT(i64 0)
  %155 = load i32, i32* @QCA8K_GLOBAL_FW_CTRL1_UC_DP_S, align 4
  %156 = shl i32 %154, %155
  %157 = or i32 %153, %156
  %158 = call i32 @qca8k_write(%struct.qca8k_priv* %141, i32 %142, i32 %157)
  store i32 0, i32* %6, align 4
  br label %159

159:                                              ; preds = %214, %140
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* @QCA8K_NUM_PORTS, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %217

163:                                              ; preds = %159
  %164 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %165 = load i32, i32* %6, align 4
  %166 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %163
  %169 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %170 = load i64, i64* @QCA8K_CPU_PORT, align 8
  %171 = trunc i64 %170 to i32
  %172 = call i32 @QCA8K_PORT_LOOKUP_CTRL(i32 %171)
  %173 = load i32, i32* @QCA8K_PORT_LOOKUP_MEMBER, align 4
  %174 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %175 = call i32 @dsa_user_ports(%struct.dsa_switch* %174)
  %176 = call i32 @qca8k_rmw(%struct.qca8k_priv* %169, i32 %172, i32 %173, i32 %175)
  br label %177

177:                                              ; preds = %168, %163
  %178 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %179 = load i32, i32* %6, align 4
  %180 = call i64 @dsa_is_user_port(%struct.dsa_switch* %178, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %213

182:                                              ; preds = %177
  %183 = load i32, i32* %6, align 4
  %184 = srem i32 %183, 2
  %185 = mul nsw i32 16, %184
  store i32 %185, i32* %9, align 4
  %186 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @QCA8K_PORT_LOOKUP_CTRL(i32 %187)
  %189 = load i32, i32* @QCA8K_PORT_LOOKUP_MEMBER, align 4
  %190 = load i64, i64* @QCA8K_CPU_PORT, align 8
  %191 = call i32 @BIT(i64 %190)
  %192 = call i32 @qca8k_rmw(%struct.qca8k_priv* %186, i32 %188, i32 %189, i32 %191)
  %193 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @QCA8K_PORT_LOOKUP_CTRL(i32 %194)
  %196 = load i32, i32* @QCA8K_PORT_LOOKUP_LEARN, align 4
  %197 = call i32 @qca8k_reg_set(%struct.qca8k_priv* %193, i32 %195, i32 %196)
  %198 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @QCA8K_EGRESS_VLAN(i32 %199)
  %201 = load i32, i32* %9, align 4
  %202 = shl i32 65535, %201
  %203 = load i32, i32* %9, align 4
  %204 = shl i32 1, %203
  %205 = call i32 @qca8k_rmw(%struct.qca8k_priv* %198, i32 %200, i32 %202, i32 %204)
  %206 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @QCA8K_REG_PORT_VLAN_CTRL0(i32 %207)
  %209 = call i32 @QCA8K_PORT_VLAN_CVID(i32 1)
  %210 = call i32 @QCA8K_PORT_VLAN_SVID(i32 1)
  %211 = or i32 %209, %210
  %212 = call i32 @qca8k_write(%struct.qca8k_priv* %206, i32 %208, i32 %211)
  br label %213

213:                                              ; preds = %182, %177
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  br label %159

217:                                              ; preds = %159
  %218 = load %struct.qca8k_priv*, %struct.qca8k_priv** %4, align 8
  %219 = call i32 @qca8k_fdb_flush(%struct.qca8k_priv* %218)
  store i32 0, i32* %2, align 4
  br label %220

220:                                              ; preds = %217, %67, %57, %44, %17
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local i64 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_regmap_init(i32, i32*, %struct.qca8k_priv*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @qca8k_setup_mdio_bus(%struct.qca8k_priv*) #1

declare dso_local i32 @of_get_phy_mode(i32) #1

declare dso_local i32 @qca8k_set_pad_ctrl(%struct.qca8k_priv*, i64, i32) #1

declare dso_local i32 @qca8k_write(%struct.qca8k_priv*, i32, i32) #1

declare dso_local i32 @QCA8K_REG_PORT_STATUS(i64) #1

declare dso_local i32 @qca8k_reg_set(%struct.qca8k_priv*, i32, i32) #1

declare dso_local i32 @qca8k_port_set_status(%struct.qca8k_priv*, i32, i32) #1

declare dso_local i32 @qca8k_mib_init(%struct.qca8k_priv*) #1

declare dso_local i32 @QCA8K_REG_PORT_HDR_CTRL(i64) #1

declare dso_local i32 @qca8k_rmw(%struct.qca8k_priv*, i32, i32, i32) #1

declare dso_local i32 @QCA8K_PORT_LOOKUP_CTRL(i32) #1

declare dso_local i64 @dsa_is_user_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @dsa_user_ports(%struct.dsa_switch*) #1

declare dso_local i32 @QCA8K_EGRESS_VLAN(i32) #1

declare dso_local i32 @QCA8K_REG_PORT_VLAN_CTRL0(i32) #1

declare dso_local i32 @QCA8K_PORT_VLAN_CVID(i32) #1

declare dso_local i32 @QCA8K_PORT_VLAN_SVID(i32) #1

declare dso_local i32 @qca8k_fdb_flush(%struct.qca8k_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
