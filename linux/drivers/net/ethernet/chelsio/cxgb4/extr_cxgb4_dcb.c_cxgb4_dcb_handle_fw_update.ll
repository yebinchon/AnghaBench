; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_dcb_handle_fw_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_dcb_handle_fw_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64*, i32, %struct.net_device** }
%struct.net_device = type { i32 }
%struct.fw_port_cmd = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %union.fw_port_dcb }
%union.fw_port_dcb = type { %struct.fw_port_app_priority }
%struct.fw_port_app_priority = type { i32, i32, i32, i32 }
%struct.port_info = type { %struct.port_dcb_info }
%struct.port_dcb_info = type { i32, i64, i32, %struct.app_priority*, i32, i32, i32, i32, i32, i32, i32 }
%struct.app_priority = type { i32, i32, i32 }
%struct.dcb_app = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@FW_PORT_DCB_TYPE_CONTROL = common dso_local global i32 0, align 4
@FW_PORT_CMD_ALL_SYNCD_F = common dso_local global i32 0, align 4
@CXGB4_DCB_INPUT_FW_ALLSYNCED = common dso_local global i32 0, align 4
@CXGB4_DCB_INPUT_FW_INCOMPLETE = common dso_local global i32 0, align 4
@FW_PORT_DCB_VER_UNKNOWN = common dso_local global i32 0, align 4
@FW_PORT_DCB_VER_CEE1D01 = common dso_local global i32 0, align 4
@FW_PORT_DCB_VER_IEEE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Interface %s is running %s\0A\00", align 1
@dcb_ver_array = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [83 x i8] c"Something screwed up, requested firmware for %s, but firmware returned %s instead\0A\00", align 1
@CXGB4_DCB_STATE_START = common dso_local global i64 0, align 8
@CXGB4_DCB_STATE_HOST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"Receiving Firmware DCB messages in State %d\0A\00", align 1
@CXGB4_DCB_FW_PGID = common dso_local global i32 0, align 4
@CXGB4_DCB_FW_PGRATE = common dso_local global i32 0, align 4
@CXGB4_DCB_FW_PRIORATE = common dso_local global i32 0, align 4
@CXGB4_DCB_FW_PFC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"Failed DCB Set Application Priority: sel=%d, prot=%d, prio=%d, err=%d\0A\00", align 1
@CXGB4_DCB_FW_APP_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Unknown DCB update type received %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgb4_dcb_handle_fw_update(%struct.adapter* %0, %struct.fw_port_cmd* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.fw_port_cmd*, align 8
  %5 = alloca %union.fw_port_dcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.port_info*, align 8
  %9 = alloca %struct.port_dcb_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fw_port_app_priority*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.app_priority*, align 8
  %16 = alloca %struct.dcb_app, align 4
  %17 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.fw_port_cmd* %1, %struct.fw_port_cmd** %4, align 8
  %18 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  store %union.fw_port_dcb* %20, %union.fw_port_dcb** %5, align 8
  %21 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be32_to_cpu(i32 %23)
  %25 = call i32 @FW_PORT_CMD_PORTID_G(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 2
  %28 = load %struct.net_device**, %struct.net_device*** %27, align 8
  %29 = load %struct.adapter*, %struct.adapter** %3, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.net_device*, %struct.net_device** %28, i64 %35
  %37 = load %struct.net_device*, %struct.net_device** %36, align 8
  store %struct.net_device* %37, %struct.net_device** %7, align 8
  %38 = load %struct.net_device*, %struct.net_device** %7, align 8
  %39 = call %struct.port_info* @netdev_priv(%struct.net_device* %38)
  store %struct.port_info* %39, %struct.port_info** %8, align 8
  %40 = load %struct.port_info*, %struct.port_info** %8, align 8
  %41 = getelementptr inbounds %struct.port_info, %struct.port_info* %40, i32 0, i32 0
  store %struct.port_dcb_info* %41, %struct.port_dcb_info** %9, align 8
  %42 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %4, align 8
  %43 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = bitcast %union.fw_port_dcb* %44 to %struct.TYPE_9__*
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @FW_PORT_DCB_TYPE_CONTROL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %131

51:                                               ; preds = %2
  %52 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = bitcast %union.fw_port_dcb* %54 to %struct.TYPE_7__*
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FW_PORT_CMD_ALL_SYNCD_F, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @CXGB4_DCB_INPUT_FW_ALLSYNCED, align 4
  br label %65

63:                                               ; preds = %51
  %64 = load i32, i32* @CXGB4_DCB_INPUT_FW_INCOMPLETE, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  store i32 %66, i32* %12, align 4
  %67 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %68 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @FW_PORT_DCB_VER_UNKNOWN, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %127

72:                                               ; preds = %65
  %73 = load %struct.fw_port_cmd*, %struct.fw_port_cmd** %4, align 8
  %74 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = bitcast %union.fw_port_dcb* %75 to %struct.TYPE_7__*
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @be16_to_cpu(i32 %78)
  %80 = call i32 @FW_PORT_CMD_DCB_VERSION_G(i32 %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @FW_PORT_DCB_VER_CEE1D01, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %72
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @FW_PORT_DCB_VER_IEEE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %84, %72
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %91 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.adapter*, %struct.adapter** %3, align 8
  %93 = getelementptr inbounds %struct.adapter, %struct.adapter* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.net_device*, %struct.net_device** %7, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** @dcb_ver_array, align 8
  %99 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %100 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dev_warn(i32 %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %104)
  br label %126

106:                                              ; preds = %84
  %107 = load %struct.adapter*, %struct.adapter** %3, align 8
  %108 = getelementptr inbounds %struct.adapter, %struct.adapter* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** @dcb_ver_array, align 8
  %111 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %112 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** @dcb_ver_array, align 8
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dev_warn(i32 %109, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %121)
  %123 = load i32, i32* @FW_PORT_DCB_VER_UNKNOWN, align 4
  %124 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %125 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %106, %88
  br label %127

127:                                              ; preds = %126, %65
  %128 = load %struct.net_device*, %struct.net_device** %7, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @cxgb4_dcb_state_fsm(%struct.net_device* %128, i32 %129)
  br label %338

131:                                              ; preds = %2
  %132 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %133 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @CXGB4_DCB_STATE_START, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %139 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @CXGB4_DCB_STATE_HOST, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %137, %131
  %144 = load %struct.adapter*, %struct.adapter** %3, align 8
  %145 = getelementptr inbounds %struct.adapter, %struct.adapter* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %148 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %146, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %150)
  br label %338

152:                                              ; preds = %137
  %153 = load i32, i32* %10, align 4
  switch i32 %153, label %332 [
    i32 130, label %154
    i32 129, label %167
    i32 128, label %204
    i32 131, label %217
    i32 132, label %238
  ]

154:                                              ; preds = %152
  %155 = load %union.fw_port_dcb*, %union.fw_port_dcb** %5, align 8
  %156 = bitcast %union.fw_port_dcb* %155 to %struct.TYPE_9__*
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @be32_to_cpu(i32 %158)
  %160 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %161 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %160, i32 0, i32 10
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @CXGB4_DCB_FW_PGID, align 4
  %163 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %164 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 8
  br label %338

167:                                              ; preds = %152
  %168 = load %union.fw_port_dcb*, %union.fw_port_dcb** %5, align 8
  %169 = bitcast %union.fw_port_dcb* %168 to %struct.TYPE_10__*
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %173 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %172, i32 0, i32 9
  store i32 %171, i32* %173, align 4
  %174 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %175 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %174, i32 0, i32 8
  %176 = load i32, i32* %175, align 8
  %177 = load %union.fw_port_dcb*, %union.fw_port_dcb** %5, align 8
  %178 = bitcast %union.fw_port_dcb* %177 to %struct.TYPE_10__*
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 1
  %180 = call i32 @memcpy(i32 %176, i32* %179, i32 4)
  %181 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %182 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 4
  %184 = load %union.fw_port_dcb*, %union.fw_port_dcb** %5, align 8
  %185 = bitcast %union.fw_port_dcb* %184 to %struct.TYPE_10__*
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = call i32 @memcpy(i32 %183, i32* %186, i32 4)
  %188 = load i32, i32* @CXGB4_DCB_FW_PGRATE, align 4
  %189 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %190 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %194 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @CXGB4_DCB_FW_PGID, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %167
  %200 = load %struct.net_device*, %struct.net_device** %7, align 8
  %201 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %202 = call i32 @IEEE_FAUX_SYNC(%struct.net_device* %200, %struct.port_dcb_info* %201)
  br label %203

203:                                              ; preds = %199, %167
  br label %338

204:                                              ; preds = %152
  %205 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %206 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %205, i32 0, i32 6
  %207 = load i32, i32* %206, align 8
  %208 = load %union.fw_port_dcb*, %union.fw_port_dcb** %5, align 8
  %209 = bitcast %union.fw_port_dcb* %208 to %struct.TYPE_11__*
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = call i32 @memcpy(i32 %207, i32* %210, i32 4)
  %212 = load i32, i32* @CXGB4_DCB_FW_PRIORATE, align 4
  %213 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %214 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %212
  store i32 %216, i32* %214, align 8
  br label %338

217:                                              ; preds = %152
  %218 = load %union.fw_port_dcb*, %union.fw_port_dcb** %5, align 8
  %219 = bitcast %union.fw_port_dcb* %218 to %struct.TYPE_12__*
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %223 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %222, i32 0, i32 5
  store i32 %221, i32* %223, align 4
  %224 = load %union.fw_port_dcb*, %union.fw_port_dcb** %5, align 8
  %225 = bitcast %union.fw_port_dcb* %224 to %struct.TYPE_12__*
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %229 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %228, i32 0, i32 4
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* @CXGB4_DCB_FW_PFC, align 4
  %231 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %232 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = or i32 %233, %230
  store i32 %234, i32* %232, align 8
  %235 = load %struct.net_device*, %struct.net_device** %7, align 8
  %236 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %237 = call i32 @IEEE_FAUX_SYNC(%struct.net_device* %235, %struct.port_dcb_info* %236)
  br label %338

238:                                              ; preds = %152
  %239 = load %union.fw_port_dcb*, %union.fw_port_dcb** %5, align 8
  %240 = bitcast %union.fw_port_dcb* %239 to %struct.fw_port_app_priority*
  store %struct.fw_port_app_priority* %240, %struct.fw_port_app_priority** %13, align 8
  %241 = load %struct.fw_port_app_priority*, %struct.fw_port_app_priority** %13, align 8
  %242 = getelementptr inbounds %struct.fw_port_app_priority, %struct.fw_port_app_priority* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %14, align 4
  %244 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %245 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %244, i32 0, i32 3
  %246 = load %struct.app_priority*, %struct.app_priority** %245, align 8
  %247 = load i32, i32* %14, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.app_priority, %struct.app_priority* %246, i64 %248
  store %struct.app_priority* %249, %struct.app_priority** %15, align 8
  %250 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %16, i32 0, i32 0
  store i32 0, i32* %250, align 4
  %251 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %16, i32 0, i32 1
  store i32 0, i32* %251, align 4
  %252 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %16, i32 0, i32 2
  %253 = load %struct.fw_port_app_priority*, %struct.fw_port_app_priority** %13, align 8
  %254 = getelementptr inbounds %struct.fw_port_app_priority, %struct.fw_port_app_priority* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @be16_to_cpu(i32 %255)
  store i32 %256, i32* %252, align 4
  %257 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %258 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* @FW_PORT_DCB_VER_IEEE, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %279

262:                                              ; preds = %238
  %263 = load %struct.fw_port_app_priority*, %struct.fw_port_app_priority** %13, align 8
  %264 = getelementptr inbounds %struct.fw_port_app_priority, %struct.fw_port_app_priority* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 1
  %267 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %16, i32 0, i32 0
  store i32 %266, i32* %267, align 4
  %268 = load %struct.fw_port_app_priority*, %struct.fw_port_app_priority** %13, align 8
  %269 = getelementptr inbounds %struct.fw_port_app_priority, %struct.fw_port_app_priority* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @ffs(i32 %270)
  %272 = sub nsw i32 %271, 1
  %273 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %16, i32 0, i32 1
  store i32 %272, i32* %273, align 4
  %274 = load %struct.net_device*, %struct.net_device** %7, align 8
  %275 = call i32 @dcb_ieee_setapp(%struct.net_device* %274, %struct.dcb_app* %16)
  store i32 %275, i32* %17, align 4
  %276 = load %struct.net_device*, %struct.net_device** %7, align 8
  %277 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %278 = call i32 @IEEE_FAUX_SYNC(%struct.net_device* %276, %struct.port_dcb_info* %277)
  br label %294

279:                                              ; preds = %238
  %280 = load %struct.fw_port_app_priority*, %struct.fw_port_app_priority** %13, align 8
  %281 = getelementptr inbounds %struct.fw_port_app_priority, %struct.fw_port_app_priority* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %282, 0
  %284 = xor i1 %283, true
  %285 = xor i1 %284, true
  %286 = zext i1 %285 to i32
  %287 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %16, i32 0, i32 0
  store i32 %286, i32* %287, align 4
  %288 = load %struct.fw_port_app_priority*, %struct.fw_port_app_priority** %13, align 8
  %289 = getelementptr inbounds %struct.fw_port_app_priority, %struct.fw_port_app_priority* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %16, i32 0, i32 1
  store i32 %290, i32* %291, align 4
  %292 = load %struct.net_device*, %struct.net_device** %7, align 8
  %293 = call i32 @dcb_setapp(%struct.net_device* %292, %struct.dcb_app* %16)
  store i32 %293, i32* %17, align 4
  br label %294

294:                                              ; preds = %279, %262
  %295 = load i32, i32* %17, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %310

297:                                              ; preds = %294
  %298 = load %struct.adapter*, %struct.adapter** %3, align 8
  %299 = getelementptr inbounds %struct.adapter, %struct.adapter* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %16, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %16, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %16, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* %17, align 4
  %308 = sub nsw i32 0, %307
  %309 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %300, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %302, i32 %304, i32 %306, i32 %308)
  br label %310

310:                                              ; preds = %297, %294
  %311 = load %struct.fw_port_app_priority*, %struct.fw_port_app_priority** %13, align 8
  %312 = getelementptr inbounds %struct.fw_port_app_priority, %struct.fw_port_app_priority* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.app_priority*, %struct.app_priority** %15, align 8
  %315 = getelementptr inbounds %struct.app_priority, %struct.app_priority* %314, i32 0, i32 2
  store i32 %313, i32* %315, align 4
  %316 = load %struct.fw_port_app_priority*, %struct.fw_port_app_priority** %13, align 8
  %317 = getelementptr inbounds %struct.fw_port_app_priority, %struct.fw_port_app_priority* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.app_priority*, %struct.app_priority** %15, align 8
  %320 = getelementptr inbounds %struct.app_priority, %struct.app_priority* %319, i32 0, i32 1
  store i32 %318, i32* %320, align 4
  %321 = load %struct.fw_port_app_priority*, %struct.fw_port_app_priority** %13, align 8
  %322 = getelementptr inbounds %struct.fw_port_app_priority, %struct.fw_port_app_priority* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @be16_to_cpu(i32 %323)
  %325 = load %struct.app_priority*, %struct.app_priority** %15, align 8
  %326 = getelementptr inbounds %struct.app_priority, %struct.app_priority* %325, i32 0, i32 0
  store i32 %324, i32* %326, align 4
  %327 = load i32, i32* @CXGB4_DCB_FW_APP_ID, align 4
  %328 = load %struct.port_dcb_info*, %struct.port_dcb_info** %9, align 8
  %329 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = or i32 %330, %327
  store i32 %331, i32* %329, align 8
  br label %338

332:                                              ; preds = %152
  %333 = load %struct.adapter*, %struct.adapter** %3, align 8
  %334 = getelementptr inbounds %struct.adapter, %struct.adapter* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* %10, align 4
  %337 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %335, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %336)
  br label %338

338:                                              ; preds = %127, %143, %332, %310, %217, %204, %203, %154
  ret void
}

declare dso_local i32 @FW_PORT_CMD_PORTID_G(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @FW_PORT_CMD_DCB_VERSION_G(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @cxgb4_dcb_state_fsm(%struct.net_device*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @IEEE_FAUX_SYNC(%struct.net_device*, %struct.port_dcb_info*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @dcb_ieee_setapp(%struct.net_device*, %struct.dcb_app*) #1

declare dso_local i32 @dcb_setapp(%struct.net_device*, %struct.dcb_app*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
