; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_get_link_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_get_link_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.TYPE_4__, i32, %struct.ice_fc_info, %struct.ice_hw* }
%struct.TYPE_4__ = type { i32, i32, %struct.ice_link_status, %struct.ice_link_status }
%struct.ice_link_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32 }
%struct.ice_fc_info = type { i32 }
%struct.ice_hw = type { i32 }
%struct.ice_sq_cd = type { i32 }
%struct.ice_aqc_get_link_status_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_aqc_get_link_status = type { i32, i32 }
%struct.ice_aq_desc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ice_aqc_get_link_status }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ice_aqc_opc_get_link_status = common dso_local global i32 0, align 4
@ICE_AQ_LSE_ENA = common dso_local global i32 0, align 4
@ICE_AQ_LSE_DIS = common dso_local global i32 0, align 4
@ICE_AQ_FEC_MASK = common dso_local global i32 0, align 4
@ICE_AQ_CFG_PACING_M = common dso_local global i32 0, align 4
@ICE_AQ_CFG_PACING_TYPE_M = common dso_local global i32 0, align 4
@ICE_AQ_LINK_PAUSE_TX = common dso_local global i32 0, align 4
@ICE_AQ_LINK_PAUSE_RX = common dso_local global i32 0, align 4
@ICE_FC_FULL = common dso_local global i32 0, align 4
@ICE_FC_TX_PAUSE = common dso_local global i32 0, align 4
@ICE_FC_RX_PAUSE = common dso_local global i32 0, align 4
@ICE_FC_NONE = common dso_local global i32 0, align 4
@ICE_AQ_LSE_IS_ENABLED = common dso_local global i32 0, align 4
@ICE_DBG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"link_speed = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"phy_type_low = 0x%llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"phy_type_high = 0x%llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"media_type = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"link_info = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"an_info = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ext_info = 0x%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"lse_ena = 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"max_frame = 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"pacing = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_aq_get_link_info(%struct.ice_port_info* %0, i32 %1, %struct.ice_link_status* %2, %struct.ice_sq_cd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_port_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_link_status*, align 8
  %9 = alloca %struct.ice_sq_cd*, align 8
  %10 = alloca %struct.ice_aqc_get_link_status_data, align 4
  %11 = alloca %struct.ice_aqc_get_link_status*, align 8
  %12 = alloca %struct.ice_link_status*, align 8
  %13 = alloca %struct.ice_link_status*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ice_fc_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ice_aq_desc, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ice_hw*, align 8
  %21 = alloca i32, align 4
  store %struct.ice_port_info* %0, %struct.ice_port_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ice_link_status* %2, %struct.ice_link_status** %8, align 8
  store %struct.ice_sq_cd* %3, %struct.ice_sq_cd** %9, align 8
  %22 = bitcast %struct.ice_aqc_get_link_status_data* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %22, i8 0, i64 40, i1 false)
  %23 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %24 = icmp ne %struct.ice_port_info* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %26, i32* %5, align 4
  br label %262

27:                                               ; preds = %4
  %28 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %29 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %28, i32 0, i32 3
  %30 = load %struct.ice_hw*, %struct.ice_hw** %29, align 8
  store %struct.ice_hw* %30, %struct.ice_hw** %20, align 8
  %31 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %32 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store %struct.ice_link_status* %33, %struct.ice_link_status** %12, align 8
  %34 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %35 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32* %36, i32** %14, align 8
  %37 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %38 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store %struct.ice_link_status* %39, %struct.ice_link_status** %13, align 8
  %40 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %41 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %40, i32 0, i32 2
  store %struct.ice_fc_info* %41, %struct.ice_fc_info** %15, align 8
  %42 = load i32, i32* @ice_aqc_opc_get_link_status, align 4
  %43 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %18, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %27
  %47 = load i32, i32* @ICE_AQ_LSE_ENA, align 4
  br label %50

48:                                               ; preds = %27
  %49 = load i32, i32* @ICE_AQ_LSE_DIS, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %21, align 4
  %52 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %18, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store %struct.ice_aqc_get_link_status* %53, %struct.ice_aqc_get_link_status** %11, align 8
  %54 = load i32, i32* %21, align 4
  %55 = call i32 @cpu_to_le16(i32 %54)
  %56 = load %struct.ice_aqc_get_link_status*, %struct.ice_aqc_get_link_status** %11, align 8
  %57 = getelementptr inbounds %struct.ice_aqc_get_link_status, %struct.ice_aqc_get_link_status* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %59 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ice_aqc_get_link_status*, %struct.ice_aqc_get_link_status** %11, align 8
  %62 = getelementptr inbounds %struct.ice_aqc_get_link_status, %struct.ice_aqc_get_link_status* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ice_hw*, %struct.ice_hw** %20, align 8
  %64 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %9, align 8
  %65 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %63, %struct.ice_aq_desc* %18, %struct.ice_aqc_get_link_status_data* %10, i32 40, %struct.ice_sq_cd* %64)
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %19, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %50
  %69 = load i32, i32* %19, align 4
  store i32 %69, i32* %5, align 4
  br label %262

70:                                               ; preds = %50
  %71 = load %struct.ice_link_status*, %struct.ice_link_status** %12, align 8
  %72 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %73 = bitcast %struct.ice_link_status* %71 to i8*
  %74 = bitcast %struct.ice_link_status* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 56, i1 false)
  %75 = getelementptr inbounds %struct.ice_aqc_get_link_status_data, %struct.ice_aqc_get_link_status_data* %10, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @le16_to_cpu(i32 %76)
  %78 = ptrtoint i8* %77 to i32
  %79 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %80 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = getelementptr inbounds %struct.ice_aqc_get_link_status_data, %struct.ice_aqc_get_link_status_data* %10, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @le64_to_cpu(i32 %82)
  %84 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %85 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %84, i32 0, i32 9
  store i8* %83, i8** %85, align 8
  %86 = getelementptr inbounds %struct.ice_aqc_get_link_status_data, %struct.ice_aqc_get_link_status_data* %10, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le64_to_cpu(i32 %87)
  %89 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %90 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %89, i32 0, i32 8
  store i8* %88, i8** %90, align 8
  %91 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %92 = call i32 @ice_get_media_type(%struct.ice_port_info* %91)
  %93 = load i32*, i32** %14, align 8
  store i32 %92, i32* %93, align 4
  %94 = getelementptr inbounds %struct.ice_aqc_get_link_status_data, %struct.ice_aqc_get_link_status_data* %10, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %97 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = getelementptr inbounds %struct.ice_aqc_get_link_status_data, %struct.ice_aqc_get_link_status_data* %10, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %101 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %100, i32 0, i32 2
  store i32 %99, i32* %101, align 8
  %102 = getelementptr inbounds %struct.ice_aqc_get_link_status_data, %struct.ice_aqc_get_link_status_data* %10, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %105 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = getelementptr inbounds %struct.ice_aqc_get_link_status_data, %struct.ice_aqc_get_link_status_data* %10, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @le16_to_cpu(i32 %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %111 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 8
  %112 = getelementptr inbounds %struct.ice_aqc_get_link_status_data, %struct.ice_aqc_get_link_status_data* %10, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @ICE_AQ_FEC_MASK, align 4
  %115 = and i32 %113, %114
  %116 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %117 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = getelementptr inbounds %struct.ice_aqc_get_link_status_data, %struct.ice_aqc_get_link_status_data* %10, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %121 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %120, i32 0, i32 10
  store i32 %119, i32* %121, align 8
  %122 = getelementptr inbounds %struct.ice_aqc_get_link_status_data, %struct.ice_aqc_get_link_status_data* %10, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ICE_AQ_CFG_PACING_M, align 4
  %125 = load i32, i32* @ICE_AQ_CFG_PACING_TYPE_M, align 4
  %126 = or i32 %124, %125
  %127 = and i32 %123, %126
  %128 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %129 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 8
  %130 = getelementptr inbounds %struct.ice_aqc_get_link_status_data, %struct.ice_aqc_get_link_status_data* %10, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @ICE_AQ_LINK_PAUSE_TX, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = xor i1 %134, true
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  store i32 %137, i32* %16, align 4
  %138 = getelementptr inbounds %struct.ice_aqc_get_link_status_data, %struct.ice_aqc_get_link_status_data* %10, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @ICE_AQ_LINK_PAUSE_RX, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  %143 = xor i1 %142, true
  %144 = xor i1 %143, true
  %145 = zext i1 %144 to i32
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %16, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %70
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i32, i32* @ICE_FC_FULL, align 4
  %153 = load %struct.ice_fc_info*, %struct.ice_fc_info** %15, align 8
  %154 = getelementptr inbounds %struct.ice_fc_info, %struct.ice_fc_info* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  br label %175

155:                                              ; preds = %148, %70
  %156 = load i32, i32* %16, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i32, i32* @ICE_FC_TX_PAUSE, align 4
  %160 = load %struct.ice_fc_info*, %struct.ice_fc_info** %15, align 8
  %161 = getelementptr inbounds %struct.ice_fc_info, %struct.ice_fc_info* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 4
  br label %174

162:                                              ; preds = %155
  %163 = load i32, i32* %17, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load i32, i32* @ICE_FC_RX_PAUSE, align 4
  %167 = load %struct.ice_fc_info*, %struct.ice_fc_info** %15, align 8
  %168 = getelementptr inbounds %struct.ice_fc_info, %struct.ice_fc_info* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  br label %173

169:                                              ; preds = %162
  %170 = load i32, i32* @ICE_FC_NONE, align 4
  %171 = load %struct.ice_fc_info*, %struct.ice_fc_info** %15, align 8
  %172 = getelementptr inbounds %struct.ice_fc_info, %struct.ice_fc_info* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %169, %165
  br label %174

174:                                              ; preds = %173, %158
  br label %175

175:                                              ; preds = %174, %151
  %176 = load %struct.ice_aqc_get_link_status*, %struct.ice_aqc_get_link_status** %11, align 8
  %177 = getelementptr inbounds %struct.ice_aqc_get_link_status, %struct.ice_aqc_get_link_status* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @ICE_AQ_LSE_IS_ENABLED, align 4
  %180 = call i32 @cpu_to_le16(i32 %179)
  %181 = and i32 %178, %180
  %182 = icmp ne i32 %181, 0
  %183 = xor i1 %182, true
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %187 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %186, i32 0, i32 7
  store i32 %185, i32* %187, align 4
  %188 = load %struct.ice_hw*, %struct.ice_hw** %20, align 8
  %189 = load i32, i32* @ICE_DBG_LINK, align 4
  %190 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %191 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @ice_debug(%struct.ice_hw* %188, i32 %189, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %192)
  %194 = load %struct.ice_hw*, %struct.ice_hw** %20, align 8
  %195 = load i32, i32* @ICE_DBG_LINK, align 4
  %196 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %197 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %196, i32 0, i32 9
  %198 = load i8*, i8** %197, align 8
  %199 = ptrtoint i8* %198 to i64
  %200 = trunc i64 %199 to i32
  %201 = call i32 @ice_debug(%struct.ice_hw* %194, i32 %195, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %200)
  %202 = load %struct.ice_hw*, %struct.ice_hw** %20, align 8
  %203 = load i32, i32* @ICE_DBG_LINK, align 4
  %204 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %205 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %204, i32 0, i32 8
  %206 = load i8*, i8** %205, align 8
  %207 = ptrtoint i8* %206 to i64
  %208 = trunc i64 %207 to i32
  %209 = call i32 @ice_debug(%struct.ice_hw* %202, i32 %203, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %208)
  %210 = load %struct.ice_hw*, %struct.ice_hw** %20, align 8
  %211 = load i32, i32* @ICE_DBG_LINK, align 4
  %212 = load i32*, i32** %14, align 8
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @ice_debug(%struct.ice_hw* %210, i32 %211, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %213)
  %215 = load %struct.ice_hw*, %struct.ice_hw** %20, align 8
  %216 = load i32, i32* @ICE_DBG_LINK, align 4
  %217 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %218 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @ice_debug(%struct.ice_hw* %215, i32 %216, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %219)
  %221 = load %struct.ice_hw*, %struct.ice_hw** %20, align 8
  %222 = load i32, i32* @ICE_DBG_LINK, align 4
  %223 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %224 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @ice_debug(%struct.ice_hw* %221, i32 %222, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %225)
  %227 = load %struct.ice_hw*, %struct.ice_hw** %20, align 8
  %228 = load i32, i32* @ICE_DBG_LINK, align 4
  %229 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %230 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @ice_debug(%struct.ice_hw* %227, i32 %228, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %231)
  %233 = load %struct.ice_hw*, %struct.ice_hw** %20, align 8
  %234 = load i32, i32* @ICE_DBG_LINK, align 4
  %235 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %236 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @ice_debug(%struct.ice_hw* %233, i32 %234, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %237)
  %239 = load %struct.ice_hw*, %struct.ice_hw** %20, align 8
  %240 = load i32, i32* @ICE_DBG_LINK, align 4
  %241 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %242 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @ice_debug(%struct.ice_hw* %239, i32 %240, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %243)
  %245 = load %struct.ice_hw*, %struct.ice_hw** %20, align 8
  %246 = load i32, i32* @ICE_DBG_LINK, align 4
  %247 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %248 = getelementptr inbounds %struct.ice_link_status, %struct.ice_link_status* %247, i32 0, i32 6
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @ice_debug(%struct.ice_hw* %245, i32 %246, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %249)
  %251 = load %struct.ice_link_status*, %struct.ice_link_status** %8, align 8
  %252 = icmp ne %struct.ice_link_status* %251, null
  br i1 %252, label %253, label %258

253:                                              ; preds = %175
  %254 = load %struct.ice_link_status*, %struct.ice_link_status** %8, align 8
  %255 = load %struct.ice_link_status*, %struct.ice_link_status** %13, align 8
  %256 = bitcast %struct.ice_link_status* %254 to i8*
  %257 = bitcast %struct.ice_link_status* %255 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %256, i8* align 8 %257, i64 56, i1 false)
  br label %258

258:                                              ; preds = %253, %175
  %259 = load %struct.ice_port_info*, %struct.ice_port_info** %6, align 8
  %260 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 1
  store i32 0, i32* %261, align 4
  store i32 0, i32* %5, align 4
  br label %262

262:                                              ; preds = %258, %68, %25
  %263 = load i32, i32* %5, align 4
  ret i32 %263
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, %struct.ice_aqc_get_link_status_data*, i32, %struct.ice_sq_cd*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @le16_to_cpu(i32) #2

declare dso_local i8* @le64_to_cpu(i32) #2

declare dso_local i32 @ice_get_media_type(%struct.ice_port_info*) #2

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
