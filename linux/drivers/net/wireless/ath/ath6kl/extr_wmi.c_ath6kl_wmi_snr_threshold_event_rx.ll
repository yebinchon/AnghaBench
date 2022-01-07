; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_snr_threshold_event_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_snr_threshold_event_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { %struct.sq_threshold_params* }
%struct.sq_threshold_params = type { i64*, i64*, i32, i32, i32, i32 }
%struct.wmi_snr_threshold_event = type { i64, i64 }
%struct.wmi_snr_threshold_params_cmd = type { i32, i32, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@SIGNAL_QUALITY_METRICS_SNR = common dso_local global i64 0, align 8
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"spurious upper snr threshold event: %d\0A\00", align 1
@WMI_SNR_THRESHOLD1_ABOVE = common dso_local global i32 0, align 4
@WMI_SNR_THRESHOLD2_ABOVE = common dso_local global i32 0, align 4
@WMI_SNR_THRESHOLD3_ABOVE = common dso_local global i32 0, align 4
@WMI_SNR_THRESHOLD4_ABOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"spurious lower snr threshold event: %d\0A\00", align 1
@WMI_SNR_THRESHOLD4_BELOW = common dso_local global i32 0, align 4
@WMI_SNR_THRESHOLD3_BELOW = common dso_local global i32 0, align 4
@WMI_SNR_THRESHOLD2_BELOW = common dso_local global i32 0, align 4
@WMI_SNR_THRESHOLD1_BELOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"snr: %d, threshold: %d, lower: %d, upper: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"unable to configure snr threshold\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i8**, i32)* @ath6kl_wmi_snr_threshold_event_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_snr_threshold_event_rx(%struct.wmi* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wmi*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi_snr_threshold_event*, align 8
  %9 = alloca %struct.sq_threshold_params*, align 8
  %10 = alloca %struct.wmi_snr_threshold_params_cmd, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 16
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %246

22:                                               ; preds = %3
  %23 = load i8**, i8*** %6, align 8
  %24 = bitcast i8** %23 to %struct.wmi_snr_threshold_event*
  store %struct.wmi_snr_threshold_event* %24, %struct.wmi_snr_threshold_event** %8, align 8
  %25 = load %struct.wmi_snr_threshold_event*, %struct.wmi_snr_threshold_event** %8, align 8
  %26 = getelementptr inbounds %struct.wmi_snr_threshold_event, %struct.wmi_snr_threshold_event* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %11, align 4
  %29 = load %struct.wmi_snr_threshold_event*, %struct.wmi_snr_threshold_event** %8, align 8
  %30 = getelementptr inbounds %struct.wmi_snr_threshold_event, %struct.wmi_snr_threshold_event* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %14, align 8
  %32 = load %struct.wmi*, %struct.wmi** %5, align 8
  %33 = getelementptr inbounds %struct.wmi, %struct.wmi* %32, i32 0, i32 0
  %34 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %33, align 8
  %35 = load i64, i64* @SIGNAL_QUALITY_METRICS_SNR, align 8
  %36 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %34, i64 %35
  store %struct.sq_threshold_params* %36, %struct.sq_threshold_params** %9, align 8
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %120

39:                                               ; preds = %22
  %40 = load i64, i64* %14, align 8
  %41 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %42 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %40, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %49 = load i64, i64* %14, align 8
  %50 = call i32 (i32, i8*, i64, ...) @ath6kl_dbg(i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %49)
  br label %119

51:                                               ; preds = %39
  %52 = load i64, i64* %14, align 8
  %53 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %54 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %53, i32 0, i32 0
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp slt i64 %52, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %51
  %60 = load i64, i64* %14, align 8
  %61 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %62 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sge i64 %60, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @WMI_SNR_THRESHOLD1_ABOVE, align 4
  store i32 %68, i32* %11, align 4
  br label %118

69:                                               ; preds = %59, %51
  %70 = load i64, i64* %14, align 8
  %71 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %72 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %70, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %69
  %78 = load i64, i64* %14, align 8
  %79 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %80 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %78, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @WMI_SNR_THRESHOLD2_ABOVE, align 4
  store i32 %86, i32* %11, align 4
  br label %117

87:                                               ; preds = %77, %69
  %88 = load i64, i64* %14, align 8
  %89 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %90 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp slt i64 %88, %93
  br i1 %94, label %95, label %105

95:                                               ; preds = %87
  %96 = load i64, i64* %14, align 8
  %97 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %98 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %97, i32 0, i32 0
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp sge i64 %96, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32, i32* @WMI_SNR_THRESHOLD3_ABOVE, align 4
  store i32 %104, i32* %11, align 4
  br label %116

105:                                              ; preds = %95, %87
  %106 = load i64, i64* %14, align 8
  %107 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %108 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp sge i64 %106, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* @WMI_SNR_THRESHOLD4_ABOVE, align 4
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %113, %105
  br label %116

116:                                              ; preds = %115, %103
  br label %117

117:                                              ; preds = %116, %85
  br label %118

118:                                              ; preds = %117, %67
  br label %119

119:                                              ; preds = %118, %47
  br label %205

120:                                              ; preds = %22
  %121 = load i64, i64* %14, align 8
  %122 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %123 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp sgt i64 %121, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %120
  %129 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %130 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %131 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %130, i32 0, i32 1
  %132 = load i64*, i64** %131, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 (i32, i8*, i64, ...) @ath6kl_dbg(i32 %129, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %134)
  br label %204

136:                                              ; preds = %120
  %137 = load i64, i64* %14, align 8
  %138 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %139 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %138, i32 0, i32 1
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp sgt i64 %137, %142
  br i1 %143, label %144, label %154

144:                                              ; preds = %136
  %145 = load i64, i64* %14, align 8
  %146 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %147 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %146, i32 0, i32 1
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp sle i64 %145, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = load i32, i32* @WMI_SNR_THRESHOLD4_BELOW, align 4
  store i32 %153, i32* %11, align 4
  br label %203

154:                                              ; preds = %144, %136
  %155 = load i64, i64* %14, align 8
  %156 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %157 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %156, i32 0, i32 1
  %158 = load i64*, i64** %157, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %155, %160
  br i1 %161, label %162, label %172

162:                                              ; preds = %154
  %163 = load i64, i64* %14, align 8
  %164 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %165 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %164, i32 0, i32 1
  %166 = load i64*, i64** %165, align 8
  %167 = getelementptr inbounds i64, i64* %166, i64 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp sle i64 %163, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %162
  %171 = load i32, i32* @WMI_SNR_THRESHOLD3_BELOW, align 4
  store i32 %171, i32* %11, align 4
  br label %202

172:                                              ; preds = %162, %154
  %173 = load i64, i64* %14, align 8
  %174 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %175 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %174, i32 0, i32 1
  %176 = load i64*, i64** %175, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 3
  %178 = load i64, i64* %177, align 8
  %179 = icmp sgt i64 %173, %178
  br i1 %179, label %180, label %190

180:                                              ; preds = %172
  %181 = load i64, i64* %14, align 8
  %182 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %183 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %182, i32 0, i32 1
  %184 = load i64*, i64** %183, align 8
  %185 = getelementptr inbounds i64, i64* %184, i64 2
  %186 = load i64, i64* %185, align 8
  %187 = icmp sle i64 %181, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %180
  %189 = load i32, i32* @WMI_SNR_THRESHOLD2_BELOW, align 4
  store i32 %189, i32* %11, align 4
  br label %201

190:                                              ; preds = %180, %172
  %191 = load i64, i64* %14, align 8
  %192 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %193 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %192, i32 0, i32 1
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 3
  %196 = load i64, i64* %195, align 8
  %197 = icmp sle i64 %191, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %190
  %199 = load i32, i32* @WMI_SNR_THRESHOLD1_BELOW, align 4
  store i32 %199, i32* %11, align 4
  br label %200

200:                                              ; preds = %198, %190
  br label %201

201:                                              ; preds = %200, %188
  br label %202

202:                                              ; preds = %201, %170
  br label %203

203:                                              ; preds = %202, %152
  br label %204

204:                                              ; preds = %203, %128
  br label %205

205:                                              ; preds = %204, %119
  %206 = load i64, i64* %14, align 8
  %207 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %208 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %209 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = call i8* @ath6kl_wmi_get_lower_threshold(i64 %206, %struct.sq_threshold_params* %207, i32 %210)
  store i8* %211, i8** %13, align 8
  %212 = load i64, i64* %14, align 8
  %213 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %214 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %215 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = call i8* @ath6kl_wmi_get_upper_threshold(i64 %212, %struct.sq_threshold_params* %213, i32 %216)
  store i8* %217, i8** %12, align 8
  %218 = load i8*, i8** %12, align 8
  %219 = getelementptr inbounds %struct.wmi_snr_threshold_params_cmd, %struct.wmi_snr_threshold_params_cmd* %10, i32 0, i32 3
  store i8* %218, i8** %219, align 8
  %220 = load i8*, i8** %13, align 8
  %221 = getelementptr inbounds %struct.wmi_snr_threshold_params_cmd, %struct.wmi_snr_threshold_params_cmd* %10, i32 0, i32 2
  store i8* %220, i8** %221, align 8
  %222 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %223 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = getelementptr inbounds %struct.wmi_snr_threshold_params_cmd, %struct.wmi_snr_threshold_params_cmd* %10, i32 0, i32 1
  store i32 %224, i32* %225, align 4
  %226 = load %struct.sq_threshold_params*, %struct.sq_threshold_params** %9, align 8
  %227 = getelementptr inbounds %struct.sq_threshold_params, %struct.sq_threshold_params* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @cpu_to_le32(i32 %228)
  %230 = getelementptr inbounds %struct.wmi_snr_threshold_params_cmd, %struct.wmi_snr_threshold_params_cmd* %10, i32 0, i32 0
  store i32 %229, i32* %230, align 8
  %231 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %232 = load i64, i64* %14, align 8
  %233 = load i32, i32* %11, align 4
  %234 = load i8*, i8** %13, align 8
  %235 = load i8*, i8** %12, align 8
  %236 = call i32 (i32, i8*, i64, ...) @ath6kl_dbg(i32 %231, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %232, i32 %233, i8* %234, i8* %235)
  %237 = load %struct.wmi*, %struct.wmi** %5, align 8
  %238 = call i32 @ath6kl_wmi_send_snr_threshold_params(%struct.wmi* %237, %struct.wmi_snr_threshold_params_cmd* %10)
  store i32 %238, i32* %15, align 4
  %239 = load i32, i32* %15, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %205
  %242 = call i32 @ath6kl_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %243 = load i32, i32* @EIO, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %4, align 4
  br label %246

245:                                              ; preds = %205
  store i32 0, i32* %4, align 4
  br label %246

246:                                              ; preds = %245, %241, %19
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64, ...) #1

declare dso_local i8* @ath6kl_wmi_get_lower_threshold(i64, %struct.sq_threshold_params*, i32) #1

declare dso_local i8* @ath6kl_wmi_get_upper_threshold(i64, %struct.sq_threshold_params*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ath6kl_wmi_send_snr_threshold_params(%struct.wmi*, %struct.wmi_snr_threshold_params_cmd*) #1

declare dso_local i32 @ath6kl_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
