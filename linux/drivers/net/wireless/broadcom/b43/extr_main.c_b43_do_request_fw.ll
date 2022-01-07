; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_do_request_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_do_request_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_request_fw_context = type { i32, i8*, %struct.TYPE_7__*, i32*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.b43_firmware_file = type { i8*, i32, %struct.TYPE_7__* }
%struct.b43_fw_header = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"b43%s/%s.fw\00", align 1
@modparam_fwpostfix = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"b43-open%s/%s.fw\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@b43_fw_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Unable to load firmware\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Firmware file \22%s\22 not found\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Firmware file \22%s\22 request failed (err=%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"Firmware file \22%s\22 format error.\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_do_request_fw(%struct.b43_request_fw_context* %0, i8* %1, %struct.b43_firmware_file* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43_request_fw_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.b43_firmware_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.b43_fw_header*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.b43_request_fw_context* %0, %struct.b43_request_fw_context** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.b43_firmware_file* %2, %struct.b43_firmware_file** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load %struct.b43_firmware_file*, %struct.b43_firmware_file** %8, align 8
  %17 = call i32 @b43_do_release_fw(%struct.b43_firmware_file* %16)
  store i32 0, i32* %5, align 4
  br label %243

18:                                               ; preds = %4
  %19 = load %struct.b43_firmware_file*, %struct.b43_firmware_file** %8, align 8
  %20 = getelementptr inbounds %struct.b43_firmware_file, %struct.b43_firmware_file* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load %struct.b43_firmware_file*, %struct.b43_firmware_file** %8, align 8
  %25 = getelementptr inbounds %struct.b43_firmware_file, %struct.b43_firmware_file* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %28 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %23
  %32 = load %struct.b43_firmware_file*, %struct.b43_firmware_file** %8, align 8
  %33 = getelementptr inbounds %struct.b43_firmware_file, %struct.b43_firmware_file* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i64 @strcmp(i8* %34, i8* %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %243

39:                                               ; preds = %31, %23
  %40 = load %struct.b43_firmware_file*, %struct.b43_firmware_file** %8, align 8
  %41 = call i32 @b43_do_release_fw(%struct.b43_firmware_file* %40)
  br label %42

42:                                               ; preds = %39, %18
  %43 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %44 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %60 [
    i32 131, label %46
    i32 132, label %53
  ]

46:                                               ; preds = %42
  %47 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %48 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** @modparam_fwpostfix, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %49, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %50, i8* %51)
  br label %64

53:                                               ; preds = %42
  %54 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %55 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** @modparam_fwpostfix, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %56, i32 8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %58)
  br label %64

60:                                               ; preds = %42
  %61 = call i32 @B43_WARN_ON(i32 1)
  %62 = load i32, i32* @ENOSYS, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %243

64:                                               ; preds = %53, %46
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %105

67:                                               ; preds = %64
  %68 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %69 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %68, i32 0, i32 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = call i32 @init_completion(i32* %71)
  %73 = load i32, i32* @THIS_MODULE, align 4
  %74 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %75 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %78 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %77, i32 0, i32 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %86 = load i32, i32* @b43_fw_cb, align 4
  %87 = call i32 @request_firmware_nowait(i32 %73, i32 1, i8* %76, i32 %83, i32 %84, %struct.b43_request_fw_context* %85, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %67
  %91 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %5, align 4
  br label %243

93:                                               ; preds = %67
  %94 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %95 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %94, i32 0, i32 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = call i32 @wait_for_completion(i32* %97)
  %99 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %100 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %99, i32 0, i32 2
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = icmp ne %struct.TYPE_7__* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %163

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %64
  %106 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %107 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %106, i32 0, i32 2
  %108 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %109 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %112 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %111, i32 0, i32 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @request_firmware(%struct.TYPE_7__** %107, i8* %110, i32 %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @ENOENT, align 4
  %121 = sub nsw i32 0, %120
  %122 = icmp eq i32 %119, %121
  br i1 %122, label %123, label %140

123:                                              ; preds = %105
  %124 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %125 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %128 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %126, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  %135 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %136 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %134, i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %137)
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %5, align 4
  br label %243

140:                                              ; preds = %105
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %140
  %144 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %145 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %148 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %146, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = inttoptr i64 %153 to i8*
  %155 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %156 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %154, i32 4, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %157, i32 %158)
  %160 = load i32, i32* %12, align 4
  store i32 %160, i32* %5, align 4
  br label %243

161:                                              ; preds = %140
  br label %162

162:                                              ; preds = %161
  br label %163

163:                                              ; preds = %162, %103
  %164 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %165 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %164, i32 0, i32 2
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = icmp ult i64 %169, 12
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  br label %221

172:                                              ; preds = %163
  %173 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %174 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %173, i32 0, i32 2
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to %struct.b43_fw_header*
  store %struct.b43_fw_header* %178, %struct.b43_fw_header** %10, align 8
  %179 = load %struct.b43_fw_header*, %struct.b43_fw_header** %10, align 8
  %180 = getelementptr inbounds %struct.b43_fw_header, %struct.b43_fw_header* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  switch i32 %181, label %206 [
    i32 128, label %182
    i32 129, label %182
    i32 130, label %199
  ]

182:                                              ; preds = %172, %172
  %183 = load %struct.b43_fw_header*, %struct.b43_fw_header** %10, align 8
  %184 = getelementptr inbounds %struct.b43_fw_header, %struct.b43_fw_header* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @be32_to_cpu(i32 %185)
  store i32 %186, i32* %11, align 4
  %187 = load i32, i32* %11, align 4
  %188 = sext i32 %187 to i64
  %189 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %190 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %189, i32 0, i32 2
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = sext i32 %193 to i64
  %195 = sub i64 %194, 12
  %196 = icmp ne i64 %188, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %182
  br label %221

198:                                              ; preds = %182
  br label %199

199:                                              ; preds = %172, %198
  %200 = load %struct.b43_fw_header*, %struct.b43_fw_header** %10, align 8
  %201 = getelementptr inbounds %struct.b43_fw_header, %struct.b43_fw_header* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 1
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %221

205:                                              ; preds = %199
  br label %207

206:                                              ; preds = %172
  br label %221

207:                                              ; preds = %205
  %208 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %209 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %208, i32 0, i32 2
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %209, align 8
  %211 = load %struct.b43_firmware_file*, %struct.b43_firmware_file** %8, align 8
  %212 = getelementptr inbounds %struct.b43_firmware_file, %struct.b43_firmware_file* %211, i32 0, i32 2
  store %struct.TYPE_7__* %210, %struct.TYPE_7__** %212, align 8
  %213 = load i8*, i8** %7, align 8
  %214 = load %struct.b43_firmware_file*, %struct.b43_firmware_file** %8, align 8
  %215 = getelementptr inbounds %struct.b43_firmware_file, %struct.b43_firmware_file* %214, i32 0, i32 0
  store i8* %213, i8** %215, align 8
  %216 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %217 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.b43_firmware_file*, %struct.b43_firmware_file** %8, align 8
  %220 = getelementptr inbounds %struct.b43_firmware_file, %struct.b43_firmware_file* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 8
  store i32 0, i32* %5, align 4
  br label %243

221:                                              ; preds = %206, %204, %197, %171
  %222 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %223 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %222, i32 0, i32 3
  %224 = load i32*, i32** %223, align 8
  %225 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %226 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %224, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = inttoptr i64 %231 to i8*
  %233 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %234 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %232, i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i8* %235)
  %237 = load %struct.b43_request_fw_context*, %struct.b43_request_fw_context** %6, align 8
  %238 = getelementptr inbounds %struct.b43_request_fw_context, %struct.b43_request_fw_context* %237, i32 0, i32 2
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %238, align 8
  %240 = call i32 @release_firmware(%struct.TYPE_7__* %239)
  %241 = load i32, i32* @EPROTO, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %5, align 4
  br label %243

243:                                              ; preds = %221, %207, %143, %123, %90, %60, %38, %15
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

declare dso_local i32 @b43_do_release_fw(%struct.b43_firmware_file*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32, i32, %struct.b43_request_fw_context*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @request_firmware(%struct.TYPE_7__**, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @release_firmware(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
