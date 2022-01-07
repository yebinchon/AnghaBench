; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_link_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_link_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i64, i64, i32, %struct.bnx2x_phy*, i32, %struct.bnx2x* }
%struct.bnx2x_phy = type { i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32, i32, i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, i32)* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i64, i64, i64, i32, i32, i64, i32, i32 }

@MAX_PHYS = common dso_local global i32 0, align 4
@INT_PHY = common dso_local global i64 0, align 8
@PHY_HALF_OPEN_CONN_FLAG = common dso_local global i64 0, align 8
@LINK_UPDATE_MASK = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"port %x, XGXS?%x, int_status 0x%x\0A\00", align 1
@PHY_XGXS_FLAG = common dso_local global i64 0, align 8
@NIG_REG_STATUS_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@NIG_REG_EMAC0_STATUS_MISC_MI_INT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"int_mask 0x%x MI_INT %x, SERDES_LINK %x\0A\00", align 1
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@NIG_REG_SERDES0_STATUS_LINK_STATUS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c" 10G %x, XGXS_LINK %x\0A\00", align 1
@NIG_REG_XGXS0_STATUS_LINK10G = common dso_local global i64 0, align 8
@NIG_REG_XGXS0_STATUS_LINK_STATUS = common dso_local global i64 0, align 8
@NIG_REG_NIG_EMAC0_EN = common dso_local global i64 0, align 8
@EXT_PHY1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"phy in index %d link is up\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"phy in index %d link is down\0A\00", align 1
@EXT_PHY2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"Invalid link indicationmpc=0x%x. DISABLING LINK !!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Disabling TX on EXT_PHY2\0A\00", align 1
@DISABLE_TX = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@LINK_STATUS_SERDES_LINK = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Active external phy selected: %x\0A\00", align 1
@FLAGS_REARM_LATCH_SIGNAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [75 x i8] c"vars->flow_ctrl = 0x%x, vars->link_status = 0x%x, ext_phy_line_speed = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [69 x i8] c"Internal link speed %d is different than the external link speed %d\0A\00", align 1
@NIG_REG_EGRESS_DRAIN0_MODE = common dso_local global i64 0, align 8
@SPEED_10000 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [61 x i8] c"ext_phy_link_up = %d, int_link_up = %d, init_preceding = %d\0A\00", align 1
@FLAGS_INIT_XGXS_FIRST = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@PHY_SGMII_FLAG = common dso_local global i64 0, align 8
@FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@LINK_STATUS_PFC_ENABLED = common dso_local global i64 0, align 8
@LINK_STATUS_LINK_UP = common dso_local global i32 0, align 4
@FEATURE_CONFIG_BC_SUPPORTS_AFEX = common dso_local global i32 0, align 4
@DRV_MSG_CODE_LINK_STATUS_CHANGED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_link_update(%struct.link_params* %0, %struct.link_vars* %1) #0 {
  %3 = alloca %struct.link_params*, align 8
  %4 = alloca %struct.link_vars*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.bnx2x_phy*, align 8
  store %struct.link_params* %0, %struct.link_params** %3, align 8
  store %struct.link_vars* %1, %struct.link_vars** %4, align 8
  %20 = load %struct.link_params*, %struct.link_params** %3, align 8
  %21 = getelementptr inbounds %struct.link_params, %struct.link_params* %20, i32 0, i32 5
  %22 = load %struct.bnx2x*, %struct.bnx2x** %21, align 8
  store %struct.bnx2x* %22, %struct.bnx2x** %5, align 8
  %23 = load i32, i32* @MAX_PHYS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %6, align 8
  %26 = alloca %struct.link_vars, i64 %24, align 16
  store i64 %24, i64* %7, align 8
  %27 = load %struct.link_params*, %struct.link_params** %3, align 8
  %28 = getelementptr inbounds %struct.link_params, %struct.link_params* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %8, align 8
  %30 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %31 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %33 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %34 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %17, align 8
  %36 = load i64, i64* @INT_PHY, align 8
  store i64 %36, i64* %18, align 8
  %37 = load i64, i64* @PHY_HALF_OPEN_CONN_FLAG, align 8
  %38 = xor i64 %37, -1
  %39 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %40 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = and i64 %41, %38
  store i64 %42, i64* %40, align 8
  %43 = load i32, i32* @LINK_UPDATE_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %46 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i64, i64* @INT_PHY, align 8
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %85, %2
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.link_params*, %struct.link_params** %3, align 8
  %53 = getelementptr inbounds %struct.link_params, %struct.link_params* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %88

56:                                               ; preds = %50
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i64 %57
  %59 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i64 %60
  %62 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i64 %63
  %65 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @DUPLEX_FULL, align 4
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i64 %67
  %69 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %68, i32 0, i32 8
  store i32 %66, i32* %69, align 4
  %70 = load i64, i64* %10, align 8
  %71 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i64 %70
  %72 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %71, i32 0, i32 4
  store i32 0, i32* %72, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i64 %73
  %75 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %74, i32 0, i32 5
  store i32 0, i32* %75, align 4
  %76 = load i64, i64* %10, align 8
  %77 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i64 %76
  %78 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %77, i32 0, i32 6
  store i64 0, i64* %78, align 8
  %79 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %80 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i64 %82
  %84 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %83, i32 0, i32 7
  store i32 %81, i32* %84, align 8
  br label %85

85:                                               ; preds = %56
  %86 = load i64, i64* %10, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %10, align 8
  br label %50

88:                                               ; preds = %50
  %89 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %90 = call i64 @USES_WARPCORE(%struct.bnx2x* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %88
  %93 = load %struct.link_params*, %struct.link_params** %3, align 8
  %94 = load %struct.link_params*, %struct.link_params** %3, align 8
  %95 = getelementptr inbounds %struct.link_params, %struct.link_params* %94, i32 0, i32 3
  %96 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %95, align 8
  %97 = load i64, i64* @INT_PHY, align 8
  %98 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %96, i64 %97
  %99 = call i32 @bnx2x_set_aer_mmd(%struct.link_params* %93, %struct.bnx2x_phy* %98)
  br label %100

100:                                              ; preds = %92, %88
  %101 = load i32, i32* @NETIF_MSG_LINK, align 4
  %102 = load i64, i64* %8, align 8
  %103 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %104 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @PHY_XGXS_FLAG, align 8
  %107 = and i64 %105, %106
  %108 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %109 = load i64, i64* @NIG_REG_STATUS_INTERRUPT_PORT0, align 8
  %110 = load i64, i64* %8, align 8
  %111 = mul i64 %110, 4
  %112 = add i64 %109, %111
  %113 = call i64 @REG_RD(%struct.bnx2x* %108, i64 %112)
  %114 = call i32 (i32, i8*, ...) @DP(i32 %101, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %102, i64 %107, i64 %113)
  %115 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %116 = load i64, i64* @NIG_REG_EMAC0_STATUS_MISC_MI_INT, align 8
  %117 = load i64, i64* %8, align 8
  %118 = mul i64 %117, 24
  %119 = add i64 %116, %118
  %120 = call i64 @REG_RD(%struct.bnx2x* %115, i64 %119)
  %121 = icmp ugt i64 %120, 0
  %122 = zext i1 %121 to i32
  %123 = sext i32 %122 to i64
  store i64 %123, i64* %15, align 8
  %124 = load i32, i32* @NETIF_MSG_LINK, align 4
  %125 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %126 = load i64, i64* @NIG_REG_MASK_INTERRUPT_PORT0, align 8
  %127 = load i64, i64* %8, align 8
  %128 = mul i64 %127, 4
  %129 = add i64 %126, %128
  %130 = call i64 @REG_RD(%struct.bnx2x* %125, i64 %129)
  %131 = load i64, i64* %15, align 8
  %132 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %133 = load i64, i64* @NIG_REG_SERDES0_STATUS_LINK_STATUS, align 8
  %134 = load i64, i64* %8, align 8
  %135 = mul i64 %134, 60
  %136 = add i64 %133, %135
  %137 = call i64 @REG_RD(%struct.bnx2x* %132, i64 %136)
  %138 = call i32 (i32, i8*, ...) @DP(i32 %124, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %130, i64 %131, i64 %137)
  %139 = load i32, i32* @NETIF_MSG_LINK, align 4
  %140 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %141 = load i64, i64* @NIG_REG_XGXS0_STATUS_LINK10G, align 8
  %142 = load i64, i64* %8, align 8
  %143 = mul i64 %142, 104
  %144 = add i64 %141, %143
  %145 = call i64 @REG_RD(%struct.bnx2x* %140, i64 %144)
  %146 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %147 = load i64, i64* @NIG_REG_XGXS0_STATUS_LINK_STATUS, align 8
  %148 = load i64, i64* %8, align 8
  %149 = mul i64 %148, 104
  %150 = add i64 %147, %149
  %151 = call i64 @REG_RD(%struct.bnx2x* %146, i64 %150)
  %152 = call i32 (i32, i8*, ...) @DP(i32 %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %145, i64 %151)
  %153 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %154 = call i32 @CHIP_IS_E3(%struct.bnx2x* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %100
  %157 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %158 = load i64, i64* @NIG_REG_NIG_EMAC0_EN, align 8
  %159 = load i64, i64* %8, align 8
  %160 = mul i64 %159, 4
  %161 = add i64 %158, %160
  %162 = call i32 @REG_WR(%struct.bnx2x* %157, i64 %161, i32 0)
  br label %163

163:                                              ; preds = %156, %100
  %164 = load i64, i64* @EXT_PHY1, align 8
  store i64 %164, i64* %10, align 8
  br label %165

165:                                              ; preds = %221, %163
  %166 = load i64, i64* %10, align 8
  %167 = load %struct.link_params*, %struct.link_params** %3, align 8
  %168 = getelementptr inbounds %struct.link_params, %struct.link_params* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp ult i64 %166, %169
  br i1 %170, label %171, label %224

171:                                              ; preds = %165
  %172 = load %struct.link_params*, %struct.link_params** %3, align 8
  %173 = getelementptr inbounds %struct.link_params, %struct.link_params* %172, i32 0, i32 3
  %174 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %173, align 8
  %175 = load i64, i64* %10, align 8
  %176 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %174, i64 %175
  store %struct.bnx2x_phy* %176, %struct.bnx2x_phy** %19, align 8
  %177 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %19, align 8
  %178 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %177, i32 0, i32 0
  %179 = load i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %178, align 8
  %180 = icmp ne i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %171
  br label %221

182:                                              ; preds = %171
  %183 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %19, align 8
  %184 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %183, i32 0, i32 0
  %185 = load i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %184, align 8
  %186 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %19, align 8
  %187 = load %struct.link_params*, %struct.link_params** %3, align 8
  %188 = load i64, i64* %10, align 8
  %189 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i64 %188
  %190 = call i64 %185(%struct.bnx2x_phy* %186, %struct.link_params* %187, %struct.link_vars* %189)
  store i64 %190, i64* %13, align 8
  %191 = load i64, i64* %13, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %182
  %194 = load i32, i32* @NETIF_MSG_LINK, align 4
  %195 = load i64, i64* %10, align 8
  %196 = call i32 (i32, i8*, ...) @DP(i32 %194, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i64 %195)
  br label %201

197:                                              ; preds = %182
  %198 = load i32, i32* @NETIF_MSG_LINK, align 4
  %199 = load i64, i64* %10, align 8
  %200 = call i32 (i32, i8*, ...) @DP(i32 %198, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %199)
  br label %221

201:                                              ; preds = %193
  %202 = load i64, i64* %12, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %201
  store i64 1, i64* %12, align 8
  %205 = load i64, i64* %10, align 8
  store i64 %205, i64* %18, align 8
  br label %220

206:                                              ; preds = %201
  %207 = load %struct.link_params*, %struct.link_params** %3, align 8
  %208 = call i32 @bnx2x_phy_selection(%struct.link_params* %207)
  switch i32 %208, label %213 [
    i32 129, label %209
    i32 130, label %209
    i32 128, label %211
  ]

209:                                              ; preds = %206, %206
  %210 = load i64, i64* @EXT_PHY1, align 8
  store i64 %210, i64* %18, align 8
  br label %219

211:                                              ; preds = %206
  %212 = load i64, i64* @EXT_PHY2, align 8
  store i64 %212, i64* %18, align 8
  br label %219

213:                                              ; preds = %206
  %214 = load i32, i32* @NETIF_MSG_LINK, align 4
  %215 = load %struct.link_params*, %struct.link_params** %3, align 8
  %216 = getelementptr inbounds %struct.link_params, %struct.link_params* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = call i32 (i32, i8*, ...) @DP(i32 %214, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %217)
  store i64 0, i64* %12, align 8
  br label %219

219:                                              ; preds = %213, %211, %209
  br label %220

220:                                              ; preds = %219, %204
  br label %221

221:                                              ; preds = %220, %197, %181
  %222 = load i64, i64* %10, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %10, align 8
  br label %165

224:                                              ; preds = %165
  %225 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %226 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  store i64 %227, i64* %17, align 8
  %228 = load %struct.link_params*, %struct.link_params** %3, align 8
  %229 = getelementptr inbounds %struct.link_params, %struct.link_params* %228, i32 0, i32 3
  %230 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %229, align 8
  %231 = load i64, i64* @INT_PHY, align 8
  %232 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %230, i64 %231
  %233 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %232, i32 0, i32 0
  %234 = load i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %233, align 8
  %235 = icmp ne i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* %234, null
  br i1 %235, label %236, label %252

236:                                              ; preds = %224
  %237 = load %struct.link_params*, %struct.link_params** %3, align 8
  %238 = getelementptr inbounds %struct.link_params, %struct.link_params* %237, i32 0, i32 3
  %239 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %238, align 8
  %240 = load i64, i64* @INT_PHY, align 8
  %241 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %239, i64 %240
  %242 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %241, i32 0, i32 0
  %243 = load i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i64 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %242, align 8
  %244 = load %struct.link_params*, %struct.link_params** %3, align 8
  %245 = getelementptr inbounds %struct.link_params, %struct.link_params* %244, i32 0, i32 3
  %246 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %245, align 8
  %247 = load i64, i64* @INT_PHY, align 8
  %248 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %246, i64 %247
  %249 = load %struct.link_params*, %struct.link_params** %3, align 8
  %250 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %251 = call i64 %243(%struct.bnx2x_phy* %248, %struct.link_params* %249, %struct.link_vars* %250)
  br label %252

252:                                              ; preds = %236, %224
  %253 = load i64, i64* %18, align 8
  %254 = load i64, i64* @INT_PHY, align 8
  %255 = icmp ugt i64 %253, %254
  br i1 %255, label %256, label %346

256:                                              ; preds = %252
  %257 = load i64, i64* %18, align 8
  %258 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i64 %257
  %259 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %258, i32 0, i32 3
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %262 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %261, i32 0, i32 3
  store i64 %260, i64* %262, align 8
  %263 = load i64, i64* %18, align 8
  %264 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i64 %263
  %265 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %268 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 8
  %271 = load i64, i64* %18, align 8
  %272 = load i64, i64* @EXT_PHY1, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %302

274:                                              ; preds = %256
  %275 = load %struct.link_params*, %struct.link_params** %3, align 8
  %276 = getelementptr inbounds %struct.link_params, %struct.link_params* %275, i32 0, i32 3
  %277 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %276, align 8
  %278 = load i64, i64* @EXT_PHY2, align 8
  %279 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %277, i64 %278
  %280 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %279, i32 0, i32 4
  %281 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, i32)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, i32)** %280, align 8
  %282 = icmp ne i32 (%struct.bnx2x_phy*, %struct.link_params*, i32)* %281, null
  br i1 %282, label %283, label %301

283:                                              ; preds = %274
  %284 = load i32, i32* @NETIF_MSG_LINK, align 4
  %285 = call i32 (i32, i8*, ...) @DP(i32 %284, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %286 = load %struct.link_params*, %struct.link_params** %3, align 8
  %287 = getelementptr inbounds %struct.link_params, %struct.link_params* %286, i32 0, i32 3
  %288 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %287, align 8
  %289 = load i64, i64* @EXT_PHY2, align 8
  %290 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %288, i64 %289
  %291 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %290, i32 0, i32 4
  %292 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, i32)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, i32)** %291, align 8
  %293 = load %struct.link_params*, %struct.link_params** %3, align 8
  %294 = getelementptr inbounds %struct.link_params, %struct.link_params* %293, i32 0, i32 3
  %295 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %294, align 8
  %296 = load i64, i64* @EXT_PHY2, align 8
  %297 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %295, i64 %296
  %298 = load %struct.link_params*, %struct.link_params** %3, align 8
  %299 = load i32, i32* @DISABLE_TX, align 4
  %300 = call i32 %292(%struct.bnx2x_phy* %297, %struct.link_params* %298, i32 %299)
  br label %301

301:                                              ; preds = %283, %274
  br label %302

302:                                              ; preds = %301, %256
  %303 = load i64, i64* %18, align 8
  %304 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i64 %303
  %305 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %304, i32 0, i32 1
  %306 = load i64, i64* %305, align 8
  store i64 %306, i64* %16, align 8
  %307 = load i64, i64* %18, align 8
  %308 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i64 %307
  %309 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %308, i32 0, i32 8
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %312 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %311, i32 0, i32 8
  store i32 %310, i32* %312, align 4
  %313 = load %struct.link_params*, %struct.link_params** %3, align 8
  %314 = getelementptr inbounds %struct.link_params, %struct.link_params* %313, i32 0, i32 3
  %315 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %314, align 8
  %316 = load i64, i64* %18, align 8
  %317 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %315, i64 %316
  %318 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %321 = and i32 %319, %320
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %329

323:                                              ; preds = %302
  %324 = load i32, i32* @LINK_STATUS_SERDES_LINK, align 4
  %325 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %326 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = or i32 %327, %324
  store i32 %328, i32* %326, align 8
  br label %336

329:                                              ; preds = %302
  %330 = load i32, i32* @LINK_STATUS_SERDES_LINK, align 4
  %331 = xor i32 %330, -1
  %332 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %333 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = and i32 %334, %331
  store i32 %335, i32* %333, align 8
  br label %336

336:                                              ; preds = %329, %323
  %337 = load i64, i64* %18, align 8
  %338 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i64 %337
  %339 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %338, i32 0, i32 7
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %342 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %341, i32 0, i32 7
  store i32 %340, i32* %342, align 8
  %343 = load i32, i32* @NETIF_MSG_LINK, align 4
  %344 = load i64, i64* %18, align 8
  %345 = call i32 (i32, i8*, ...) @DP(i32 %343, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %344)
  br label %346

346:                                              ; preds = %336, %252
  %347 = load i64, i64* @EXT_PHY1, align 8
  store i64 %347, i64* %10, align 8
  br label %348

348:                                              ; preds = %374, %346
  %349 = load i64, i64* %10, align 8
  %350 = load %struct.link_params*, %struct.link_params** %3, align 8
  %351 = getelementptr inbounds %struct.link_params, %struct.link_params* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  %353 = icmp ult i64 %349, %352
  br i1 %353, label %354, label %377

354:                                              ; preds = %348
  %355 = load %struct.link_params*, %struct.link_params** %3, align 8
  %356 = getelementptr inbounds %struct.link_params, %struct.link_params* %355, i32 0, i32 3
  %357 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %356, align 8
  %358 = load i64, i64* %10, align 8
  %359 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %357, i64 %358
  %360 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @FLAGS_REARM_LATCH_SIGNAL, align 4
  %363 = and i32 %361, %362
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %373

365:                                              ; preds = %354
  %366 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %367 = load i64, i64* %8, align 8
  %368 = load i64, i64* %10, align 8
  %369 = load i64, i64* %18, align 8
  %370 = icmp eq i64 %368, %369
  %371 = zext i1 %370 to i32
  %372 = call i32 @bnx2x_rearm_latch_signal(%struct.bnx2x* %366, i64 %367, i32 %371)
  br label %377

373:                                              ; preds = %354
  br label %374

374:                                              ; preds = %373
  %375 = load i64, i64* %10, align 8
  %376 = add i64 %375, 1
  store i64 %376, i64* %10, align 8
  br label %348

377:                                              ; preds = %365, %348
  %378 = load i32, i32* @NETIF_MSG_LINK, align 4
  %379 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %380 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %379, i32 0, i32 3
  %381 = load i64, i64* %380, align 8
  %382 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %383 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i64, i64* %16, align 8
  %386 = call i32 (i32, i8*, ...) @DP(i32 %378, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i64 0, i64 0), i64 %381, i32 %384, i64 %385)
  %387 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %388 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %387, i32 0, i32 4
  %389 = load i32, i32* %388, align 8
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %431

391:                                              ; preds = %377
  %392 = load %struct.link_params*, %struct.link_params** %3, align 8
  %393 = call i64 @SINGLE_MEDIA_DIRECT(%struct.link_params* %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %413, label %395

395:                                              ; preds = %391
  %396 = load i64, i64* %12, align 8
  %397 = icmp ne i64 %396, 0
  br i1 %397, label %398, label %413

398:                                              ; preds = %395
  %399 = load i64, i64* %16, align 8
  %400 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %401 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %400, i32 0, i32 1
  %402 = load i64, i64* %401, align 8
  %403 = icmp ne i64 %399, %402
  br i1 %403, label %404, label %413

404:                                              ; preds = %398
  %405 = load i32, i32* @NETIF_MSG_LINK, align 4
  %406 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %407 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = load i64, i64* %16, align 8
  %410 = call i32 (i32, i8*, ...) @DP(i32 %405, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0), i64 %408, i64 %409)
  %411 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %412 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %411, i32 0, i32 4
  store i32 0, i32* %412, align 8
  br label %430

413:                                              ; preds = %398, %395, %391
  %414 = load i64, i64* %17, align 8
  %415 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %416 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %415, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = icmp ne i64 %414, %417
  br i1 %418, label %419, label %429

419:                                              ; preds = %413
  %420 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %421 = load i64, i64* @NIG_REG_EGRESS_DRAIN0_MODE, align 8
  %422 = load %struct.link_params*, %struct.link_params** %3, align 8
  %423 = getelementptr inbounds %struct.link_params, %struct.link_params* %422, i32 0, i32 0
  %424 = load i64, i64* %423, align 8
  %425 = mul i64 %424, 4
  %426 = add i64 %421, %425
  %427 = call i32 @REG_WR(%struct.bnx2x* %420, i64 %426, i32 0)
  %428 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %429

429:                                              ; preds = %419, %413
  br label %430

430:                                              ; preds = %429, %404
  br label %431

431:                                              ; preds = %430, %377
  %432 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %433 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  %435 = load i64, i64* @SPEED_10000, align 8
  %436 = icmp uge i64 %434, %435
  %437 = zext i1 %436 to i32
  %438 = sext i32 %437 to i64
  store i64 %438, i64* %9, align 8
  %439 = load %struct.link_params*, %struct.link_params** %3, align 8
  %440 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %441 = load i64, i64* %9, align 8
  %442 = call i32 @bnx2x_link_int_ack(%struct.link_params* %439, %struct.link_vars* %440, i64 %441)
  %443 = load %struct.link_params*, %struct.link_params** %3, align 8
  %444 = call i64 @SINGLE_MEDIA_DIRECT(%struct.link_params* %443)
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %531, label %446

446:                                              ; preds = %431
  %447 = load i32, i32* @NETIF_MSG_LINK, align 4
  %448 = load i64, i64* %12, align 8
  %449 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %450 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %449, i32 0, i32 4
  %451 = load i32, i32* %450, align 8
  %452 = load %struct.link_params*, %struct.link_params** %3, align 8
  %453 = getelementptr inbounds %struct.link_params, %struct.link_params* %452, i32 0, i32 3
  %454 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %453, align 8
  %455 = load i64, i64* @EXT_PHY1, align 8
  %456 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %454, i64 %455
  %457 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %456, i32 0, i32 2
  %458 = load i32, i32* %457, align 4
  %459 = sext i32 %458 to i64
  %460 = load i64, i64* @FLAGS_INIT_XGXS_FIRST, align 8
  %461 = and i64 %459, %460
  %462 = call i32 (i32, i8*, ...) @DP(i32 %447, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.10, i64 0, i64 0), i64 %448, i32 %451, i64 %461)
  %463 = load %struct.link_params*, %struct.link_params** %3, align 8
  %464 = getelementptr inbounds %struct.link_params, %struct.link_params* %463, i32 0, i32 3
  %465 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %464, align 8
  %466 = load i64, i64* @EXT_PHY1, align 8
  %467 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %465, i64 %466
  %468 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %467, i32 0, i32 2
  %469 = load i32, i32* %468, align 4
  %470 = sext i32 %469 to i64
  %471 = load i64, i64* @FLAGS_INIT_XGXS_FIRST, align 8
  %472 = and i64 %470, %471
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %530, label %474

474:                                              ; preds = %446
  %475 = load i64, i64* %12, align 8
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %530

477:                                              ; preds = %474
  %478 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %479 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %478, i32 0, i32 4
  %480 = load i32, i32* %479, align 8
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %530, label %482

482:                                              ; preds = %477
  %483 = load i64, i64* %16, align 8
  %484 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %485 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %484, i32 0, i32 1
  store i64 %483, i64* %485, align 8
  %486 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %487 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %486, i32 0, i32 1
  %488 = load i64, i64* %487, align 8
  %489 = load i64, i64* @SPEED_1000, align 8
  %490 = icmp ult i64 %488, %489
  br i1 %490, label %491, label %497

491:                                              ; preds = %482
  %492 = load i64, i64* @PHY_SGMII_FLAG, align 8
  %493 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %494 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %493, i32 0, i32 2
  %495 = load i64, i64* %494, align 8
  %496 = or i64 %495, %492
  store i64 %496, i64* %494, align 8
  br label %504

497:                                              ; preds = %482
  %498 = load i64, i64* @PHY_SGMII_FLAG, align 8
  %499 = xor i64 %498, -1
  %500 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %501 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %500, i32 0, i32 2
  %502 = load i64, i64* %501, align 8
  %503 = and i64 %502, %499
  store i64 %503, i64* %501, align 8
  br label %504

504:                                              ; preds = %497, %491
  %505 = load %struct.link_params*, %struct.link_params** %3, align 8
  %506 = getelementptr inbounds %struct.link_params, %struct.link_params* %505, i32 0, i32 3
  %507 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %506, align 8
  %508 = load i64, i64* @INT_PHY, align 8
  %509 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %507, i64 %508
  %510 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %509, i32 0, i32 3
  %511 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %510, align 8
  %512 = icmp ne i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)* %511, null
  br i1 %512, label %513, label %529

513:                                              ; preds = %504
  %514 = load %struct.link_params*, %struct.link_params** %3, align 8
  %515 = getelementptr inbounds %struct.link_params, %struct.link_params* %514, i32 0, i32 3
  %516 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %515, align 8
  %517 = load i64, i64* @INT_PHY, align 8
  %518 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %516, i64 %517
  %519 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %518, i32 0, i32 3
  %520 = load i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)*, i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*)** %519, align 8
  %521 = load %struct.link_params*, %struct.link_params** %3, align 8
  %522 = getelementptr inbounds %struct.link_params, %struct.link_params* %521, i32 0, i32 3
  %523 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %522, align 8
  %524 = load i64, i64* @INT_PHY, align 8
  %525 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %523, i64 %524
  %526 = load %struct.link_params*, %struct.link_params** %3, align 8
  %527 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %528 = call i32 %520(%struct.bnx2x_phy* %525, %struct.link_params* %526, %struct.link_vars* %527)
  br label %529

529:                                              ; preds = %513, %504
  br label %530

530:                                              ; preds = %529, %477, %474, %446
  br label %531

531:                                              ; preds = %530, %431
  %532 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %533 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %532, i32 0, i32 4
  %534 = load i32, i32* %533, align 8
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %549

536:                                              ; preds = %531
  %537 = load i64, i64* %12, align 8
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %543, label %539

539:                                              ; preds = %536
  %540 = load %struct.link_params*, %struct.link_params** %3, align 8
  %541 = call i64 @SINGLE_MEDIA_DIRECT(%struct.link_params* %540)
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %543, label %549

543:                                              ; preds = %539, %536
  %544 = load i64, i64* %18, align 8
  %545 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %26, i64 %544
  %546 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %545, i32 0, i32 6
  %547 = load i64, i64* %546, align 8
  %548 = icmp eq i64 %547, 0
  br label %549

549:                                              ; preds = %543, %539, %531
  %550 = phi i1 [ false, %539 ], [ false, %531 ], [ %548, %543 ]
  %551 = zext i1 %550 to i32
  %552 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %553 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %552, i32 0, i32 5
  store i32 %551, i32* %553, align 4
  %554 = load %struct.link_params*, %struct.link_params** %3, align 8
  %555 = getelementptr inbounds %struct.link_params, %struct.link_params* %554, i32 0, i32 2
  %556 = load i32, i32* %555, align 8
  %557 = load i32, i32* @FEATURE_CONFIG_PFC_ENABLED, align 4
  %558 = and i32 %556, %557
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %568

560:                                              ; preds = %549
  %561 = load i64, i64* @LINK_STATUS_PFC_ENABLED, align 8
  %562 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %563 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = sext i32 %564 to i64
  %566 = or i64 %565, %561
  %567 = trunc i64 %566 to i32
  store i32 %567, i32* %563, align 8
  br label %577

568:                                              ; preds = %549
  %569 = load i64, i64* @LINK_STATUS_PFC_ENABLED, align 8
  %570 = xor i64 %569, -1
  %571 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %572 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 8
  %574 = sext i32 %573 to i64
  %575 = and i64 %574, %570
  %576 = trunc i64 %575 to i32
  store i32 %576, i32* %572, align 8
  br label %577

577:                                              ; preds = %568, %560
  %578 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %579 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %578, i32 0, i32 5
  %580 = load i32, i32* %579, align 4
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %587

582:                                              ; preds = %577
  %583 = load %struct.link_params*, %struct.link_params** %3, align 8
  %584 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %585 = load i64, i64* %9, align 8
  %586 = call i32 @bnx2x_update_link_up(%struct.link_params* %583, %struct.link_vars* %584, i64 %585)
  store i32 %586, i32* %14, align 4
  br label %591

587:                                              ; preds = %577
  %588 = load %struct.link_params*, %struct.link_params** %3, align 8
  %589 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %590 = call i32 @bnx2x_update_link_down(%struct.link_params* %588, %struct.link_vars* %589)
  store i32 %590, i32* %14, align 4
  br label %591

591:                                              ; preds = %587, %582
  %592 = load i32, i32* %11, align 4
  %593 = load %struct.link_vars*, %struct.link_vars** %4, align 8
  %594 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %593, i32 0, i32 0
  %595 = load i32, i32* %594, align 8
  %596 = xor i32 %592, %595
  %597 = load i32, i32* @LINK_STATUS_LINK_UP, align 4
  %598 = and i32 %596, %597
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %603

600:                                              ; preds = %591
  %601 = load %struct.link_params*, %struct.link_params** %3, align 8
  %602 = call i32 @bnx2x_chng_link_count(%struct.link_params* %601, i32 0)
  br label %603

603:                                              ; preds = %600, %591
  %604 = load %struct.link_params*, %struct.link_params** %3, align 8
  %605 = getelementptr inbounds %struct.link_params, %struct.link_params* %604, i32 0, i32 2
  %606 = load i32, i32* %605, align 8
  %607 = load i32, i32* @FEATURE_CONFIG_BC_SUPPORTS_AFEX, align 4
  %608 = and i32 %606, %607
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %610, label %614

610:                                              ; preds = %603
  %611 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %612 = load i32, i32* @DRV_MSG_CODE_LINK_STATUS_CHANGED, align 4
  %613 = call i32 @bnx2x_fw_command(%struct.bnx2x* %611, i32 %612, i32 0)
  br label %614

614:                                              ; preds = %610, %603
  %615 = load i32, i32* %14, align 4
  %616 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %616)
  ret i32 %615
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @USES_WARPCORE(%struct.bnx2x*) #2

declare dso_local i32 @bnx2x_set_aer_mmd(%struct.link_params*, %struct.bnx2x_phy*) #2

declare dso_local i32 @DP(i32, i8*, ...) #2

declare dso_local i64 @REG_RD(%struct.bnx2x*, i64) #2

declare dso_local i32 @CHIP_IS_E3(%struct.bnx2x*) #2

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #2

declare dso_local i32 @bnx2x_phy_selection(%struct.link_params*) #2

declare dso_local i32 @bnx2x_rearm_latch_signal(%struct.bnx2x*, i64, i32) #2

declare dso_local i64 @SINGLE_MEDIA_DIRECT(%struct.link_params*) #2

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i32 @bnx2x_link_int_ack(%struct.link_params*, %struct.link_vars*, i64) #2

declare dso_local i32 @bnx2x_update_link_up(%struct.link_params*, %struct.link_vars*, i64) #2

declare dso_local i32 @bnx2x_update_link_down(%struct.link_params*, %struct.link_vars*) #2

declare dso_local i32 @bnx2x_chng_link_count(%struct.link_params*, i32) #2

declare dso_local i32 @bnx2x_fw_command(%struct.bnx2x*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
