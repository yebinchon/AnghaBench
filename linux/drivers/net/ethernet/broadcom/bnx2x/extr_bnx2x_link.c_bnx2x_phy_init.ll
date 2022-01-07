; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32, i32, i64, i64, i32, i32, i32, i64, i64, i64 }

@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Phy Initialization started\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"(1) req_speed %d, req_flowctrl %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"(2) req_speed %d, req_flowctrl %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"req_adv_flow_ctrl 0x%x\0A\00", align 1
@DUPLEX_FULL = common dso_local global i32 0, align 4
@BNX2X_FLOW_CTRL_NONE = common dso_local global i32 0, align 4
@MAC_TYPE_NONE = common dso_local global i32 0, align 4
@PHY_INITIALIZED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Link Flap Avoidance in progress\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Cannot avoid link flap lfa_sta=0x%x\0A\00", align 1
@NIG_REG_MASK_INTERRUPT_PORT0 = common dso_local global i64 0, align 8
@NIG_MASK_XGXS0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_MASK_XGXS0_LINK10G = common dso_local global i32 0, align 4
@NIG_MASK_SERDES0_LINK_STATUS = common dso_local global i32 0, align 4
@NIG_MASK_MI_INT = common dso_local global i32 0, align 4
@FEATURE_CONFIG_PFC_ENABLED = common dso_local global i32 0, align 4
@LINK_STATUS_PFC_ENABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"No phy found for initialization !!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Num of phys on board: %d\0A\00", align 1
@SWITCH_CFG_10G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_phy_init(%struct.link_params* %0, %struct.link_vars* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.link_vars*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store %struct.link_vars* %1, %struct.link_vars** %5, align 8
  %8 = load %struct.link_params*, %struct.link_params** %4, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 9
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %7, align 8
  %11 = load i32, i32* @NETIF_MSG_LINK, align 4
  %12 = call i32 (i32, i8*, ...) @DP(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @NETIF_MSG_LINK, align 4
  %14 = load %struct.link_params*, %struct.link_params** %4, align 8
  %15 = getelementptr inbounds %struct.link_params, %struct.link_params* %14, i32 0, i32 8
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.link_params*, %struct.link_params** %4, align 8
  %20 = getelementptr inbounds %struct.link_params, %struct.link_params* %19, i32 0, i32 7
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @DP(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 %23)
  %25 = load i32, i32* @NETIF_MSG_LINK, align 4
  %26 = load %struct.link_params*, %struct.link_params** %4, align 8
  %27 = getelementptr inbounds %struct.link_params, %struct.link_params* %26, i32 0, i32 8
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.link_params*, %struct.link_params** %4, align 8
  %32 = getelementptr inbounds %struct.link_params, %struct.link_params* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @DP(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %35)
  %37 = load i32, i32* @NETIF_MSG_LINK, align 4
  %38 = load %struct.link_params*, %struct.link_params** %4, align 8
  %39 = getelementptr inbounds %struct.link_params, %struct.link_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, ...) @DP(i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %43 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %45 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %44, i32 0, i32 9
  store i64 0, i64* %45, align 8
  %46 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %47 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %46, i32 0, i32 8
  store i64 0, i64* %47, align 8
  %48 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %49 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %48, i32 0, i32 7
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @DUPLEX_FULL, align 4
  %51 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %52 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @BNX2X_FLOW_CTRL_NONE, align 4
  %54 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %55 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @MAC_TYPE_NONE, align 4
  %57 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %58 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %60 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  %61 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %62 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @PHY_INITIALIZED, align 4
  %64 = load %struct.link_params*, %struct.link_params** %4, align 8
  %65 = getelementptr inbounds %struct.link_params, %struct.link_params* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 8
  %66 = load %struct.link_params*, %struct.link_params** %4, align 8
  %67 = call i32 @bnx2x_set_rx_filter(%struct.link_params* %66, i32 1)
  %68 = load %struct.link_params*, %struct.link_params** %4, align 8
  %69 = call i32 @bnx2x_chng_link_count(%struct.link_params* %68, i32 1)
  %70 = load %struct.link_params*, %struct.link_params** %4, align 8
  %71 = call i32 @bnx2x_check_lfa(%struct.link_params* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %2
  %75 = load i32, i32* @NETIF_MSG_LINK, align 4
  %76 = call i32 (i32, i8*, ...) @DP(i32 %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %77 = load %struct.link_params*, %struct.link_params** %4, align 8
  %78 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %79 = call i32 @bnx2x_avoid_link_flap(%struct.link_params* %77, %struct.link_vars* %78)
  store i32 %79, i32* %3, align 4
  br label %199

80:                                               ; preds = %2
  %81 = load i32, i32* @NETIF_MSG_LINK, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (i32, i8*, ...) @DP(i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %82)
  %84 = load %struct.link_params*, %struct.link_params** %4, align 8
  %85 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @bnx2x_cannot_avoid_link_flap(%struct.link_params* %84, %struct.link_vars* %85, i32 %86)
  %88 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %89 = load i64, i64* @NIG_REG_MASK_INTERRUPT_PORT0, align 8
  %90 = load %struct.link_params*, %struct.link_params** %4, align 8
  %91 = getelementptr inbounds %struct.link_params, %struct.link_params* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %89, %94
  %96 = load i32, i32* @NIG_MASK_XGXS0_LINK_STATUS, align 4
  %97 = load i32, i32* @NIG_MASK_XGXS0_LINK10G, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @NIG_MASK_SERDES0_LINK_STATUS, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @NIG_MASK_MI_INT, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %88, i64 %95, i32 %102)
  %104 = load %struct.link_params*, %struct.link_params** %4, align 8
  %105 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %106 = call i32 @bnx2x_emac_init(%struct.link_params* %104, %struct.link_vars* %105)
  %107 = load %struct.link_params*, %struct.link_params** %4, align 8
  %108 = getelementptr inbounds %struct.link_params, %struct.link_params* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @FEATURE_CONFIG_PFC_ENABLED, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %80
  %114 = load i32, i32* @LINK_STATUS_PFC_ENABLED, align 4
  %115 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %116 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %113, %80
  %120 = load %struct.link_params*, %struct.link_params** %4, align 8
  %121 = getelementptr inbounds %struct.link_params, %struct.link_params* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i32, i32* @NETIF_MSG_LINK, align 4
  %126 = call i32 (i32, i8*, ...) @DP(i32 %125, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %199

129:                                              ; preds = %119
  %130 = load %struct.link_params*, %struct.link_params** %4, align 8
  %131 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %132 = call i32 @set_phy_vars(%struct.link_params* %130, %struct.link_vars* %131)
  %133 = load i32, i32* @NETIF_MSG_LINK, align 4
  %134 = load %struct.link_params*, %struct.link_params** %4, align 8
  %135 = getelementptr inbounds %struct.link_params, %struct.link_params* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i32, i8*, ...) @DP(i32 %133, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %136)
  %138 = load %struct.link_params*, %struct.link_params** %4, align 8
  %139 = getelementptr inbounds %struct.link_params, %struct.link_params* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  switch i32 %140, label %161 [
    i32 133, label %141
    i32 132, label %145
    i32 128, label %149
    i32 130, label %153
    i32 129, label %157
    i32 131, label %157
  ]

141:                                              ; preds = %129
  %142 = load %struct.link_params*, %struct.link_params** %4, align 8
  %143 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %144 = call i32 @bnx2x_init_bmac_loopback(%struct.link_params* %142, %struct.link_vars* %143)
  br label %188

145:                                              ; preds = %129
  %146 = load %struct.link_params*, %struct.link_params** %4, align 8
  %147 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %148 = call i32 @bnx2x_init_emac_loopback(%struct.link_params* %146, %struct.link_vars* %147)
  br label %188

149:                                              ; preds = %129
  %150 = load %struct.link_params*, %struct.link_params** %4, align 8
  %151 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %152 = call i32 @bnx2x_init_xmac_loopback(%struct.link_params* %150, %struct.link_vars* %151)
  br label %188

153:                                              ; preds = %129
  %154 = load %struct.link_params*, %struct.link_params** %4, align 8
  %155 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %156 = call i32 @bnx2x_init_umac_loopback(%struct.link_params* %154, %struct.link_vars* %155)
  br label %188

157:                                              ; preds = %129, %129
  %158 = load %struct.link_params*, %struct.link_params** %4, align 8
  %159 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %160 = call i32 @bnx2x_init_xgxs_loopback(%struct.link_params* %158, %struct.link_vars* %159)
  br label %188

161:                                              ; preds = %129
  %162 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %163 = call i32 @CHIP_IS_E3(%struct.bnx2x* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %181, label %165

165:                                              ; preds = %161
  %166 = load %struct.link_params*, %struct.link_params** %4, align 8
  %167 = getelementptr inbounds %struct.link_params, %struct.link_params* %166, i32 0, i32 5
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @SWITCH_CFG_10G, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %165
  %172 = load %struct.link_params*, %struct.link_params** %4, align 8
  %173 = call i32 @bnx2x_xgxs_deassert(%struct.link_params* %172)
  br label %180

174:                                              ; preds = %165
  %175 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %176 = load %struct.link_params*, %struct.link_params** %4, align 8
  %177 = getelementptr inbounds %struct.link_params, %struct.link_params* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @bnx2x_serdes_deassert(%struct.bnx2x* %175, i32 %178)
  br label %180

180:                                              ; preds = %174, %171
  br label %181

181:                                              ; preds = %180, %161
  %182 = load %struct.link_params*, %struct.link_params** %4, align 8
  %183 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %184 = call i32 @bnx2x_link_initialize(%struct.link_params* %182, %struct.link_vars* %183)
  %185 = call i32 @msleep(i32 30)
  %186 = load %struct.link_params*, %struct.link_params** %4, align 8
  %187 = call i32 @bnx2x_link_int_enable(%struct.link_params* %186)
  br label %188

188:                                              ; preds = %181, %157, %153, %149, %145, %141
  %189 = load %struct.link_params*, %struct.link_params** %4, align 8
  %190 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %191 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @bnx2x_update_mng(%struct.link_params* %189, i32 %192)
  %194 = load %struct.link_params*, %struct.link_params** %4, align 8
  %195 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %196 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @bnx2x_update_mng_eee(%struct.link_params* %194, i32 %197)
  store i32 0, i32* %3, align 4
  br label %199

199:                                              ; preds = %188, %124, %74
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_set_rx_filter(%struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_chng_link_count(%struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_check_lfa(%struct.link_params*) #1

declare dso_local i32 @bnx2x_avoid_link_flap(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_cannot_avoid_link_flap(%struct.link_params*, %struct.link_vars*, i32) #1

declare dso_local i32 @bnx2x_bits_dis(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_emac_init(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @set_phy_vars(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_init_bmac_loopback(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_init_emac_loopback(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_init_xmac_loopback(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_init_umac_loopback(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @bnx2x_init_xgxs_loopback(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_xgxs_deassert(%struct.link_params*) #1

declare dso_local i32 @bnx2x_serdes_deassert(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_link_initialize(%struct.link_params*, %struct.link_vars*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @bnx2x_link_int_enable(%struct.link_params*) #1

declare dso_local i32 @bnx2x_update_mng(%struct.link_params*, i32) #1

declare dso_local i32 @bnx2x_update_mng_eee(%struct.link_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
