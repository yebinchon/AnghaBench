; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_ongoing_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_test.c_mmc_test_ongoing_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_test_card = type { %struct.TYPE_5__*, %struct.mmc_test_area }
%struct.TYPE_5__ = type { %struct.mmc_host* }
%struct.mmc_host = type { i32 }
%struct.mmc_test_area = type { i32, i32, i32, i32 }
%struct.mmc_test_req = type { %struct.TYPE_6__, i32, %struct.mmc_request }
%struct.TYPE_6__ = type { i32* }
%struct.mmc_request = type { i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@RESULT_UNSUP_CARD = common dso_local global i32 0, align 4
@RESULT_UNSUP_HOST = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@R1_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: timeout waiting for Tran state status %#x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@R1_STATE_TRAN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"%s: Send Status failed: status %#x, error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"%s: %d commands completed during transfer of %u blocks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_test_card*, i32, i32, i32, i32, i32)* @mmc_test_ongoing_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_test_ongoing_transfer(%struct.mmc_test_card* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_test_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mmc_test_req*, align 8
  %15 = alloca %struct.mmc_host*, align 8
  %16 = alloca %struct.mmc_test_area*, align 8
  %17 = alloca %struct.mmc_request*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.mmc_test_card* %0, %struct.mmc_test_card** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %24 = call %struct.mmc_test_req* (...) @mmc_test_req_alloc()
  store %struct.mmc_test_req* %24, %struct.mmc_test_req** %14, align 8
  %25 = load %struct.mmc_test_card*, %struct.mmc_test_card** %8, align 8
  %26 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.mmc_host*, %struct.mmc_host** %28, align 8
  store %struct.mmc_host* %29, %struct.mmc_host** %15, align 8
  %30 = load %struct.mmc_test_card*, %struct.mmc_test_card** %8, align 8
  %31 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %30, i32 0, i32 1
  store %struct.mmc_test_area* %31, %struct.mmc_test_area** %16, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %32 = load %struct.mmc_test_req*, %struct.mmc_test_req** %14, align 8
  %33 = icmp ne %struct.mmc_test_req* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %6
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %278

37:                                               ; preds = %6
  %38 = load %struct.mmc_test_req*, %struct.mmc_test_req** %14, align 8
  %39 = getelementptr inbounds %struct.mmc_test_req, %struct.mmc_test_req* %38, i32 0, i32 2
  store %struct.mmc_request* %39, %struct.mmc_request** %17, align 8
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.mmc_test_req*, %struct.mmc_test_req** %14, align 8
  %44 = getelementptr inbounds %struct.mmc_test_req, %struct.mmc_test_req* %43, i32 0, i32 1
  %45 = load %struct.mmc_request*, %struct.mmc_request** %17, align 8
  %46 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.mmc_request*, %struct.mmc_request** %17, align 8
  %49 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.mmc_test_card*, %struct.mmc_test_card** %8, align 8
  %51 = load %struct.mmc_request*, %struct.mmc_request** %17, align 8
  %52 = load %struct.mmc_test_area*, %struct.mmc_test_area** %16, align 8
  %53 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.mmc_test_area*, %struct.mmc_test_area** %16, align 8
  %56 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.mmc_test_area*, %struct.mmc_test_area** %16, align 8
  %60 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @mmc_test_prepare_mrq(%struct.mmc_test_card* %50, %struct.mmc_request* %51, i32 %54, i32 %57, i32 %58, i32 %61, i32 512, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %47
  %67 = load %struct.mmc_test_area*, %struct.mmc_test_area** %16, align 8
  %68 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load %struct.mmc_request*, %struct.mmc_request** %17, align 8
  %73 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = load %struct.mmc_host*, %struct.mmc_host** %15, align 8
  %78 = call i64 @mmc_host_cmd23(%struct.mmc_host* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @RESULT_UNSUP_CARD, align 4
  br label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @RESULT_UNSUP_HOST, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  store i32 %85, i32* %20, align 4
  br label %274

86:                                               ; preds = %71, %66, %47
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load %struct.mmc_test_card*, %struct.mmc_test_card** %8, align 8
  %91 = load %struct.mmc_request*, %struct.mmc_request** %17, align 8
  %92 = call i32 @mmc_test_start_areq(%struct.mmc_test_card* %90, %struct.mmc_request* %91, %struct.mmc_request* null)
  store i32 %92, i32* %20, align 4
  %93 = load i32, i32* %20, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %274

96:                                               ; preds = %89
  br label %101

97:                                               ; preds = %86
  %98 = load %struct.mmc_host*, %struct.mmc_host** %15, align 8
  %99 = load %struct.mmc_request*, %struct.mmc_request** %17, align 8
  %100 = call i32 @mmc_wait_for_req(%struct.mmc_host* %98, %struct.mmc_request* %99)
  br label %101

101:                                              ; preds = %97, %96
  %102 = load i64, i64* @jiffies, align 8
  %103 = call i64 @msecs_to_jiffies(i32 3000)
  %104 = add i64 %102, %103
  store i64 %104, i64* %18, align 8
  br label %105

105:                                              ; preds = %157, %101
  %106 = load i32, i32* %23, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %23, align 4
  %108 = load %struct.mmc_test_card*, %struct.mmc_test_card** %8, align 8
  %109 = load %struct.mmc_test_req*, %struct.mmc_test_req** %14, align 8
  %110 = getelementptr inbounds %struct.mmc_test_req, %struct.mmc_test_req* %109, i32 0, i32 0
  %111 = call i32 @mmc_test_send_status(%struct.mmc_test_card* %108, %struct.TYPE_6__* %110)
  store i32 %111, i32* %21, align 4
  %112 = load i32, i32* %21, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %105
  br label %159

115:                                              ; preds = %105
  %116 = load %struct.mmc_test_req*, %struct.mmc_test_req** %14, align 8
  %117 = getelementptr inbounds %struct.mmc_test_req, %struct.mmc_test_req* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %22, align 4
  %122 = load i32, i32* %22, align 4
  %123 = load i32, i32* @R1_ERROR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %115
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %21, align 4
  br label %159

129:                                              ; preds = %115
  %130 = load %struct.mmc_host*, %struct.mmc_host** %15, align 8
  %131 = load %struct.mmc_request*, %struct.mmc_request** %17, align 8
  %132 = call i64 @mmc_is_req_done(%struct.mmc_host* %130, %struct.mmc_request* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %159

135:                                              ; preds = %129
  %136 = load i64, i64* @jiffies, align 8
  %137 = load i64, i64* %18, align 8
  %138 = call i32 @time_after(i64 %136, i64 %137)
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* %19, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %135
  %142 = load %struct.mmc_host*, %struct.mmc_host** %15, align 8
  %143 = call i32 @mmc_hostname(%struct.mmc_host* %142)
  %144 = load i32, i32* %22, align 4
  %145 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %143, i32 %144)
  %146 = load i32, i32* @ETIMEDOUT, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %21, align 4
  br label %159

148:                                              ; preds = %135
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %11, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i32, i32* %22, align 4
  %154 = call i64 @R1_CURRENT_STATE(i32 %153)
  %155 = load i64, i64* @R1_STATE_TRAN, align 8
  %156 = icmp ne i64 %154, %155
  br label %157

157:                                              ; preds = %152, %149
  %158 = phi i1 [ false, %149 ], [ %156, %152 ]
  br i1 %158, label %105, label %159

159:                                              ; preds = %157, %141, %134, %126, %114
  %160 = load i32, i32* %13, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load %struct.mmc_test_card*, %struct.mmc_test_card** %8, align 8
  %164 = load %struct.mmc_request*, %struct.mmc_request** %17, align 8
  %165 = call i32 @mmc_test_start_areq(%struct.mmc_test_card* %163, %struct.mmc_request* null, %struct.mmc_request* %164)
  store i32 %165, i32* %20, align 4
  br label %174

166:                                              ; preds = %159
  %167 = load %struct.mmc_test_card*, %struct.mmc_test_card** %8, align 8
  %168 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %167, i32 0, i32 0
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load %struct.mmc_host*, %struct.mmc_host** %170, align 8
  %172 = load %struct.mmc_request*, %struct.mmc_request** %17, align 8
  %173 = call i32 @mmc_wait_for_req_done(%struct.mmc_host* %171, %struct.mmc_request* %172)
  br label %174

174:                                              ; preds = %166, %162
  %175 = load %struct.mmc_request*, %struct.mmc_request** %17, align 8
  %176 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %175, i32 0, i32 1
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %213

181:                                              ; preds = %174
  %182 = load %struct.mmc_request*, %struct.mmc_request** %17, align 8
  %183 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %182, i32 0, i32 1
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %181
  %189 = load %struct.mmc_request*, %struct.mmc_request** %17, align 8
  %190 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %213, label %193

193:                                              ; preds = %188, %181
  %194 = load i32, i32* %20, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %193
  %197 = load %struct.mmc_host*, %struct.mmc_host** %15, align 8
  %198 = load %struct.mmc_request*, %struct.mmc_request** %17, align 8
  %199 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %198, i32 0, i32 1
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @mmc_wait_for_cmd(%struct.mmc_host* %197, i64 %202, i32 0)
  br label %212

204:                                              ; preds = %193
  %205 = load %struct.mmc_host*, %struct.mmc_host** %15, align 8
  %206 = load %struct.mmc_request*, %struct.mmc_request** %17, align 8
  %207 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %206, i32 0, i32 1
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @mmc_wait_for_cmd(%struct.mmc_host* %205, i64 %210, i32 0)
  store i32 %211, i32* %20, align 4
  br label %212

212:                                              ; preds = %204, %196
  br label %213

213:                                              ; preds = %212, %188, %174
  %214 = load i32, i32* %20, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  br label %274

217:                                              ; preds = %213
  %218 = load i32, i32* %21, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %230

220:                                              ; preds = %217
  %221 = load %struct.mmc_test_card*, %struct.mmc_test_card** %8, align 8
  %222 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %221, i32 0, i32 0
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 0
  %225 = load %struct.mmc_host*, %struct.mmc_host** %224, align 8
  %226 = call i32 @mmc_hostname(%struct.mmc_host* %225)
  %227 = load i32, i32* %22, align 4
  %228 = load i32, i32* %21, align 4
  %229 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %226, i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %220, %217
  %231 = load %struct.mmc_test_card*, %struct.mmc_test_card** %8, align 8
  %232 = load %struct.mmc_request*, %struct.mmc_request** %17, align 8
  %233 = call i32 @mmc_test_check_result(%struct.mmc_test_card* %231, %struct.mmc_request* %232)
  store i32 %233, i32* %20, align 4
  %234 = load i32, i32* %20, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %230
  br label %274

237:                                              ; preds = %230
  %238 = load %struct.mmc_test_card*, %struct.mmc_test_card** %8, align 8
  %239 = call i32 @mmc_test_wait_busy(%struct.mmc_test_card* %238)
  store i32 %239, i32* %20, align 4
  %240 = load i32, i32* %20, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  br label %274

243:                                              ; preds = %237
  %244 = load i32, i32* %11, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %268

246:                                              ; preds = %243
  %247 = load %struct.mmc_test_area*, %struct.mmc_test_area** %16, align 8
  %248 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  %251 = shl i32 %250, 9
  %252 = load %struct.mmc_test_area*, %struct.mmc_test_area** %16, align 8
  %253 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp sgt i32 %251, %254
  br i1 %255, label %256, label %268

256:                                              ; preds = %246
  %257 = load %struct.mmc_test_card*, %struct.mmc_test_card** %8, align 8
  %258 = getelementptr inbounds %struct.mmc_test_card, %struct.mmc_test_card* %257, i32 0, i32 0
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = load %struct.mmc_host*, %struct.mmc_host** %260, align 8
  %262 = call i32 @mmc_hostname(%struct.mmc_host* %261)
  %263 = load i32, i32* %23, align 4
  %264 = load %struct.mmc_test_area*, %struct.mmc_test_area** %16, align 8
  %265 = getelementptr inbounds %struct.mmc_test_area, %struct.mmc_test_area* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 (i8*, i32, i32, ...) @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %262, i32 %263, i32 %266)
  br label %268

268:                                              ; preds = %256, %246, %243
  %269 = load i32, i32* %21, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = load i32, i32* %21, align 4
  store i32 %272, i32* %20, align 4
  br label %273

273:                                              ; preds = %271, %268
  br label %274

274:                                              ; preds = %273, %242, %236, %216, %95, %84
  %275 = load %struct.mmc_test_req*, %struct.mmc_test_req** %14, align 8
  %276 = call i32 @kfree(%struct.mmc_test_req* %275)
  %277 = load i32, i32* %20, align 4
  store i32 %277, i32* %7, align 4
  br label %278

278:                                              ; preds = %274, %34
  %279 = load i32, i32* %7, align 4
  ret i32 %279
}

declare dso_local %struct.mmc_test_req* @mmc_test_req_alloc(...) #1

declare dso_local i32 @mmc_test_prepare_mrq(%struct.mmc_test_card*, %struct.mmc_request*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mmc_host_cmd23(%struct.mmc_host*) #1

declare dso_local i32 @mmc_test_start_areq(%struct.mmc_test_card*, %struct.mmc_request*, %struct.mmc_request*) #1

declare dso_local i32 @mmc_wait_for_req(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mmc_test_send_status(%struct.mmc_test_card*, %struct.TYPE_6__*) #1

declare dso_local i64 @mmc_is_req_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @pr_info(i8*, i32, i32, ...) #1

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #1

declare dso_local i64 @R1_CURRENT_STATE(i32) #1

declare dso_local i32 @mmc_wait_for_req_done(%struct.mmc_host*, %struct.mmc_request*) #1

declare dso_local i32 @mmc_wait_for_cmd(%struct.mmc_host*, i64, i32) #1

declare dso_local i32 @mmc_test_check_result(%struct.mmc_test_card*, %struct.mmc_request*) #1

declare dso_local i32 @mmc_test_wait_busy(%struct.mmc_test_card*) #1

declare dso_local i32 @kfree(%struct.mmc_test_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
