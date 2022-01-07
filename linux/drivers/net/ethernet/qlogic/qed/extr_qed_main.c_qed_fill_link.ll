; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_fill_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_fill_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_link_output = type { i32, i32, %struct.TYPE_11__, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64 }
%struct.qed_mcp_link_capabilities = type { i64, i32, i32, i64 }
%struct.qed_mcp_link_params = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.qed_mcp_link_state = type { i32, i64, i32, i64, i32, i64, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"no link data available\0A\00", align 1
@QED_LM_Autoneg_BIT = common dso_local global i32 0, align 4
@QED_LM_Asym_Pause_BIT = common dso_local global i32 0, align 4
@QED_LM_Pause_BIT = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@QED_LINK_PAUSE_AUTONEG_ENABLE = common dso_local global i32 0, align 4
@QED_LINK_PAUSE_RX_ENABLE = common dso_local global i32 0, align 4
@QED_LINK_PAUSE_TX_ENABLE = common dso_local global i32 0, align 4
@QED_LINK_PARTNER_SPEED_1G_FD = common dso_local global i32 0, align 4
@QED_LM_1000baseT_Full_BIT = common dso_local global i32 0, align 4
@QED_LINK_PARTNER_SPEED_10G = common dso_local global i32 0, align 4
@QED_LM_10000baseKR_Full_BIT = common dso_local global i32 0, align 4
@QED_LINK_PARTNER_SPEED_20G = common dso_local global i32 0, align 4
@QED_LM_20000baseKR2_Full_BIT = common dso_local global i32 0, align 4
@QED_LINK_PARTNER_SPEED_25G = common dso_local global i32 0, align 4
@QED_LM_25000baseKR_Full_BIT = common dso_local global i32 0, align 4
@QED_LINK_PARTNER_SPEED_40G = common dso_local global i32 0, align 4
@QED_LM_40000baseLR4_Full_BIT = common dso_local global i32 0, align 4
@QED_LINK_PARTNER_SPEED_50G = common dso_local global i32 0, align 4
@QED_LM_50000baseKR2_Full_BIT = common dso_local global i32 0, align 4
@QED_LINK_PARTNER_SPEED_100G = common dso_local global i32 0, align 4
@QED_LM_100000baseKR4_Full_BIT = common dso_local global i32 0, align 4
@QED_LINK_PARTNER_ASYMMETRIC_PAUSE = common dso_local global i64 0, align 8
@QED_LINK_PARTNER_BOTH_PAUSE = common dso_local global i64 0, align 8
@QED_MCP_EEE_UNSUPPORTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_link_output*)* @qed_fill_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_fill_link(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_link_output* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_link_output*, align 8
  %7 = alloca %struct.qed_mcp_link_capabilities, align 8
  %8 = alloca %struct.qed_mcp_link_params, align 8
  %9 = alloca %struct.qed_mcp_link_state, align 8
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store %struct.qed_link_output* %2, %struct.qed_link_output** %6, align 8
  %11 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %12 = call i32 @memset(%struct.qed_link_output* %11, i32 0, i32 80)
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %14 = call i64 @qed_get_link_data(%struct.qed_hwfn* %13, %struct.qed_mcp_link_params* %8, %struct.qed_mcp_link_state* %9, %struct.qed_mcp_link_capabilities* %7)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %18 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = call i32 @dev_warn(i32* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %355

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 7
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %30 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %24
  %32 = getelementptr inbounds %struct.qed_mcp_link_capabilities, %struct.qed_mcp_link_capabilities* %7, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @QED_LM_Autoneg_BIT, align 4
  %37 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %38 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %31
  %42 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %8, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %8, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %8, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51, %41
  %57 = load i32, i32* @QED_LM_Asym_Pause_BIT, align 4
  %58 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %59 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %56, %51, %46
  %63 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %8, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %8, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %8, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72, %67, %62
  %78 = load i32, i32* @QED_LM_Pause_BIT, align 4
  %79 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %80 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %79, i32 0, i32 11
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %72
  %84 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %85 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %88 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %87, i32 0, i32 12
  store i32 %86, i32* %88, align 8
  %89 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %8, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %83
  %94 = load i32, i32* @QED_LM_Autoneg_BIT, align 4
  %95 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %96 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %95, i32 0, i32 12
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %106

99:                                               ; preds = %83
  %100 = load i32, i32* @QED_LM_Autoneg_BIT, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %103 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %102, i32 0, i32 12
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %99, %93
  %107 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %108 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %109 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %8, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %113 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %112, i32 0, i32 12
  %114 = call i32 @qed_fill_link_capability(%struct.qed_hwfn* %107, %struct.qed_ptt* %108, i32 %111, i32* %113)
  %115 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %116 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %117 = getelementptr inbounds %struct.qed_mcp_link_capabilities, %struct.qed_mcp_link_capabilities* %7, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %120 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %119, i32 0, i32 11
  %121 = call i32 @qed_fill_link_capability(%struct.qed_hwfn* %115, %struct.qed_ptt* %116, i32 %118, i32* %120)
  %122 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 7
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %106
  %126 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %129 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %128, i32 0, i32 10
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %125, %106
  %131 = load i32, i32* @DUPLEX_FULL, align 4
  %132 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %133 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %132, i32 0, i32 9
  store i32 %131, i32* %133, align 4
  %134 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %135 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %136 = call i32 @qed_mcp_get_media_type(%struct.qed_hwfn* %134, %struct.qed_ptt* %135, i32* %10)
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @qed_get_port_type(i32 %137)
  %139 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %140 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %139, i32 0, i32 8
  store i32 %138, i32* %140, align 8
  %141 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %8, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %145 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %144, i32 0, i32 7
  store i64 %143, i64* %145, align 8
  %146 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %8, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %130
  %151 = load i32, i32* @QED_LINK_PAUSE_AUTONEG_ENABLE, align 4
  %152 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %153 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %150, %130
  %157 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %8, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %156
  %162 = load i32, i32* @QED_LINK_PAUSE_RX_ENABLE, align 4
  %163 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %164 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %161, %156
  %168 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %8, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load i32, i32* @QED_LINK_PAUSE_TX_ENABLE, align 4
  %174 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %175 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %172, %167
  %179 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @QED_LINK_PARTNER_SPEED_1G_FD, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = load i32, i32* @QED_LM_1000baseT_Full_BIT, align 4
  %186 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %187 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 8
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %184, %178
  %191 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* @QED_LINK_PARTNER_SPEED_10G, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %190
  %197 = load i32, i32* @QED_LM_10000baseKR_Full_BIT, align 4
  %198 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %199 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  br label %202

202:                                              ; preds = %196, %190
  %203 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @QED_LINK_PARTNER_SPEED_20G, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %202
  %209 = load i32, i32* @QED_LM_20000baseKR2_Full_BIT, align 4
  %210 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %211 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %209
  store i32 %213, i32* %211, align 8
  br label %214

214:                                              ; preds = %208, %202
  %215 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @QED_LINK_PARTNER_SPEED_25G, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %214
  %221 = load i32, i32* @QED_LM_25000baseKR_Full_BIT, align 4
  %222 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %223 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 8
  br label %226

226:                                              ; preds = %220, %214
  %227 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @QED_LINK_PARTNER_SPEED_40G, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %226
  %233 = load i32, i32* @QED_LM_40000baseLR4_Full_BIT, align 4
  %234 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %235 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %232, %226
  %239 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @QED_LINK_PARTNER_SPEED_50G, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %238
  %245 = load i32, i32* @QED_LM_50000baseKR2_Full_BIT, align 4
  %246 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %247 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 8
  %249 = or i32 %248, %245
  store i32 %249, i32* %247, align 8
  br label %250

250:                                              ; preds = %244, %238
  %251 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @QED_LINK_PARTNER_SPEED_100G, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %250
  %257 = load i32, i32* @QED_LM_100000baseKR4_Full_BIT, align 4
  %258 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %259 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %258, i32 0, i32 5
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 8
  br label %262

262:                                              ; preds = %256, %250
  %263 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 5
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %262
  %267 = load i32, i32* @QED_LM_Autoneg_BIT, align 4
  %268 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %269 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 8
  %271 = or i32 %270, %267
  store i32 %271, i32* %269, align 8
  br label %272

272:                                              ; preds = %266, %262
  %273 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %272
  %277 = load i32, i32* @QED_LM_Pause_BIT, align 4
  %278 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %279 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 8
  %281 = or i32 %280, %277
  store i32 %281, i32* %279, align 8
  br label %282

282:                                              ; preds = %276, %272
  %283 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @QED_LINK_PARTNER_ASYMMETRIC_PAUSE, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %292, label %287

287:                                              ; preds = %282
  %288 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @QED_LINK_PARTNER_BOTH_PAUSE, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %287, %282
  %293 = load i32, i32* @QED_LM_Asym_Pause_BIT, align 4
  %294 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %295 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %294, i32 0, i32 5
  %296 = load i32, i32* %295, align 8
  %297 = or i32 %296, %293
  store i32 %297, i32* %295, align 8
  br label %298

298:                                              ; preds = %292, %287
  %299 = getelementptr inbounds %struct.qed_mcp_link_capabilities, %struct.qed_mcp_link_capabilities* %7, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @QED_MCP_EEE_UNSUPPORTED, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %306

303:                                              ; preds = %298
  %304 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %305 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %304, i32 0, i32 1
  store i32 0, i32* %305, align 4
  br label %355

306:                                              ; preds = %298
  %307 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %308 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %307, i32 0, i32 1
  store i32 1, i32* %308, align 4
  %309 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 4
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %312 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %311, i32 0, i32 4
  store i32 %310, i32* %312, align 4
  %313 = getelementptr inbounds %struct.qed_mcp_link_capabilities, %struct.qed_mcp_link_capabilities* %7, i32 0, i32 1
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %316 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %315, i32 0, i32 3
  store i32 %314, i32* %316, align 8
  %317 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 3
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %306
  %321 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  br label %327

323:                                              ; preds = %306
  %324 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %8, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 3
  %326 = load i64, i64* %325, align 8
  br label %327

327:                                              ; preds = %323, %320
  %328 = phi i64 [ %322, %320 ], [ %326, %323 ]
  %329 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %330 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 4
  store i64 %328, i64* %331, align 8
  %332 = getelementptr inbounds %struct.qed_mcp_link_state, %struct.qed_mcp_link_state* %9, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %335 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %334, i32 0, i32 2
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 3
  store i32 %333, i32* %336, align 4
  %337 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %8, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %341 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %341, i32 0, i32 2
  store i32 %339, i32* %342, align 8
  %343 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %8, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %347 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %347, i32 0, i32 1
  store i32 %345, i32* %348, align 4
  %349 = getelementptr inbounds %struct.qed_mcp_link_params, %struct.qed_mcp_link_params* %8, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load %struct.qed_link_output*, %struct.qed_link_output** %6, align 8
  %353 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %352, i32 0, i32 2
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 0
  store i32 %351, i32* %354, align 8
  br label %355

355:                                              ; preds = %16, %327, %303
  ret void
}

declare dso_local i32 @memset(%struct.qed_link_output*, i32, i32) #1

declare dso_local i64 @qed_get_link_data(%struct.qed_hwfn*, %struct.qed_mcp_link_params*, %struct.qed_mcp_link_state*, %struct.qed_mcp_link_capabilities*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @qed_fill_link_capability(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32*) #1

declare dso_local i32 @qed_mcp_get_media_type(%struct.qed_hwfn*, %struct.qed_ptt*, i32*) #1

declare dso_local i32 @qed_get_port_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
