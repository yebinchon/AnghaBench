; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_get_link_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_get_link_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.i40e_link_status, %struct.i40e_link_status }
%struct.i40e_link_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_aqc_get_link_status = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64 }

@i40e_aqc_opc_get_link_status = common dso_local global i32 0, align 4
@I40E_AQ_LSE_ENABLE = common dso_local global i32 0, align 4
@I40E_AQ_LSE_DISABLE = common dso_local global i32 0, align 4
@I40E_AQ_CONFIG_FEC_KR_ENA = common dso_local global i32 0, align 4
@I40E_AQ_CONFIG_FEC_RS_ENA = common dso_local global i32 0, align 4
@I40E_AQ_LOOPBACK_MASK = common dso_local global i32 0, align 4
@I40E_AQ_CONFIG_PACING_MASK = common dso_local global i32 0, align 4
@I40E_AQ_LINK_PAUSE_TX = common dso_local global i32 0, align 4
@I40E_AQ_LINK_PAUSE_RX = common dso_local global i32 0, align 4
@I40E_FC_FULL = common dso_local global i32 0, align 4
@I40E_FC_TX_PAUSE = common dso_local global i32 0, align 4
@I40E_FC_RX_PAUSE = common dso_local global i32 0, align 4
@I40E_FC_NONE = common dso_local global i32 0, align 4
@I40E_AQ_CONFIG_CRC_ENA = common dso_local global i32 0, align 4
@I40E_AQ_LSE_IS_ENABLED = common dso_local global i32 0, align 4
@I40E_MAC_XL710 = common dso_local global i64 0, align 8
@I40E_PHY_TYPE_10GBASE_SFPP_CU = common dso_local global i32 0, align 4
@I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE = common dso_local global i32 0, align 4
@I40E_MAC_X722 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i40e_aq_get_link_info(%struct.i40e_hw* %0, i32 %1, %struct.i40e_link_status* %2, %struct.i40e_asq_cmd_details* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_link_status*, align 8
  %8 = alloca %struct.i40e_asq_cmd_details*, align 8
  %9 = alloca %struct.i40e_aq_desc, align 4
  %10 = alloca %struct.i40e_aqc_get_link_status*, align 8
  %11 = alloca %struct.i40e_link_status*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i40e_link_status* %2, %struct.i40e_link_status** %7, align 8
  store %struct.i40e_asq_cmd_details* %3, %struct.i40e_asq_cmd_details** %8, align 8
  %17 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %9, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to %struct.i40e_aqc_get_link_status*
  store %struct.i40e_aqc_get_link_status* %19, %struct.i40e_aqc_get_link_status** %10, align 8
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %21 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 4
  store %struct.i40e_link_status* %22, %struct.i40e_link_status** %11, align 8
  %23 = load i32, i32* @i40e_aqc_opc_get_link_status, align 4
  %24 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %9, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @I40E_AQ_LSE_ENABLE, align 4
  store i32 %28, i32* %15, align 4
  br label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @I40E_AQ_LSE_DISABLE, align 4
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @cpu_to_le16(i32 %32)
  %34 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %35 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %37 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %8, align 8
  %38 = call i64 @i40e_asq_send_command(%struct.i40e_hw* %36, %struct.i40e_aq_desc* %9, i32* null, i32 0, %struct.i40e_asq_cmd_details* %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %267

42:                                               ; preds = %31
  %43 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %44 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %47 = bitcast %struct.i40e_link_status* %45 to i8*
  %48 = bitcast %struct.i40e_link_status* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 44, i1 false)
  %49 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %50 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %49, i32 0, i32 10
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %54 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %56 = call i32 @i40e_get_media_type(%struct.i40e_hw* %55)
  %57 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %58 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  %60 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %61 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %60, i32 0, i32 9
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %65 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %67 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %70 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %69, i32 0, i32 10
  store i32 %68, i32* %70, align 4
  %71 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %72 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %75 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %77 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @I40E_AQ_CONFIG_FEC_KR_ENA, align 4
  %80 = load i32, i32* @I40E_AQ_CONFIG_FEC_RS_ENA, align 4
  %81 = or i32 %79, %80
  %82 = and i32 %78, %81
  %83 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %84 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %86 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %89 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %88, i32 0, i32 9
  store i32 %87, i32* %89, align 4
  %90 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %91 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @I40E_AQ_LOOPBACK_MASK, align 4
  %94 = and i32 %92, %93
  %95 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %96 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %98 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le16_to_cpu(i32 %99)
  %101 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %102 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %101, i32 0, i32 8
  store i32 %100, i32* %102, align 4
  %103 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %104 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @I40E_AQ_CONFIG_PACING_MASK, align 4
  %107 = and i32 %105, %106
  %108 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %109 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %111 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @I40E_AQ_LINK_PAUSE_TX, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = xor i1 %115, true
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %13, align 4
  %119 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %120 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @I40E_AQ_LINK_PAUSE_RX, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  %125 = xor i1 %124, true
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %14, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %42
  %133 = load i32, i32* @I40E_FC_FULL, align 4
  %134 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %135 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 8
  br label %160

137:                                              ; preds = %42
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32, i32* @I40E_FC_TX_PAUSE, align 4
  %142 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %143 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 8
  br label %159

145:                                              ; preds = %137
  %146 = load i32, i32* %14, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %145
  %149 = load i32, i32* @I40E_FC_RX_PAUSE, align 4
  %150 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %151 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  store i32 %149, i32* %152, align 8
  br label %158

153:                                              ; preds = %145
  %154 = load i32, i32* @I40E_FC_NONE, align 4
  %155 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %156 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  store i32 %154, i32* %157, align 8
  br label %158

158:                                              ; preds = %153, %148
  br label %159

159:                                              ; preds = %158, %140
  br label %160

160:                                              ; preds = %159, %132
  %161 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %162 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @I40E_AQ_CONFIG_CRC_ENA, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %160
  %168 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %169 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %168, i32 0, i32 6
  store i32 1, i32* %169, align 4
  br label %173

170:                                              ; preds = %160
  %171 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %172 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %171, i32 0, i32 6
  store i32 0, i32* %172, align 4
  br label %173

173:                                              ; preds = %170, %167
  %174 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %175 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @I40E_AQ_LSE_IS_ENABLED, align 4
  %178 = call i32 @cpu_to_le16(i32 %177)
  %179 = and i32 %176, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %173
  %182 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %183 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %182, i32 0, i32 7
  store i32 1, i32* %183, align 4
  br label %187

184:                                              ; preds = %173
  %185 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %186 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %185, i32 0, i32 7
  store i32 0, i32* %186, align 4
  br label %187

187:                                              ; preds = %184, %181
  %188 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %189 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @I40E_MAC_XL710, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %221

194:                                              ; preds = %187
  %195 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %196 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %198, 4
  br i1 %199, label %212, label %200

200:                                              ; preds = %194
  %201 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %202 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 4
  br i1 %205, label %206, label %221

206:                                              ; preds = %200
  %207 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %208 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = icmp slt i32 %210, 40
  br i1 %211, label %212, label %221

212:                                              ; preds = %206, %194
  %213 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %214 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 14
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = load i32, i32* @I40E_PHY_TYPE_10GBASE_SFPP_CU, align 4
  %219 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %220 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 4
  br label %221

221:                                              ; preds = %217, %212, %206, %200, %187
  %222 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %223 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %255

228:                                              ; preds = %221
  %229 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %230 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @I40E_MAC_X722, align 8
  %234 = icmp ne i64 %232, %233
  br i1 %234, label %235, label %255

235:                                              ; preds = %228
  %236 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %237 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @memcpy(i32* %16, i32 %238, i32 4)
  %240 = load i32, i32* %16, align 4
  %241 = call i32 @le32_to_cpu(i32 %240)
  %242 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %243 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  store i32 %241, i32* %244, align 4
  %245 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %10, align 8
  %246 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = trunc i64 %247 to i32
  %249 = shl i32 %248, 32
  %250 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %251 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %249
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %235, %228, %221
  %256 = load %struct.i40e_link_status*, %struct.i40e_link_status** %7, align 8
  %257 = icmp ne %struct.i40e_link_status* %256, null
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  %259 = load %struct.i40e_link_status*, %struct.i40e_link_status** %7, align 8
  %260 = load %struct.i40e_link_status*, %struct.i40e_link_status** %11, align 8
  %261 = bitcast %struct.i40e_link_status* %259 to i8*
  %262 = bitcast %struct.i40e_link_status* %260 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %261, i8* align 4 %262, i64 44, i1 false)
  br label %263

263:                                              ; preds = %258, %255
  %264 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %265 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 1
  store i32 0, i32* %266, align 4
  br label %267

267:                                              ; preds = %263, %41
  %268 = load i64, i64* %12, align 8
  ret i64 %268
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, %struct.i40e_asq_cmd_details*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i40e_get_media_type(%struct.i40e_hw*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
