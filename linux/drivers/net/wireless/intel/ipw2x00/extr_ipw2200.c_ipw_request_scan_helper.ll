; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_request_scan_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_request_scan_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i64, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ipw_scan_request_ext = type { i32*, i32, i8** }

@STATUS_INIT = common dso_local global i32 0, align 4
@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Direct scan requested but no SSID to scan for\0A\00", align 1
@STATUS_DIRECT_SCAN_PENDING = common dso_local global i32 0, align 4
@STATUS_SCANNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Concurrent scan requested.  Queuing.\0A\00", align 1
@STATUS_SCAN_PENDING = common dso_local global i32 0, align 4
@STATUS_SCAN_FORCED = common dso_local global i32 0, align 4
@STATUS_SCAN_ABORTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Scan request while abort pending.  Queuing.\0A\00", align 1
@STATUS_RF_KILL_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Queuing scan due to RF Kill activation\0A\00", align 1
@IW_SCAN_TYPE_PASSIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"use passive scanning\0A\00", align 1
@IPW_SCAN_PASSIVE_FULL_DWELL_SCAN = common dso_local global i64 0, align 8
@CFG_SPEED_SCAN = common dso_local global i32 0, align 4
@IPW_SCAN_ACTIVE_BROADCAST_SCAN = common dso_local global i64 0, align 8
@IPW_SCAN_ACTIVE_BROADCAST_AND_DIRECT_SCAN = common dso_local global i64 0, align 8
@IPW_SCAN_ACTIVE_DIRECT_SCAN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"Attempt to send SSID command  failed\0A\00", align 1
@STATUS_ROAMING = common dso_local global i32 0, align 4
@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@CFG_STATIC_ESSID = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"Attempt to send SSID command failed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Sending scan command failed: %08X\0A\00", align 1
@IPW_SCAN_CHECK_WATCHDOG = common dso_local global i32 0, align 4
@IPW_A_MODE = common dso_local global i32 0, align 4
@IPW_B_MODE = common dso_local global i32 0, align 4
@IW_MODE_MONITOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, i32, i32)* @ipw_request_scan_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_request_scan_helper(%struct.ipw_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipw_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipw_scan_request_ext, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %12 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @STATUS_INIT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %19 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %3
  store i32 0, i32* %4, align 4
  br label %287

25:                                               ; preds = %17
  %26 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %27 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %26, i32 0, i32 5
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %33 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = call i32 (i8*, ...) @IPW_DEBUG_HC(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @STATUS_DIRECT_SCAN_PENDING, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %41 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %282

44:                                               ; preds = %31, %25
  %45 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %46 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @STATUS_SCANNING, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %44
  %52 = call i32 (i8*, ...) @IPW_DEBUG_HC(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @STATUS_DIRECT_SCAN_PENDING, align 4
  br label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @STATUS_SCAN_PENDING, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  %61 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %62 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %282

65:                                               ; preds = %44
  %66 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %67 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @STATUS_SCAN_FORCED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %93, label %72

72:                                               ; preds = %65
  %73 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %74 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @STATUS_SCAN_ABORTING, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %72
  %80 = call i32 (i8*, ...) @IPW_DEBUG_HC(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @STATUS_DIRECT_SCAN_PENDING, align 4
  br label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @STATUS_SCAN_PENDING, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %90 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %282

93:                                               ; preds = %72, %65
  %94 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %95 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @STATUS_RF_KILL_MASK, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %93
  %101 = call i32 (i8*, ...) @IPW_DEBUG_HC(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @STATUS_DIRECT_SCAN_PENDING, align 4
  br label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @STATUS_SCAN_PENDING, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  %110 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %111 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %282

114:                                              ; preds = %93
  %115 = call i32 @memset(%struct.ipw_scan_request_ext* %8, i32 0, i32 24)
  %116 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %117 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %116, i32 0, i32 9
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = call i32 @libipw_get_scans(%struct.TYPE_3__* %118)
  %120 = call i32 @cpu_to_le32(i32 %119)
  %121 = getelementptr inbounds %struct.ipw_scan_request_ext, %struct.ipw_scan_request_ext* %8, i32 0, i32 1
  store i32 %120, i32* %121, align 8
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @IW_SCAN_TYPE_PASSIVE, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %139

125:                                              ; preds = %114
  %126 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %127 = load i64, i64* @IPW_SCAN_PASSIVE_FULL_DWELL_SCAN, align 8
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %10, align 4
  %129 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %130 = call i32 @ipw_passive_dwell_time(%struct.ipw_priv* %129)
  %131 = call i8* @cpu_to_le16(i32 %130)
  %132 = getelementptr inbounds %struct.ipw_scan_request_ext, %struct.ipw_scan_request_ext* %8, i32 0, i32 2
  %133 = load i8**, i8*** %132, align 8
  %134 = load i64, i64* @IPW_SCAN_PASSIVE_FULL_DWELL_SCAN, align 8
  %135 = getelementptr inbounds i8*, i8** %133, i64 %134
  store i8* %131, i8** %135, align 8
  %136 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @ipw_add_scan_channels(%struct.ipw_priv* %136, %struct.ipw_scan_request_ext* %8, i32 %137)
  br label %245

139:                                              ; preds = %114
  %140 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %141 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @CFG_SPEED_SCAN, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = call i8* @cpu_to_le16(i32 30)
  %148 = getelementptr inbounds %struct.ipw_scan_request_ext, %struct.ipw_scan_request_ext* %8, i32 0, i32 2
  %149 = load i8**, i8*** %148, align 8
  %150 = load i64, i64* @IPW_SCAN_ACTIVE_BROADCAST_SCAN, align 8
  %151 = getelementptr inbounds i8*, i8** %149, i64 %150
  store i8* %147, i8** %151, align 8
  br label %158

152:                                              ; preds = %139
  %153 = call i8* @cpu_to_le16(i32 20)
  %154 = getelementptr inbounds %struct.ipw_scan_request_ext, %struct.ipw_scan_request_ext* %8, i32 0, i32 2
  %155 = load i8**, i8*** %154, align 8
  %156 = load i64, i64* @IPW_SCAN_ACTIVE_BROADCAST_SCAN, align 8
  %157 = getelementptr inbounds i8*, i8** %155, i64 %156
  store i8* %153, i8** %157, align 8
  br label %158

158:                                              ; preds = %152, %146
  %159 = call i8* @cpu_to_le16(i32 20)
  %160 = getelementptr inbounds %struct.ipw_scan_request_ext, %struct.ipw_scan_request_ext* %8, i32 0, i32 2
  %161 = load i8**, i8*** %160, align 8
  %162 = load i64, i64* @IPW_SCAN_ACTIVE_BROADCAST_AND_DIRECT_SCAN, align 8
  %163 = getelementptr inbounds i8*, i8** %161, i64 %162
  store i8* %159, i8** %163, align 8
  %164 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %165 = call i32 @ipw_passive_dwell_time(%struct.ipw_priv* %164)
  %166 = call i8* @cpu_to_le16(i32 %165)
  %167 = getelementptr inbounds %struct.ipw_scan_request_ext, %struct.ipw_scan_request_ext* %8, i32 0, i32 2
  %168 = load i8**, i8*** %167, align 8
  %169 = load i64, i64* @IPW_SCAN_PASSIVE_FULL_DWELL_SCAN, align 8
  %170 = getelementptr inbounds i8*, i8** %168, i64 %169
  store i8* %166, i8** %170, align 8
  %171 = call i8* @cpu_to_le16(i32 20)
  %172 = getelementptr inbounds %struct.ipw_scan_request_ext, %struct.ipw_scan_request_ext* %8, i32 0, i32 2
  %173 = load i8**, i8*** %172, align 8
  %174 = load i64, i64* @IPW_SCAN_ACTIVE_DIRECT_SCAN, align 8
  %175 = getelementptr inbounds i8*, i8** %173, i64 %174
  store i8* %171, i8** %175, align 8
  %176 = load i32, i32* %7, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %194

178:                                              ; preds = %158
  %179 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %180 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %181 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %180, i32 0, i32 8
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %184 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = call i32 @ipw_send_ssid(%struct.ipw_priv* %179, i32 %182, i64 %185)
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %178
  %190 = call i32 (i8*, ...) @IPW_DEBUG_HC(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %282

191:                                              ; preds = %178
  %192 = load i64, i64* @IPW_SCAN_ACTIVE_BROADCAST_AND_DIRECT_SCAN, align 8
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %10, align 4
  br label %241

194:                                              ; preds = %158
  %195 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %196 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @STATUS_ROAMING, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %221, label %201

201:                                              ; preds = %194
  %202 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %203 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %237, label %208

208:                                              ; preds = %201
  %209 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %210 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @CFG_STATIC_ESSID, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %237

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.ipw_scan_request_ext, %struct.ipw_scan_request_ext* %8, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @le32_to_cpu(i32 %217)
  %219 = srem i32 %218, 2
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %237

221:                                              ; preds = %215, %194
  %222 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %223 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %224 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %227 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = call i32 @ipw_send_ssid(%struct.ipw_priv* %222, i32 %225, i64 %228)
  store i32 %229, i32* %9, align 4
  %230 = load i32, i32* %9, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %221
  %233 = call i32 (i8*, ...) @IPW_DEBUG_HC(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %282

234:                                              ; preds = %221
  %235 = load i64, i64* @IPW_SCAN_ACTIVE_BROADCAST_AND_DIRECT_SCAN, align 8
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %10, align 4
  br label %240

237:                                              ; preds = %215, %208, %201
  %238 = load i64, i64* @IPW_SCAN_ACTIVE_BROADCAST_SCAN, align 8
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %10, align 4
  br label %240

240:                                              ; preds = %237, %234
  br label %241

241:                                              ; preds = %240, %191
  %242 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %243 = load i32, i32* %10, align 4
  %244 = call i32 @ipw_add_scan_channels(%struct.ipw_priv* %242, %struct.ipw_scan_request_ext* %8, i32 %243)
  br label %245

245:                                              ; preds = %241, %125
  %246 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %247 = call i32 @ipw_send_scan_request_ext(%struct.ipw_priv* %246, %struct.ipw_scan_request_ext* %8)
  store i32 %247, i32* %9, align 4
  %248 = load i32, i32* %9, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %245
  %251 = load i32, i32* %9, align 4
  %252 = call i32 (i8*, ...) @IPW_DEBUG_HC(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %251)
  br label %282

253:                                              ; preds = %245
  %254 = load i32, i32* @STATUS_SCANNING, align 4
  %255 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %256 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = or i32 %257, %254
  store i32 %258, i32* %256, align 8
  %259 = load i32, i32* %7, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %253
  %262 = load i32, i32* @STATUS_DIRECT_SCAN_PENDING, align 4
  %263 = xor i32 %262, -1
  %264 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %265 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = and i32 %266, %263
  store i32 %267, i32* %265, align 8
  %268 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %269 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %268, i32 0, i32 1
  store i64 0, i64* %269, align 8
  br label %277

270:                                              ; preds = %253
  %271 = load i32, i32* @STATUS_SCAN_PENDING, align 4
  %272 = xor i32 %271, -1
  %273 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %274 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = and i32 %275, %272
  store i32 %276, i32* %274, align 8
  br label %277

277:                                              ; preds = %270, %261
  %278 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %279 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %278, i32 0, i32 6
  %280 = load i32, i32* @IPW_SCAN_CHECK_WATCHDOG, align 4
  %281 = call i32 @schedule_delayed_work(i32* %279, i32 %280)
  br label %282

282:                                              ; preds = %277, %250, %232, %189, %108, %87, %59, %36
  %283 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %284 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %283, i32 0, i32 5
  %285 = call i32 @mutex_unlock(i32* %284)
  %286 = load i32, i32* %9, align 4
  store i32 %286, i32* %4, align 4
  br label %287

287:                                              ; preds = %282, %24
  %288 = load i32, i32* %4, align 4
  ret i32 %288
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IPW_DEBUG_HC(i8*, ...) #1

declare dso_local i32 @memset(%struct.ipw_scan_request_ext*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @libipw_get_scans(%struct.TYPE_3__*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ipw_passive_dwell_time(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_add_scan_channels(%struct.ipw_priv*, %struct.ipw_scan_request_ext*, i32) #1

declare dso_local i32 @ipw_send_ssid(%struct.ipw_priv*, i32, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ipw_send_scan_request_ext(%struct.ipw_priv*, %struct.ipw_scan_request_ext*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
