; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_set_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.qed_mcp_link_params }
%struct.qed_mcp_link_params = type { %struct.TYPE_8__, i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.qed_ptt = type { i32 }
%struct.qed_mcp_mb_params = type { i32, i32, %struct.qed_mcp_mb_params*, i32, i32, i32, i32, i32, i32 }
%struct.eth_phy_cfg = type { i32, i32, %struct.eth_phy_cfg*, i32, i32, i32, i32, i32, i32 }

@DRV_MSG_CODE_INIT_PHY = common dso_local global i32 0, align 4
@DRV_MSG_CODE_LINK_RESET = common dso_local global i32 0, align 4
@ETH_PAUSE_AUTONEG = common dso_local global i32 0, align 4
@ETH_PAUSE_RX = common dso_local global i32 0, align 4
@ETH_PAUSE_TX = common dso_local global i32 0, align 4
@FW_MB_PARAM_FEATURE_SUPPORT_EEE = common dso_local global i32 0, align 4
@EEE_CFG_EEE_ENABLED = common dso_local global i32 0, align 4
@EEE_CFG_TX_LPI = common dso_local global i32 0, align 4
@QED_EEE_1G_ADV = common dso_local global i32 0, align 4
@EEE_CFG_ADV_SPEED_1G = common dso_local global i32 0, align 4
@QED_EEE_10G_ADV = common dso_local global i32 0, align 4
@EEE_CFG_ADV_SPEED_10G = common dso_local global i32 0, align 4
@EEE_TX_TIMER_USEC_OFFSET = common dso_local global i32 0, align 4
@EEE_TX_TIMER_USEC_MASK = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"Configuring Link: Speed 0x%08x, Pause 0x%08x, adv_speed 0x%08x, loopback 0x%08x, features 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Resetting link\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"MCP response failure, aborting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_set_link(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qed_mcp_link_params*, align 8
  %9 = alloca %struct.qed_mcp_mb_params, align 8
  %10 = alloca %struct.eth_phy_cfg, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store %struct.qed_mcp_link_params* %16, %struct.qed_mcp_link_params** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = bitcast %struct.eth_phy_cfg* %10 to %struct.qed_mcp_mb_params*
  %18 = call i32 @memset(%struct.qed_mcp_mb_params* %17, i32 0, i32 40)
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @DRV_MSG_CODE_INIT_PHY, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @DRV_MSG_CODE_LINK_RESET, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %12, align 4
  %27 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %8, align 8
  %28 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %25
  %33 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %8, align 8
  %34 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %25
  %39 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %8, align 8
  %40 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @ETH_PAUSE_AUTONEG, align 4
  br label %47

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 8
  %52 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %8, align 8
  %53 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load i32, i32* @ETH_PAUSE_RX, align 4
  br label %60

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32 [ %58, %57 ], [ 0, %59 ]
  %62 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %61
  store i32 %64, i32* %62, align 8
  %65 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %8, align 8
  %66 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* @ETH_PAUSE_TX, align 4
  br label %73

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %70
  %74 = phi i32 [ %71, %70 ], [ 0, %72 ]
  %75 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 7
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 8
  %78 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %8, align 8
  %79 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 6
  store i32 %81, i32* %82, align 4
  %83 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %8, align 8
  %84 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 5
  store i32 %85, i32* %86, align 8
  %87 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %88 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @FW_MB_PARAM_FEATURE_SUPPORT_EEE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %154

95:                                               ; preds = %73
  %96 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %8, align 8
  %97 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %154

101:                                              ; preds = %95
  %102 = load i32, i32* @EEE_CFG_EEE_ENABLED, align 4
  %103 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %102
  store i32 %105, i32* %103, align 8
  %106 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %8, align 8
  %107 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %101
  %112 = load i32, i32* @EEE_CFG_TX_LPI, align 4
  %113 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 8
  br label %116

116:                                              ; preds = %111, %101
  %117 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %8, align 8
  %118 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @QED_EEE_1G_ADV, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %116
  %125 = load i32, i32* @EEE_CFG_ADV_SPEED_1G, align 4
  %126 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %125
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %124, %116
  %130 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %8, align 8
  %131 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @QED_EEE_10G_ADV, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %129
  %138 = load i32, i32* @EEE_CFG_ADV_SPEED_10G, align 4
  %139 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %138
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %137, %129
  %143 = load %struct.qed_mcp_link_params*, %struct.qed_mcp_link_params** %8, align 8
  %144 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @EEE_TX_TIMER_USEC_OFFSET, align 4
  %148 = shl i32 %146, %147
  %149 = load i32, i32* @EEE_TX_TIMER_USEC_MASK, align 4
  %150 = and i32 %148, %149
  %151 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = or i32 %152, %150
  store i32 %153, i32* %151, align 8
  br label %154

154:                                              ; preds = %142, %95, %73
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %157 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %154
  %161 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %162 = load i32, i32* @NETIF_MSG_LINK, align 4
  %163 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 8
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 7
  %166 = load i32, i32* %165, align 8
  %167 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = getelementptr inbounds %struct.eth_phy_cfg, %struct.eth_phy_cfg* %10, i32 0, i32 4
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %161, i32 %162, i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i32 %164, i32 %166, i32 %168, i32 %170, i32 %172)
  br label %178

174:                                              ; preds = %154
  %175 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %176 = load i32, i32* @NETIF_MSG_LINK, align 4
  %177 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %175, i32 %176, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %178

178:                                              ; preds = %174, %160
  %179 = call i32 @memset(%struct.qed_mcp_mb_params* %9, i32 0, i32 40)
  %180 = load i32, i32* %12, align 4
  %181 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %9, i32 0, i32 3
  store i32 %180, i32* %181, align 8
  %182 = bitcast %struct.eth_phy_cfg* %10 to %struct.qed_mcp_mb_params*
  %183 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %9, i32 0, i32 2
  store %struct.qed_mcp_mb_params* %182, %struct.qed_mcp_mb_params** %183, align 8
  %184 = getelementptr inbounds %struct.qed_mcp_mb_params, %struct.qed_mcp_mb_params* %9, i32 0, i32 1
  store i32 40, i32* %184, align 4
  %185 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %186 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %187 = call i32 @qed_mcp_cmd_and_union(%struct.qed_hwfn* %185, %struct.qed_ptt* %186, %struct.qed_mcp_mb_params* %9)
  store i32 %187, i32* %11, align 4
  %188 = load i32, i32* %11, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %178
  %191 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %192 = call i32 @DP_ERR(%struct.qed_hwfn* %191, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %193 = load i32, i32* %11, align 4
  store i32 %193, i32* %4, align 4
  br label %202

194:                                              ; preds = %178
  %195 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %196 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %197 = load i32, i32* %7, align 4
  %198 = icmp ne i32 %197, 0
  %199 = xor i1 %198, true
  %200 = zext i1 %199 to i32
  %201 = call i32 @qed_mcp_handle_link_change(%struct.qed_hwfn* %195, %struct.qed_ptt* %196, i32 %200)
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %194, %190
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @memset(%struct.qed_mcp_mb_params*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @qed_mcp_cmd_and_union(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_mcp_mb_params*) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @qed_mcp_handle_link_change(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
