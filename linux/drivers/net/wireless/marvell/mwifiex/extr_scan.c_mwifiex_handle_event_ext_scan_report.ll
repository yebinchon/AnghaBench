; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_handle_event_ext_scan_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_handle_event_ext_scan_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i32 }
%struct.mwifiex_ie_types_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mwifiex_ie_types_bss_scan_rsp = type { i32 }
%struct.mwifiex_ie_types_bss_scan_info = type { i64, i32, i32 }
%struct.mwifiex_event_scan_result = type { i64, i32, i32 }

@MWIFIEX_MAX_AP = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"EXT_SCAN: Invalid number of AP returned (%d)!!\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"EXT_SCAN: size %d, returned %d APs...\00", align 1
@CMD_D = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"EXT_SCAN buffer:\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"EXT_SCAN: Error bytes left < TLV length\0A\00", align 1
@TLV_TYPE_BSS_SCAN_RSP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"EXT_SCAN: Error in processing TLV,\09bytes left < TLV length\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"info: InterpretIE: RSSI=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_handle_event_ext_scan_report(%struct.mwifiex_private* %0, i8* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mwifiex_ie_types_data*, align 8
  %14 = alloca %struct.mwifiex_ie_types_bss_scan_rsp*, align 8
  %15 = alloca %struct.mwifiex_ie_types_bss_scan_info*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.mwifiex_event_scan_result*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 0
  %25 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %24, align 8
  store %struct.mwifiex_adapter* %25, %struct.mwifiex_adapter** %6, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %26 = load i8*, i8** %4, align 8
  %27 = bitcast i8* %26 to %struct.mwifiex_event_scan_result*
  store %struct.mwifiex_event_scan_result* %27, %struct.mwifiex_event_scan_result** %19, align 8
  %28 = load %struct.mwifiex_event_scan_result*, %struct.mwifiex_event_scan_result** %19, align 8
  %29 = getelementptr inbounds %struct.mwifiex_event_scan_result, %struct.mwifiex_event_scan_result* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %20, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr i8, i8* %31, i64 16
  %33 = bitcast i8* %32 to i64*
  store i64* %33, i64** %21, align 8
  %34 = load %struct.mwifiex_event_scan_result*, %struct.mwifiex_event_scan_result** %19, align 8
  %35 = getelementptr inbounds %struct.mwifiex_event_scan_result, %struct.mwifiex_event_scan_result* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  store i32 %37, i32* %22, align 4
  %38 = load i64, i64* %20, align 8
  %39 = load i64, i64* @MWIFIEX_MAX_AP, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %2
  %42 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %43 = load i32, i32* @ERROR, align 4
  %44 = load i64, i64* %20, align 8
  %45 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %42, i32 %43, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %44)
  store i32 -1, i32* %5, align 4
  br label %223

46:                                               ; preds = %2
  %47 = load i32, i32* %22, align 4
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %8, align 8
  %49 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %50 = load i32, i32* @INFO, align 4
  %51 = load i32, i32* %22, align 4
  %52 = load i64, i64* %20, align 8
  %53 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %49, i32 %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %51, i64 %52)
  %54 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %55 = load i32, i32* @CMD_D, align 4
  %56 = load i8*, i8** %4, align 8
  %57 = load i32, i32* %22, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 16
  %60 = trunc i64 %59 to i32
  %61 = call i32 @mwifiex_dbg_dump(%struct.mwifiex_adapter* %54, i32 %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %56, i32 %60)
  %62 = load i64*, i64** %21, align 8
  %63 = bitcast i64* %62 to %struct.mwifiex_ie_types_data*
  store %struct.mwifiex_ie_types_data* %63, %struct.mwifiex_ie_types_data** %13, align 8
  store i64 0, i64* %10, align 8
  br label %64

64:                                               ; preds = %219, %46
  %65 = load i64, i64* %10, align 8
  %66 = load i64, i64* %20, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load i64, i64* %8, align 8
  %70 = icmp ne i64 %69, 0
  br label %71

71:                                               ; preds = %68, %64
  %72 = phi i1 [ false, %64 ], [ %70, %68 ]
  br i1 %72, label %73, label %222

73:                                               ; preds = %71
  %74 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %13, align 8
  %75 = getelementptr inbounds %struct.mwifiex_ie_types_data, %struct.mwifiex_ie_types_data* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le16_to_cpu(i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %13, align 8
  %80 = getelementptr inbounds %struct.mwifiex_ie_types_data, %struct.mwifiex_ie_types_data* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @le16_to_cpu(i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i64, i64* %8, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 4, %86
  %88 = icmp ult i64 %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %73
  %90 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %91 = load i32, i32* @ERROR, align 4
  %92 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %90, i32 %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %222

93:                                               ; preds = %73
  store %struct.mwifiex_ie_types_bss_scan_rsp* null, %struct.mwifiex_ie_types_bss_scan_rsp** %14, align 8
  store %struct.mwifiex_ie_types_bss_scan_info* null, %struct.mwifiex_ie_types_bss_scan_info** %15, align 8
  %94 = load i64, i64* %8, align 8
  store i64 %94, i64* %9, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @TLV_TYPE_BSS_SCAN_RSP, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %222

99:                                               ; preds = %93
  %100 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %13, align 8
  %101 = bitcast %struct.mwifiex_ie_types_data* %100 to i64*
  store i64* %101, i64** %7, align 8
  %102 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %13, align 8
  %103 = bitcast %struct.mwifiex_ie_types_data* %102 to %struct.mwifiex_ie_types_bss_scan_rsp*
  store %struct.mwifiex_ie_types_bss_scan_rsp* %103, %struct.mwifiex_ie_types_bss_scan_rsp** %14, align 8
  %104 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %13, align 8
  %105 = getelementptr inbounds %struct.mwifiex_ie_types_data, %struct.mwifiex_ie_types_data* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = inttoptr i64 %109 to %struct.mwifiex_ie_types_data*
  store %struct.mwifiex_ie_types_data* %110, %struct.mwifiex_ie_types_data** %13, align 8
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = add i64 %112, 4
  %114 = load i64, i64* %9, align 8
  %115 = sub i64 %114, %113
  store i64 %115, i64* %9, align 8
  br label %116

116:                                              ; preds = %160, %157, %145, %99
  %117 = load i64, i64* %9, align 8
  %118 = icmp uge i64 %117, 4
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %13, align 8
  %121 = getelementptr inbounds %struct.mwifiex_ie_types_data, %struct.mwifiex_ie_types_data* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @le16_to_cpu(i32 %123)
  %125 = load i32, i32* @TLV_TYPE_BSS_SCAN_RSP, align 4
  %126 = icmp ne i32 %124, %125
  br label %127

127:                                              ; preds = %119, %116
  %128 = phi i1 [ false, %116 ], [ %126, %119 ]
  br i1 %128, label %129, label %178

129:                                              ; preds = %127
  %130 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %13, align 8
  %131 = getelementptr inbounds %struct.mwifiex_ie_types_data, %struct.mwifiex_ie_types_data* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le16_to_cpu(i32 %133)
  store i32 %134, i32* %11, align 4
  %135 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %13, align 8
  %136 = getelementptr inbounds %struct.mwifiex_ie_types_data, %struct.mwifiex_ie_types_data* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @le16_to_cpu(i32 %138)
  store i32 %139, i32* %12, align 4
  %140 = load i64, i64* %9, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = add i64 4, %142
  %144 = icmp ult i64 %140, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %129
  %146 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %147 = load i32, i32* @ERROR, align 4
  %148 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %146, i32 %147, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0))
  store %struct.mwifiex_ie_types_bss_scan_rsp* null, %struct.mwifiex_ie_types_bss_scan_rsp** %14, align 8
  store i64 0, i64* %9, align 8
  br label %116

149:                                              ; preds = %129
  %150 = load i32, i32* %11, align 4
  switch i32 %150, label %159 [
    i32 128, label %151
  ]

151:                                              ; preds = %149
  %152 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %13, align 8
  %153 = bitcast %struct.mwifiex_ie_types_data* %152 to %struct.mwifiex_ie_types_bss_scan_info*
  store %struct.mwifiex_ie_types_bss_scan_info* %153, %struct.mwifiex_ie_types_bss_scan_info** %15, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sext i32 %154 to i64
  %156 = icmp ne i64 %155, 12
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  store i64 0, i64* %9, align 8
  br label %116

158:                                              ; preds = %151
  br label %160

159:                                              ; preds = %149
  br label %160

160:                                              ; preds = %159, %158
  %161 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %13, align 8
  %162 = getelementptr inbounds %struct.mwifiex_ie_types_data, %struct.mwifiex_ie_types_data* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %163, %165
  %167 = inttoptr i64 %166 to %struct.mwifiex_ie_types_data*
  store %struct.mwifiex_ie_types_data* %167, %struct.mwifiex_ie_types_data** %13, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = add i64 %169, 4
  %171 = load i64, i64* %8, align 8
  %172 = sub i64 %171, %170
  store i64 %172, i64* %8, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = add i64 %174, 4
  %176 = load i64, i64* %9, align 8
  %177 = sub i64 %176, %175
  store i64 %177, i64* %9, align 8
  br label %116

178:                                              ; preds = %127
  %179 = load %struct.mwifiex_ie_types_bss_scan_rsp*, %struct.mwifiex_ie_types_bss_scan_rsp** %14, align 8
  %180 = icmp ne %struct.mwifiex_ie_types_bss_scan_rsp* %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  br label %222

182:                                              ; preds = %178
  %183 = load i64*, i64** %7, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 4
  store i64* %184, i64** %7, align 8
  %185 = load i64, i64* %8, align 8
  %186 = sub i64 %185, 4
  store i64 %186, i64* %8, align 8
  %187 = load %struct.mwifiex_ie_types_bss_scan_info*, %struct.mwifiex_ie_types_bss_scan_info** %15, align 8
  %188 = icmp ne %struct.mwifiex_ie_types_bss_scan_info* %187, null
  br i1 %188, label %189, label %208

189:                                              ; preds = %182
  %190 = load %struct.mwifiex_ie_types_bss_scan_info*, %struct.mwifiex_ie_types_bss_scan_info** %15, align 8
  %191 = getelementptr inbounds %struct.mwifiex_ie_types_bss_scan_info, %struct.mwifiex_ie_types_bss_scan_info* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @le16_to_cpu(i32 %192)
  %194 = sext i32 %193 to i64
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %18, align 4
  %196 = load i32, i32* %18, align 4
  %197 = mul nsw i32 %196, 100
  store i32 %197, i32* %18, align 4
  %198 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %199 = load i32, i32* @INFO, align 4
  %200 = load i32, i32* %18, align 4
  %201 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %198, i32 %199, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %200)
  %202 = load %struct.mwifiex_ie_types_bss_scan_info*, %struct.mwifiex_ie_types_bss_scan_info** %15, align 8
  %203 = getelementptr inbounds %struct.mwifiex_ie_types_bss_scan_info, %struct.mwifiex_ie_types_bss_scan_info* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @le64_to_cpu(i32 %204)
  store i32 %205, i32* %17, align 4
  %206 = load %struct.mwifiex_ie_types_bss_scan_info*, %struct.mwifiex_ie_types_bss_scan_info** %15, align 8
  %207 = getelementptr inbounds %struct.mwifiex_ie_types_bss_scan_info, %struct.mwifiex_ie_types_bss_scan_info* %206, i32 0, i32 0
  store i64* %207, i64** %16, align 8
  br label %209

208:                                              ; preds = %182
  store i64* null, i64** %16, align 8
  br label %209

209:                                              ; preds = %208, %189
  %210 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %211 = load i32, i32* %17, align 4
  %212 = load i64*, i64** %16, align 8
  %213 = load i32, i32* %18, align 4
  %214 = call i32 @mwifiex_parse_single_response_buf(%struct.mwifiex_private* %210, i64** %7, i64* %8, i32 %211, i64* %212, i32 1, i32 %213)
  store i32 %214, i32* %5, align 4
  %215 = load i32, i32* %5, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %209
  br label %223

218:                                              ; preds = %209
  br label %219

219:                                              ; preds = %218
  %220 = load i64, i64* %10, align 8
  %221 = add nsw i64 %220, 1
  store i64 %221, i64* %10, align 8
  br label %64

222:                                              ; preds = %181, %98, %89, %71
  br label %223

223:                                              ; preds = %222, %217, %41
  %224 = load %struct.mwifiex_event_scan_result*, %struct.mwifiex_event_scan_result** %19, align 8
  %225 = getelementptr inbounds %struct.mwifiex_event_scan_result, %struct.mwifiex_event_scan_result* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %223
  %229 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %230 = call i32 @mwifiex_check_next_scan_command(%struct.mwifiex_private* %229)
  br label %231

231:                                              ; preds = %228, %223
  %232 = load i32, i32* %5, align 4
  ret i32 %232
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_dbg_dump(%struct.mwifiex_adapter*, i32, i8*, i8*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @mwifiex_parse_single_response_buf(%struct.mwifiex_private*, i64**, i64*, i32, i64*, i32, i32) #1

declare dso_local i32 @mwifiex_check_next_scan_command(%struct.mwifiex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
