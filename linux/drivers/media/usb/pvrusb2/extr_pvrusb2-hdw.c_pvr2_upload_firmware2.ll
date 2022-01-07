; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_upload_firmware2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_upload_firmware2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { %struct.TYPE_2__*, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.firmware = type { i32, i64 }

@pvr2_upload_firmware2.fw_files = internal global [1 x i8*] [i8* inttoptr (i64 128 to i8*)], align 8
@.str = private unnamed_addr constant [22 x i8] c"pvr2_upload_firmware2\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"encoder\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"state_encoder_runok\00", align 1
@FX2CMD_FWPOST1 = common dso_local global i32 0, align 4
@FX2CMD_MEMSEL = common dso_local global i32 0, align 4
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"firmware2 upload prep failed, ret=%d\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"size of %s firmware must be a multiple of %zu bytes\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FIRMWARE_CHUNK_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"failed to allocate memory for firmware2 upload\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PVR2_FIRMWARE_ENDPOINT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"upload of %s : %i / %i \00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"firmware2 upload transfer failure\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"firmware2 upload post-proc failure\00", align 1
@PVR2_ROUTING_SCHEME_GOTVIEW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_upload_firmware2(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  store %struct.firmware* null, %struct.firmware** %4, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %15 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %289

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) @trace_firmware(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %24 = call i32 @ARRAY_SIZE(i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @pvr2_upload_firmware2.fw_files, i64 0, i64 0))
  %25 = call i32 @pvr2_locate_firmware(%struct.pvr2_hdw* %23, %struct.firmware** %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %24, i8** getelementptr inbounds ([1 x i8*], [1 x i8*]* @pvr2_upload_firmware2.fw_files, i64 0, i64 0))
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %2, align 4
  br label %289

30:                                               ; preds = %21
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %32 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %33 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %32, i32 0, i32 4
  store i64 0, i64* %33, align 8
  %34 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %35 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %34, i32 0, i32 3
  %36 = call i32 @del_timer_sync(i32* %35)
  %37 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %38 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %30
  %42 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %43 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %45 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @trace_stbit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %41, %30
  %49 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %50 = call i32 @pvr2_write_register(%struct.pvr2_hdw* %49, i32 72, i32 -1)
  %51 = load i32, i32* %12, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %12, align 4
  %53 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %54 = call i32 @pvr2_hdw_gpio_chg_dir(%struct.pvr2_hdw* %53, i32 -1, i32 136)
  %55 = load i32, i32* %12, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %12, align 4
  %57 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %58 = call i32 @pvr2_hdw_gpio_chg_out(%struct.pvr2_hdw* %57, i32 -1, i32 8)
  %59 = load i32, i32* %12, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %62 = call i32 @pvr2_hdw_cmd_deep_reset(%struct.pvr2_hdw* %61)
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %66 = call i32 @pvr2_write_register(%struct.pvr2_hdw* %65, i32 41060, i32 0)
  %67 = load i32, i32* %12, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %12, align 4
  %69 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %70 = call i32 @pvr2_hdw_gpio_chg_dir(%struct.pvr2_hdw* %69, i32 -1, i32 1032)
  %71 = load i32, i32* %12, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %12, align 4
  %73 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %74 = call i32 @pvr2_hdw_gpio_chg_out(%struct.pvr2_hdw* %73, i32 -1, i32 8)
  %75 = load i32, i32* %12, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %12, align 4
  %77 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %78 = call i32 @pvr2_write_register(%struct.pvr2_hdw* %77, i32 36952, i32 -19)
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  %81 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %82 = call i32 @pvr2_write_register(%struct.pvr2_hdw* %81, i32 36948, i32 -3)
  %83 = load i32, i32* %12, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %12, align 4
  %85 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %86 = call i32 @pvr2_write_register(%struct.pvr2_hdw* %85, i32 2040, i32 -2147481600)
  %87 = load i32, i32* %12, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %12, align 4
  %89 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %90 = call i32 @pvr2_write_register(%struct.pvr2_hdw* %89, i32 2044, i32 26)
  %91 = load i32, i32* %12, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %12, align 4
  %93 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %94 = call i32 @pvr2_write_register(%struct.pvr2_hdw* %93, i32 1792, i32 0)
  %95 = load i32, i32* %12, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %12, align 4
  %97 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %98 = call i32 @pvr2_write_register(%struct.pvr2_hdw* %97, i32 43520, i32 0)
  %99 = load i32, i32* %12, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %12, align 4
  %101 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %102 = call i32 @pvr2_write_register(%struct.pvr2_hdw* %101, i32 43524, i32 358416)
  %103 = load i32, i32* %12, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %12, align 4
  %105 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %106 = call i32 @pvr2_write_register(%struct.pvr2_hdw* %105, i32 43536, i32 1344768)
  %107 = load i32, i32* %12, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %12, align 4
  %109 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %110 = call i32 @pvr2_write_register(%struct.pvr2_hdw* %109, i32 43544, i32 8650752)
  %111 = load i32, i32* %12, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %12, align 4
  %113 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %114 = load i32, i32* @FX2CMD_FWPOST1, align 4
  %115 = call i32 @pvr2_issue_simple_cmd(%struct.pvr2_hdw* %113, i32 %114)
  %116 = load i32, i32* %12, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %12, align 4
  %118 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %119 = load i32, i32* @FX2CMD_MEMSEL, align 4
  %120 = or i32 %119, 256
  %121 = call i32 @pvr2_issue_simple_cmd(%struct.pvr2_hdw* %118, i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %48
  %127 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load %struct.firmware*, %struct.firmware** %4, align 8
  %131 = call i32 @release_firmware(%struct.firmware* %130)
  br label %276

132:                                              ; preds = %48
  %133 = load %struct.firmware*, %struct.firmware** %4, align 8
  %134 = getelementptr inbounds %struct.firmware, %struct.firmware* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = zext i32 %136 to i64
  %138 = urem i64 %137, 4
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %132
  %141 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %142 = load i32, i32* %13, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [1 x i8*], [1 x i8*]* @pvr2_upload_firmware2.fw_files, i64 0, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %141, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i8* %145, i64 4)
  %147 = load %struct.firmware*, %struct.firmware** %4, align 8
  %148 = call i32 @release_firmware(%struct.firmware* %147)
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %12, align 4
  br label %276

151:                                              ; preds = %132
  %152 = load i32, i32* @FIRMWARE_CHUNK_SIZE, align 4
  %153 = load i32, i32* @GFP_KERNEL, align 4
  %154 = call i8* @kmalloc(i32 %152, i32 %153)
  store i8* %154, i8** %5, align 8
  %155 = load i8*, i8** %5, align 8
  %156 = icmp eq i8* %155, null
  br i1 %156, label %157, label %164

157:                                              ; preds = %151
  %158 = load %struct.firmware*, %struct.firmware** %4, align 8
  %159 = call i32 @release_firmware(%struct.firmware* %158)
  %160 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %161 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %160, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %12, align 4
  br label %276

164:                                              ; preds = %151
  %165 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %166 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @PVR2_FIRMWARE_ENDPOINT, align 4
  %169 = call i32 @usb_sndbulkpipe(i32 %167, i32 %168)
  store i32 %169, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %8, align 4
  br label %170

170:                                              ; preds = %234, %164
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ult i32 %171, %172
  br i1 %173, label %174, label %238

174:                                              ; preds = %170
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* %8, align 4
  %177 = sub i32 %175, %176
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* @FIRMWARE_CHUNK_SIZE, align 4
  %180 = icmp ugt i32 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %174
  %182 = load i32, i32* @FIRMWARE_CHUNK_SIZE, align 4
  store i32 %182, i32* %9, align 4
  br label %183

183:                                              ; preds = %181, %174
  %184 = load i8*, i8** %5, align 8
  %185 = load %struct.firmware*, %struct.firmware** %4, align 8
  %186 = getelementptr inbounds %struct.firmware, %struct.firmware* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = zext i32 %188 to i64
  %190 = add nsw i64 %187, %189
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @memcpy(i8* %184, i64 %190, i32 %191)
  store i32 0, i32* %10, align 4
  br label %193

193:                                              ; preds = %211, %183
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %9, align 4
  %196 = udiv i32 %195, 4
  %197 = icmp ult i32 %194, %196
  br i1 %197, label %198, label %214

198:                                              ; preds = %193
  %199 = load i8*, i8** %5, align 8
  %200 = bitcast i8* %199 to i32*
  %201 = load i32, i32* %10, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @swab32(i32 %204)
  %206 = load i8*, i8** %5, align 8
  %207 = bitcast i8* %206 to i32*
  %208 = load i32, i32* %10, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %205, i32* %210, align 4
  br label %211

211:                                              ; preds = %198
  %212 = load i32, i32* %10, align 4
  %213 = add i32 %212, 1
  store i32 %213, i32* %10, align 4
  br label %193

214:                                              ; preds = %193
  %215 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %216 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = load i8*, i8** %5, align 8
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* @HZ, align 4
  %222 = call i32 @usb_bulk_msg(i32 %217, i32 %218, i8* %219, i32 %220, i32* %11, i32 %221)
  %223 = load i32, i32* %12, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %12, align 4
  %225 = load i32, i32* %11, align 4
  %226 = load i32, i32* %9, align 4
  %227 = icmp ne i32 %225, %226
  %228 = zext i1 %227 to i32
  %229 = load i32, i32* %12, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %12, align 4
  %231 = load i32, i32* %12, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %214
  br label %238

234:                                              ; preds = %214
  %235 = load i32, i32* %9, align 4
  %236 = load i32, i32* %8, align 4
  %237 = add i32 %236, %235
  store i32 %237, i32* %8, align 4
  br label %170

238:                                              ; preds = %233, %170
  %239 = load i32, i32* %13, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [1 x i8*], [1 x i8*]* @pvr2_upload_firmware2.fw_files, i64 0, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* %7, align 4
  %245 = call i32 (i8*, ...) @trace_firmware(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %242, i32 %243, i32 %244)
  %246 = load i8*, i8** %5, align 8
  %247 = call i32 @kfree(i8* %246)
  %248 = load %struct.firmware*, %struct.firmware** %4, align 8
  %249 = call i32 @release_firmware(%struct.firmware* %248)
  %250 = load i32, i32* %12, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %238
  %253 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %254 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %253, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %276

255:                                              ; preds = %238
  %256 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %257 = call i32 @pvr2_write_register(%struct.pvr2_hdw* %256, i32 36948, i32 -1)
  %258 = load i32, i32* %12, align 4
  %259 = or i32 %258, %257
  store i32 %259, i32* %12, align 4
  %260 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %261 = call i32 @pvr2_write_register(%struct.pvr2_hdw* %260, i32 36952, i32 -24)
  %262 = load i32, i32* %12, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %12, align 4
  %264 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %265 = load i32, i32* @FX2CMD_MEMSEL, align 4
  %266 = or i32 %265, 256
  %267 = call i32 @pvr2_issue_simple_cmd(%struct.pvr2_hdw* %264, i32 %266)
  %268 = load i32, i32* %12, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %12, align 4
  %270 = load i32, i32* %12, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %255
  %273 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %274 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %273, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %275

275:                                              ; preds = %272, %255
  br label %276

276:                                              ; preds = %275, %252, %157, %140, %126
  %277 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %278 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %277, i32 0, i32 0
  %279 = load %struct.TYPE_2__*, %struct.TYPE_2__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @PVR2_ROUTING_SCHEME_GOTVIEW, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %287

284:                                              ; preds = %276
  %285 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %286 = call i32 @pvr2_hdw_gpio_chg_dir(%struct.pvr2_hdw* %285, i32 2048, i32 -1)
  br label %287

287:                                              ; preds = %284, %276
  %288 = load i32, i32* %12, align 4
  store i32 %288, i32* %2, align 4
  br label %289

289:                                              ; preds = %287, %28, %20
  %290 = load i32, i32* %2, align 4
  ret i32 %290
}

declare dso_local i32 @trace_firmware(i8*, ...) #1

declare dso_local i32 @pvr2_locate_firmware(%struct.pvr2_hdw*, %struct.firmware**, i8*, i32, i8**) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @trace_stbit(i8*, i64) #1

declare dso_local i32 @pvr2_write_register(%struct.pvr2_hdw*, i32, i32) #1

declare dso_local i32 @pvr2_hdw_gpio_chg_dir(%struct.pvr2_hdw*, i32, i32) #1

declare dso_local i32 @pvr2_hdw_gpio_chg_out(%struct.pvr2_hdw*, i32, i32) #1

declare dso_local i32 @pvr2_hdw_cmd_deep_reset(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_issue_simple_cmd(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @swab32(i32) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
