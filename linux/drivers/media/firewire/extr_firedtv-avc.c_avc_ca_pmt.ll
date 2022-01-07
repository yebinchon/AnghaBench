; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_ca_pmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-avc.c_avc_ca_pmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, i32, i32, i32, i64 }
%struct.avc_command_frame = type { i32, i32*, i32, i32 }
%struct.avc_response_frame = type { i32 }

@avc_debug = common dso_local global i32 0, align 4
@AVC_DEBUG_APPLICATION_PMT = common dso_local global i32 0, align 4
@AVC_CTYPE_CONTROL = common dso_local global i32 0, align 4
@AVC_SUBUNIT_TYPE_TUNER = common dso_local global i32 0, align 4
@AVC_OPCODE_VENDOR = common dso_local global i32 0, align 4
@EN50221_LIST_MANAGEMENT_ONLY = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [33 x i8] c"forcing list_management to ONLY\0A\00", align 1
@SFE_VENDOR_DE_COMPANYID_0 = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_1 = common dso_local global i32 0, align 4
@SFE_VENDOR_DE_COMPANYID_2 = common dso_local global i32 0, align 4
@SFE_VENDOR_OPCODE_HOST2CA = common dso_local global i32 0, align 4
@SFE_VENDOR_TAG_CA_PMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid pmt_cmd_id %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"invalid pmt_cmd_id %d at stream level\0A\00", align 1
@AVC_RESPONSE_ACCEPTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"CA PMT failed with response 0x%x\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_ca_pmt(%struct.firedtv* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.firedtv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.avc_command_frame*, align 8
  %8 = alloca %struct.avc_response_frame*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %18 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = bitcast i8* %20 to %struct.avc_command_frame*
  store %struct.avc_command_frame* %21, %struct.avc_command_frame** %7, align 8
  %22 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %23 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.avc_response_frame*
  store %struct.avc_response_frame* %26, %struct.avc_response_frame** %8, align 8
  %27 = load i32, i32* @avc_debug, align 4
  %28 = load i32, i32* @AVC_DEBUG_APPLICATION_PMT, align 4
  %29 = and i32 %27, %28
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @debug_pmt(i8* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %3
  %37 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %38 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load i32, i32* @AVC_CTYPE_CONTROL, align 4
  %41 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %42 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @AVC_SUBUNIT_TYPE_TUNER, align 4
  %44 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %45 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %43, %46
  %48 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %49 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @AVC_OPCODE_VENDOR, align 4
  %51 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %52 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = load i8, i8* @EN50221_LIST_MANAGEMENT_ONLY, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %36
  %61 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %62 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @dev_info(i32 %63, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %65 = load i8, i8* @EN50221_LIST_MANAGEMENT_ONLY, align 1
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  store i8 %65, i8* %67, align 1
  br label %68

68:                                               ; preds = %60, %36
  %69 = load i8*, i8** %5, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  store i32 %72, i32* %9, align 4
  %73 = load i8*, i8** %5, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 4
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = and i32 %76, 15
  %78 = shl i32 %77, 8
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 5
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = add nsw i32 %78, %82
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %68
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %86, %68
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 6
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_0, align 4
  %95 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %96 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  store i32 %94, i32* %98, align 4
  %99 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_1, align 4
  %100 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %101 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %99, i32* %103, align 4
  %104 = load i32, i32* @SFE_VENDOR_DE_COMPANYID_2, align 4
  %105 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %106 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  store i32 %104, i32* %108, align 4
  %109 = load i32, i32* @SFE_VENDOR_OPCODE_HOST2CA, align 4
  %110 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %111 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  store i32 %109, i32* %113, align 4
  %114 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %115 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 4
  store i32 0, i32* %117, align 4
  %118 = load i32, i32* @SFE_VENDOR_TAG_CA_PMT, align 4
  %119 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %120 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 5
  store i32 %118, i32* %122, align 4
  %123 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %124 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 6
  store i32 0, i32* %126, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %129 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 10
  store i32 %127, i32* %131, align 4
  %132 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %133 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 11
  store i32 1, i32* %135, align 4
  %136 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %137 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 12
  store i32 2, i32* %139, align 4
  %140 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %141 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %140, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 13
  store i32 128, i32* %143, align 4
  %144 = load i8*, i8** %5, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %149 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 15
  store i32 %147, i32* %151, align 4
  %152 = load i8*, i8** %5, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 2
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %157 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 16
  store i32 %155, i32* %159, align 4
  %160 = load i8*, i8** %5, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 3
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %165 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 17
  store i32 %163, i32* %167, align 4
  %168 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %169 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 18
  store i32 0, i32* %171, align 4
  %172 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %173 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 19
  store i32 0, i32* %175, align 4
  %176 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %177 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %176, i32 0, i32 1
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 20
  store i32 31, i32* %179, align 4
  %180 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %181 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 21
  store i32 255, i32* %183, align 4
  %184 = load i32, i32* %10, align 4
  %185 = ashr i32 %184, 8
  %186 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %187 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 22
  store i32 %185, i32* %189, align 4
  %190 = load i32, i32* %10, align 4
  %191 = and i32 %190, 255
  %192 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %193 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 23
  store i32 %191, i32* %195, align 4
  store i32 6, i32* %12, align 4
  store i32 24, i32* %13, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %246

198:                                              ; preds = %89
  %199 = load i8*, i8** %5, align 8
  %200 = load i32, i32* %12, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %12, align 4
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i8, i8* %199, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  store i32 %205, i32* %11, align 4
  %206 = load i32, i32* %11, align 4
  %207 = icmp ne i32 %206, 1
  br i1 %207, label %208, label %217

208:                                              ; preds = %198
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 4
  br i1 %210, label %211, label %217

211:                                              ; preds = %208
  %212 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %213 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %11, align 4
  %216 = call i32 @dev_err(i32 %214, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %211, %208, %198
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = load i32, i32* %13, align 4
  %221 = sext i32 %220 to i64
  %222 = sub i64 4, %221
  %223 = icmp ugt i64 %219, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %217
  %225 = load i32, i32* @EINVAL, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %16, align 4
  br label %495

227:                                              ; preds = %217
  %228 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %229 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i8*, i8** %5, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %234, i64 %236
  %238 = load i32, i32* %10, align 4
  %239 = call i32 @memcpy(i32* %233, i8* %237, i32 %238)
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %12, align 4
  %242 = add nsw i32 %241, %240
  store i32 %242, i32* %12, align 4
  %243 = load i32, i32* %10, align 4
  %244 = load i32, i32* %13, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %13, align 4
  br label %246

246:                                              ; preds = %227, %89
  br label %247

247:                                              ; preds = %386, %246
  %248 = load i32, i32* %12, align 4
  %249 = load i32, i32* %6, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %387

251:                                              ; preds = %247
  %252 = load i8*, i8** %5, align 8
  %253 = load i32, i32* %12, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %12, align 4
  %255 = sext i32 %253 to i64
  %256 = getelementptr inbounds i8, i8* %252, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = sext i8 %257 to i32
  %259 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %260 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %13, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %13, align 4
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  store i32 %258, i32* %265, align 4
  %266 = load i8*, i8** %5, align 8
  %267 = load i32, i32* %12, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %12, align 4
  %269 = sext i32 %267 to i64
  %270 = getelementptr inbounds i8, i8* %266, i64 %269
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %274 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %273, i32 0, i32 1
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %13, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %13, align 4
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i32, i32* %275, i64 %278
  store i32 %272, i32* %279, align 4
  %280 = load i8*, i8** %5, align 8
  %281 = load i32, i32* %12, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %12, align 4
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i8, i8* %280, i64 %283
  %285 = load i8, i8* %284, align 1
  %286 = sext i8 %285 to i32
  %287 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %288 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %13, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %13, align 4
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds i32, i32* %289, i64 %292
  store i32 %286, i32* %293, align 4
  %294 = load i8*, i8** %5, align 8
  %295 = load i32, i32* %12, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %294, i64 %296
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = and i32 %299, 15
  %301 = shl i32 %300, 8
  %302 = load i8*, i8** %5, align 8
  %303 = load i32, i32* %12, align 4
  %304 = add nsw i32 %303, 1
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i8, i8* %302, i64 %305
  %307 = load i8, i8* %306, align 1
  %308 = sext i8 %307 to i32
  %309 = add nsw i32 %301, %308
  store i32 %309, i32* %14, align 4
  %310 = load i32, i32* %12, align 4
  %311 = add nsw i32 %310, 2
  store i32 %311, i32* %12, align 4
  %312 = load i32, i32* %14, align 4
  %313 = icmp sgt i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %251
  %315 = load i32, i32* %14, align 4
  %316 = add nsw i32 %315, -1
  store i32 %316, i32* %14, align 4
  br label %317

317:                                              ; preds = %314, %251
  %318 = load i32, i32* %14, align 4
  %319 = ashr i32 %318, 8
  %320 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %321 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %320, i32 0, i32 1
  %322 = load i32*, i32** %321, align 8
  %323 = load i32, i32* %13, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %13, align 4
  %325 = sext i32 %323 to i64
  %326 = getelementptr inbounds i32, i32* %322, i64 %325
  store i32 %319, i32* %326, align 4
  %327 = load i32, i32* %14, align 4
  %328 = and i32 %327, 255
  %329 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %330 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %329, i32 0, i32 1
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %13, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %13, align 4
  %334 = sext i32 %332 to i64
  %335 = getelementptr inbounds i32, i32* %331, i64 %334
  store i32 %328, i32* %335, align 4
  %336 = load i32, i32* %14, align 4
  %337 = icmp sgt i32 %336, 0
  br i1 %337, label %338, label %386

338:                                              ; preds = %317
  %339 = load i8*, i8** %5, align 8
  %340 = load i32, i32* %12, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %12, align 4
  %342 = sext i32 %340 to i64
  %343 = getelementptr inbounds i8, i8* %339, i64 %342
  %344 = load i8, i8* %343, align 1
  %345 = sext i8 %344 to i32
  store i32 %345, i32* %11, align 4
  %346 = load i32, i32* %11, align 4
  %347 = icmp ne i32 %346, 1
  br i1 %347, label %348, label %357

348:                                              ; preds = %338
  %349 = load i32, i32* %11, align 4
  %350 = icmp ne i32 %349, 4
  br i1 %350, label %351, label %357

351:                                              ; preds = %348
  %352 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %353 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* %11, align 4
  %356 = call i32 @dev_err(i32 %354, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %355)
  br label %357

357:                                              ; preds = %351, %348, %338
  %358 = load i32, i32* %14, align 4
  %359 = sext i32 %358 to i64
  %360 = load i32, i32* %13, align 4
  %361 = sext i32 %360 to i64
  %362 = sub i64 4, %361
  %363 = icmp ugt i64 %359, %362
  br i1 %363, label %364, label %367

364:                                              ; preds = %357
  %365 = load i32, i32* @EINVAL, align 4
  %366 = sub nsw i32 0, %365
  store i32 %366, i32* %16, align 4
  br label %495

367:                                              ; preds = %357
  %368 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %369 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %368, i32 0, i32 1
  %370 = load i32*, i32** %369, align 8
  %371 = load i32, i32* %13, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i32, i32* %370, i64 %372
  %374 = load i8*, i8** %5, align 8
  %375 = load i32, i32* %12, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i8, i8* %374, i64 %376
  %378 = load i32, i32* %14, align 4
  %379 = call i32 @memcpy(i32* %373, i8* %377, i32 %378)
  %380 = load i32, i32* %14, align 4
  %381 = load i32, i32* %12, align 4
  %382 = add nsw i32 %381, %380
  store i32 %382, i32* %12, align 4
  %383 = load i32, i32* %14, align 4
  %384 = load i32, i32* %13, align 4
  %385 = add nsw i32 %384, %383
  store i32 %385, i32* %13, align 4
  br label %386

386:                                              ; preds = %367, %317
  br label %247

387:                                              ; preds = %247
  %388 = load i32, i32* %13, align 4
  %389 = add nsw i32 %388, 4
  store i32 %389, i32* %13, align 4
  %390 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %391 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %390, i32 0, i32 1
  %392 = load i32*, i32** %391, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 7
  store i32 130, i32* %393, align 4
  %394 = load i32, i32* %13, align 4
  %395 = sub nsw i32 %394, 10
  %396 = ashr i32 %395, 8
  %397 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %398 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %397, i32 0, i32 1
  %399 = load i32*, i32** %398, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 8
  store i32 %396, i32* %400, align 4
  %401 = load i32, i32* %13, align 4
  %402 = sub nsw i32 %401, 10
  %403 = and i32 %402, 255
  %404 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %405 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %404, i32 0, i32 1
  %406 = load i32*, i32** %405, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 9
  store i32 %403, i32* %407, align 4
  %408 = load i32, i32* %13, align 4
  %409 = sub nsw i32 %408, 15
  %410 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %411 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %410, i32 0, i32 1
  %412 = load i32*, i32** %411, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 14
  store i32 %409, i32* %413, align 4
  %414 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %415 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %414, i32 0, i32 1
  %416 = load i32*, i32** %415, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 10
  %418 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %419 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %418, i32 0, i32 1
  %420 = load i32*, i32** %419, align 8
  %421 = getelementptr inbounds i32, i32* %420, i64 12
  %422 = load i32, i32* %421, align 4
  %423 = sub nsw i32 %422, 1
  %424 = call i32 @crc32_be(i32 0, i32* %417, i32 %423)
  store i32 %424, i32* %15, align 4
  %425 = load i32, i32* %15, align 4
  %426 = ashr i32 %425, 24
  %427 = and i32 %426, 255
  %428 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %429 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %428, i32 0, i32 1
  %430 = load i32*, i32** %429, align 8
  %431 = load i32, i32* %13, align 4
  %432 = sub nsw i32 %431, 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %430, i64 %433
  store i32 %427, i32* %434, align 4
  %435 = load i32, i32* %15, align 4
  %436 = ashr i32 %435, 16
  %437 = and i32 %436, 255
  %438 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %439 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %438, i32 0, i32 1
  %440 = load i32*, i32** %439, align 8
  %441 = load i32, i32* %13, align 4
  %442 = sub nsw i32 %441, 3
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %440, i64 %443
  store i32 %437, i32* %444, align 4
  %445 = load i32, i32* %15, align 4
  %446 = ashr i32 %445, 8
  %447 = and i32 %446, 255
  %448 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %449 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %448, i32 0, i32 1
  %450 = load i32*, i32** %449, align 8
  %451 = load i32, i32* %13, align 4
  %452 = sub nsw i32 %451, 2
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds i32, i32* %450, i64 %453
  store i32 %447, i32* %454, align 4
  %455 = load i32, i32* %15, align 4
  %456 = ashr i32 %455, 0
  %457 = and i32 %456, 255
  %458 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %459 = getelementptr inbounds %struct.avc_command_frame, %struct.avc_command_frame* %458, i32 0, i32 1
  %460 = load i32*, i32** %459, align 8
  %461 = load i32, i32* %13, align 4
  %462 = sub nsw i32 %461, 1
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i32, i32* %460, i64 %463
  store i32 %457, i32* %464, align 4
  %465 = load %struct.avc_command_frame*, %struct.avc_command_frame** %7, align 8
  %466 = load i32, i32* %13, align 4
  %467 = call i32 @pad_operands(%struct.avc_command_frame* %465, i32 %466)
  %468 = load i32, i32* %13, align 4
  %469 = add nsw i32 3, %468
  %470 = call i32 @ALIGN(i32 %469, i32 4)
  %471 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %472 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %471, i32 0, i32 3
  store i32 %470, i32* %472, align 4
  %473 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %474 = call i32 @avc_write(%struct.firedtv* %473)
  store i32 %474, i32* %16, align 4
  %475 = load i32, i32* %16, align 4
  %476 = icmp slt i32 %475, 0
  br i1 %476, label %477, label %478

477:                                              ; preds = %387
  br label %495

478:                                              ; preds = %387
  %479 = load %struct.avc_response_frame*, %struct.avc_response_frame** %8, align 8
  %480 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 4
  %482 = load i32, i32* @AVC_RESPONSE_ACCEPTED, align 4
  %483 = icmp ne i32 %481, %482
  br i1 %483, label %484, label %494

484:                                              ; preds = %478
  %485 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %486 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %485, i32 0, i32 2
  %487 = load i32, i32* %486, align 8
  %488 = load %struct.avc_response_frame*, %struct.avc_response_frame** %8, align 8
  %489 = getelementptr inbounds %struct.avc_response_frame, %struct.avc_response_frame* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 4
  %491 = call i32 @dev_err(i32 %487, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %490)
  %492 = load i32, i32* @EACCES, align 4
  %493 = sub nsw i32 0, %492
  store i32 %493, i32* %16, align 4
  br label %494

494:                                              ; preds = %484, %478
  br label %495

495:                                              ; preds = %494, %477, %364, %224
  %496 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %497 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %496, i32 0, i32 1
  %498 = call i32 @mutex_unlock(i32* %497)
  %499 = load i32, i32* %16, align 4
  ret i32 %499
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @debug_pmt(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @crc32_be(i32, i32*, i32) #1

declare dso_local i32 @pad_operands(%struct.avc_command_frame*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @avc_write(%struct.firedtv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
