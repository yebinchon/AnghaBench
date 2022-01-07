; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_rssi_threshold_event_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_rssi_threshold_event_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { %struct.sq_threshold_params* }
%struct.sq_threshold_params = type { i64*, i64*, i32, i32, i32, i32 }
%struct.wmi_rssi_threshold_event = type { i32, i64 }
%struct.wmi_rssi_threshold_params_cmd = type { i32, i32, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@SIGNAL_QUALITY_METRICS_RSSI = common dso_local global i64 0, align 8
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"spurious upper rssi threshold event: %d\0A\00", align 1
@WMI_RSSI_THRESHOLD1_ABOVE = common dso_local global i32 0, align 4
@WMI_RSSI_THRESHOLD2_ABOVE = common dso_local global i32 0, align 4
@WMI_RSSI_THRESHOLD3_ABOVE = common dso_local global i32 0, align 4
@WMI_RSSI_THRESHOLD4_ABOVE = common dso_local global i32 0, align 4
@WMI_RSSI_THRESHOLD5_ABOVE = common dso_local global i32 0, align 4
@WMI_RSSI_THRESHOLD6_ABOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"spurious lower rssi threshold event: %d %d\0A\00", align 1
@WMI_RSSI_THRESHOLD6_BELOW = common dso_local global i32 0, align 4
@WMI_RSSI_THRESHOLD5_BELOW = common dso_local global i32 0, align 4
@WMI_RSSI_THRESHOLD4_BELOW = common dso_local global i32 0, align 4
@WMI_RSSI_THRESHOLD3_BELOW = common dso_local global i32 0, align 4
@WMI_RSSI_THRESHOLD2_BELOW = common dso_local global i32 0, align 4
@WMI_RSSI_THRESHOLD1_BELOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"unable to configure rssi thresholds\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32*, i32)* @ath6kl_wmi_rssi_threshold_event_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_rssi_threshold_event_rx(%struct.wmi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wmi*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi_rssi_threshold_event*, align 8
  %9 = alloca %struct.wmi_rssi_threshold_params_cmd, align 8
  %10 = alloca %struct.sq_threshold_params*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 16
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %320

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = bitcast i32* %23 to %struct.wmi_rssi_threshold_event*
  store %struct.wmi_rssi_threshold_event* %24, %struct.wmi_rssi_threshold_event** %8, align 8
  %25 = load %struct.wmi_rssi_threshold_event*, %struct.wmi_rssi_threshold_event** %8, align 8
  %26 = getelementptr inbounds %struct.wmi_rssi_threshold_event, %struct.wmi_rssi_threshold_event* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load %struct.wmi_rssi_threshold_event*, %struct.wmi_rssi_threshold_event** %8, align 8
  %30 = getelementptr inbounds %struct.wmi_rssi_threshold_event, %struct.wmi_rssi_threshold_event* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @a_sle16_to_cpu(i32 %31)
  store i64 %32, i64* %14, align 8
  %33 = load %struct.wmi*, %struct.wmi** %5, align 8
  %34 = getelementptr inbounds %struct.wmi, %struct.wmi* %33, i32 0, i32 0
  %35 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %34, align 8
  %36 = load i64, i64* @SIGNAL_QUALITY_METRICS_RSSI, align 8
  %37 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %35, i64 %36
  store %struct.sq_threshold_params* %37, %struct.sq_threshold_params** %10, align 8
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %159

40:                                               ; preds = %22
  %41 = load i64, i64* %14, align 8
  %42 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %43 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %41, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %50 = load i64, i64* %14, align 8
  %51 = call i32 (i32, i8*, i64, ...) @ath6kl_dbg(i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %50)
  br label %158

52:                                               ; preds = %40
  %53 = load i64, i64* %14, align 8
  %54 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %55 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %53, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %52
  %61 = load i64, i64* %14, align 8
  %62 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %63 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %61, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @WMI_RSSI_THRESHOLD1_ABOVE, align 4
  store i32 %69, i32* %11, align 4
  br label %157

70:                                               ; preds = %60, %52
  %71 = load i64, i64* %14, align 8
  %72 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %73 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %71, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %70
  %79 = load i64, i64* %14, align 8
  %80 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %81 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp sge i64 %79, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %78
  %87 = load i32, i32* @WMI_RSSI_THRESHOLD2_ABOVE, align 4
  store i32 %87, i32* %11, align 4
  br label %156

88:                                               ; preds = %78, %70
  %89 = load i64, i64* %14, align 8
  %90 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %91 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %89, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %88
  %97 = load i64, i64* %14, align 8
  %98 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %99 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp sge i64 %97, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* @WMI_RSSI_THRESHOLD3_ABOVE, align 4
  store i32 %105, i32* %11, align 4
  br label %155

106:                                              ; preds = %96, %88
  %107 = load i64, i64* %14, align 8
  %108 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %109 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 4
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %107, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %106
  %115 = load i64, i64* %14, align 8
  %116 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %117 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 3
  %120 = load i64, i64* %119, align 8
  %121 = icmp sge i64 %115, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = load i32, i32* @WMI_RSSI_THRESHOLD4_ABOVE, align 4
  store i32 %123, i32* %11, align 4
  br label %154

124:                                              ; preds = %114, %106
  %125 = load i64, i64* %14, align 8
  %126 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %127 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 5
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %125, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %124
  %133 = load i64, i64* %14, align 8
  %134 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %135 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp sge i64 %133, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %132
  %141 = load i32, i32* @WMI_RSSI_THRESHOLD5_ABOVE, align 4
  store i32 %141, i32* %11, align 4
  br label %153

142:                                              ; preds = %132, %124
  %143 = load i64, i64* %14, align 8
  %144 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %145 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %144, i32 0, i32 0
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 5
  %148 = load i64, i64* %147, align 8
  %149 = icmp sge i64 %143, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = load i32, i32* @WMI_RSSI_THRESHOLD6_ABOVE, align 4
  store i32 %151, i32* %11, align 4
  br label %152

152:                                              ; preds = %150, %142
  br label %153

153:                                              ; preds = %152, %140
  br label %154

154:                                              ; preds = %153, %122
  br label %155

155:                                              ; preds = %154, %104
  br label %156

156:                                              ; preds = %155, %86
  br label %157

157:                                              ; preds = %156, %68
  br label %158

158:                                              ; preds = %157, %48
  br label %283

159:                                              ; preds = %22
  %160 = load i64, i64* %14, align 8
  %161 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %162 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %161, i32 0, i32 1
  %163 = load i64*, i64** %162, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp sgt i64 %160, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %159
  %168 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %169 = load i64, i64* %14, align 8
  %170 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %171 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %170, i32 0, i32 1
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 (i32, i8*, i64, ...) @ath6kl_dbg(i32 %168, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %169, i64 %174)
  br label %282

176:                                              ; preds = %159
  %177 = load i64, i64* %14, align 8
  %178 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %179 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %178, i32 0, i32 1
  %180 = load i64*, i64** %179, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp sgt i64 %177, %182
  br i1 %183, label %184, label %194

184:                                              ; preds = %176
  %185 = load i64, i64* %14, align 8
  %186 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %187 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %186, i32 0, i32 1
  %188 = load i64*, i64** %187, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp sle i64 %185, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %184
  %193 = load i32, i32* @WMI_RSSI_THRESHOLD6_BELOW, align 4
  store i32 %193, i32* %11, align 4
  br label %281

194:                                              ; preds = %184, %176
  %195 = load i64, i64* %14, align 8
  %196 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %197 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %196, i32 0, i32 1
  %198 = load i64*, i64** %197, align 8
  %199 = getelementptr inbounds i64, i64* %198, i64 2
  %200 = load i64, i64* %199, align 8
  %201 = icmp sgt i64 %195, %200
  br i1 %201, label %202, label %212

202:                                              ; preds = %194
  %203 = load i64, i64* %14, align 8
  %204 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %205 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %204, i32 0, i32 1
  %206 = load i64*, i64** %205, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 1
  %208 = load i64, i64* %207, align 8
  %209 = icmp sle i64 %203, %208
  br i1 %209, label %210, label %212

210:                                              ; preds = %202
  %211 = load i32, i32* @WMI_RSSI_THRESHOLD5_BELOW, align 4
  store i32 %211, i32* %11, align 4
  br label %280

212:                                              ; preds = %202, %194
  %213 = load i64, i64* %14, align 8
  %214 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %215 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %214, i32 0, i32 1
  %216 = load i64*, i64** %215, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 3
  %218 = load i64, i64* %217, align 8
  %219 = icmp sgt i64 %213, %218
  br i1 %219, label %220, label %230

220:                                              ; preds = %212
  %221 = load i64, i64* %14, align 8
  %222 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %223 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %222, i32 0, i32 1
  %224 = load i64*, i64** %223, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp sle i64 %221, %226
  br i1 %227, label %228, label %230

228:                                              ; preds = %220
  %229 = load i32, i32* @WMI_RSSI_THRESHOLD4_BELOW, align 4
  store i32 %229, i32* %11, align 4
  br label %279

230:                                              ; preds = %220, %212
  %231 = load i64, i64* %14, align 8
  %232 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %233 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %232, i32 0, i32 1
  %234 = load i64*, i64** %233, align 8
  %235 = getelementptr inbounds i64, i64* %234, i64 4
  %236 = load i64, i64* %235, align 8
  %237 = icmp sgt i64 %231, %236
  br i1 %237, label %238, label %248

238:                                              ; preds = %230
  %239 = load i64, i64* %14, align 8
  %240 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %241 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %240, i32 0, i32 1
  %242 = load i64*, i64** %241, align 8
  %243 = getelementptr inbounds i64, i64* %242, i64 3
  %244 = load i64, i64* %243, align 8
  %245 = icmp sle i64 %239, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %238
  %247 = load i32, i32* @WMI_RSSI_THRESHOLD3_BELOW, align 4
  store i32 %247, i32* %11, align 4
  br label %278

248:                                              ; preds = %238, %230
  %249 = load i64, i64* %14, align 8
  %250 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %251 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %250, i32 0, i32 1
  %252 = load i64*, i64** %251, align 8
  %253 = getelementptr inbounds i64, i64* %252, i64 5
  %254 = load i64, i64* %253, align 8
  %255 = icmp sgt i64 %249, %254
  br i1 %255, label %256, label %266

256:                                              ; preds = %248
  %257 = load i64, i64* %14, align 8
  %258 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %259 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %258, i32 0, i32 1
  %260 = load i64*, i64** %259, align 8
  %261 = getelementptr inbounds i64, i64* %260, i64 4
  %262 = load i64, i64* %261, align 8
  %263 = icmp sle i64 %257, %262
  br i1 %263, label %264, label %266

264:                                              ; preds = %256
  %265 = load i32, i32* @WMI_RSSI_THRESHOLD2_BELOW, align 4
  store i32 %265, i32* %11, align 4
  br label %277

266:                                              ; preds = %256, %248
  %267 = load i64, i64* %14, align 8
  %268 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %269 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %268, i32 0, i32 1
  %270 = load i64*, i64** %269, align 8
  %271 = getelementptr inbounds i64, i64* %270, i64 5
  %272 = load i64, i64* %271, align 8
  %273 = icmp sle i64 %267, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %266
  %275 = load i32, i32* @WMI_RSSI_THRESHOLD1_BELOW, align 4
  store i32 %275, i32* %11, align 4
  br label %276

276:                                              ; preds = %274, %266
  br label %277

277:                                              ; preds = %276, %264
  br label %278

278:                                              ; preds = %277, %246
  br label %279

279:                                              ; preds = %278, %228
  br label %280

280:                                              ; preds = %279, %210
  br label %281

281:                                              ; preds = %280, %192
  br label %282

282:                                              ; preds = %281, %167
  br label %283

283:                                              ; preds = %282, %158
  %284 = load i64, i64* %14, align 8
  %285 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %286 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %287 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @ath6kl_wmi_get_lower_threshold(i64 %284, %struct.sq_threshold_params* %285, i32 %288)
  store i32 %289, i32* %13, align 4
  %290 = load i64, i64* %14, align 8
  %291 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %292 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %293 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 8
  %295 = call i32 @ath6kl_wmi_get_upper_threshold(i64 %290, %struct.sq_threshold_params* %291, i32 %294)
  store i32 %295, i32* %12, align 4
  %296 = load i32, i32* %12, align 4
  %297 = call i8* @a_cpu_to_sle16(i32 %296)
  %298 = getelementptr inbounds %struct.wmi_rssi_threshold_params_cmd, %struct.wmi_rssi_threshold_params_cmd* %9, i32 0, i32 3
  store i8* %297, i8** %298, align 8
  %299 = load i32, i32* %13, align 4
  %300 = call i8* @a_cpu_to_sle16(i32 %299)
  %301 = getelementptr inbounds %struct.wmi_rssi_threshold_params_cmd, %struct.wmi_rssi_threshold_params_cmd* %9, i32 0, i32 2
  store i8* %300, i8** %301, align 8
  %302 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %303 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  %305 = getelementptr inbounds %struct.wmi_rssi_threshold_params_cmd, %struct.wmi_rssi_threshold_params_cmd* %9, i32 0, i32 1
  store i32 %304, i32* %305, align 4
  %306 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %10, align 8
  %307 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @cpu_to_le32(i32 %308)
  %310 = getelementptr inbounds %struct.wmi_rssi_threshold_params_cmd, %struct.wmi_rssi_threshold_params_cmd* %9, i32 0, i32 0
  store i32 %309, i32* %310, align 8
  %311 = load %struct.wmi*, %struct.wmi** %5, align 8
  %312 = call i32 @ath6kl_wmi_send_rssi_threshold_params(%struct.wmi* %311, %struct.wmi_rssi_threshold_params_cmd* %9)
  store i32 %312, i32* %15, align 4
  %313 = load i32, i32* %15, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %283
  %316 = call i32 @ath6kl_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %317 = load i32, i32* @EIO, align 4
  %318 = sub nsw i32 0, %317
  store i32 %318, i32* %4, align 4
  br label %320

319:                                              ; preds = %283
  store i32 0, i32* %4, align 4
  br label %320

320:                                              ; preds = %319, %315, %19
  %321 = load i32, i32* %4, align 4
  ret i32 %321
}

declare dso_local i64 @a_sle16_to_cpu(i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64, ...) #1

declare dso_local i32 @ath6kl_wmi_get_lower_threshold(i64, %struct.sq_threshold_params*, i32) #1

declare dso_local i32 @ath6kl_wmi_get_upper_threshold(i64, %struct.sq_threshold_params*, i32) #1

declare dso_local i8* @a_cpu_to_sle16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ath6kl_wmi_send_rssi_threshold_params(%struct.wmi*, %struct.wmi_rssi_threshold_params_cmd*) #1

declare dso_local i32 @ath6kl_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
