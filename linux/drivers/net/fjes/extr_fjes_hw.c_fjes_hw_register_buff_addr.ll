; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_register_buff_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_register_buff_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_hw = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, %union.fjes_device_command_res*, %union.fjes_device_command_res* }
%union.fjes_device_command_res = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32, i32*, i32 }
%struct.ep_share_mem_info = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%union.fjes_device_command_req = type { %struct.TYPE_7__ }

@EP_BUFFER_INFO_SIZE = common dso_local global i32 0, align 4
@FJES_CMD_REQ_SHARE_BUFFER = common dso_local global i32 0, align 4
@FJES_COMMAND_REQ_BUFF_TIMEOUT = common dso_local global i32 0, align 4
@FJES_CMD_STATUS_NORMAL = common dso_local global i32 0, align 4
@FJES_DEV_COMMAND_SHARE_BUFFER_RES_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"Invalid res_buf\00", align 1
@ENOMSG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Busy Timeout\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Timeout\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fjes_hw_register_buff_addr(%struct.fjes_hw* %0, i32 %1, %struct.ep_share_mem_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fjes_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ep_share_mem_info*, align 8
  %8 = alloca %union.fjes_device_command_req*, align 8
  %9 = alloca %union.fjes_device_command_res*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.fjes_hw* %0, %struct.fjes_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ep_share_mem_info* %2, %struct.ep_share_mem_info** %7, align 8
  %17 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %18 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 4
  %20 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %19, align 8
  %21 = bitcast %union.fjes_device_command_res* %20 to %union.fjes_device_command_req*
  store %union.fjes_device_command_req* %21, %union.fjes_device_command_req** %8, align 8
  %22 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %23 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 3
  %25 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %24, align 8
  store %union.fjes_device_command_res* %25, %union.fjes_device_command_res** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %28 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = call i64 @test_bit(i32 %26, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %285

33:                                               ; preds = %3
  %34 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %8, align 8
  %35 = bitcast %union.fjes_device_command_req* %34 to %union.fjes_device_command_res*
  %36 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %37 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @memset(%union.fjes_device_command_res* %35, i32 0, i32 %39)
  %41 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %9, align 8
  %42 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %43 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @memset(%union.fjes_device_command_res* %41, i32 0, i32 %45)
  %47 = load %struct.ep_share_mem_info*, %struct.ep_share_mem_info** %7, align 8
  %48 = getelementptr inbounds %struct.ep_share_mem_info, %struct.ep_share_mem_info* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ep_share_mem_info*, %struct.ep_share_mem_info** %7, align 8
  %52 = getelementptr inbounds %struct.ep_share_mem_info, %struct.ep_share_mem_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @FJES_DEV_COMMAND_SHARE_BUFFER_REQ_LEN(i32 %50, i32 %54)
  %56 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %8, align 8
  %57 = bitcast %union.fjes_device_command_req* %56 to %struct.TYPE_7__*
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %8, align 8
  %61 = bitcast %union.fjes_device_command_req* %60 to %struct.TYPE_7__*
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 8
  store i32 0, i32* %14, align 4
  %63 = load %struct.ep_share_mem_info*, %struct.ep_share_mem_info** %7, align 8
  %64 = getelementptr inbounds %struct.ep_share_mem_info, %struct.ep_share_mem_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %8, align 8
  %68 = bitcast %union.fjes_device_command_req* %67 to %struct.TYPE_7__*
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %14, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %14, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  store i32 %66, i32* %74, align 4
  %75 = load %struct.ep_share_mem_info*, %struct.ep_share_mem_info** %7, align 8
  %76 = getelementptr inbounds %struct.ep_share_mem_info, %struct.ep_share_mem_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @EP_BUFFER_INFO_SIZE, align 4
  %80 = sdiv i32 %78, %79
  store i32 %80, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %113, %33
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %11, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %116

85:                                               ; preds = %81
  %86 = load %struct.ep_share_mem_info*, %struct.ep_share_mem_info** %7, align 8
  %87 = getelementptr inbounds %struct.ep_share_mem_info, %struct.ep_share_mem_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @EP_BUFFER_INFO_SIZE, align 4
  %93 = mul nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = bitcast i32* %95 to i8*
  store i8* %96, i8** %15, align 8
  %97 = load i8*, i8** %15, align 8
  %98 = call i32 @vmalloc_to_page(i8* %97)
  %99 = call i64 @page_to_phys(i32 %98)
  %100 = load i8*, i8** %15, align 8
  %101 = call i64 @offset_in_page(i8* %100)
  %102 = add nsw i64 %99, %101
  %103 = inttoptr i64 %102 to i8*
  %104 = ptrtoint i8* %103 to i32
  %105 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %8, align 8
  %106 = bitcast %union.fjes_device_command_req* %105 to %struct.TYPE_7__*
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %14, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %104, i32* %112, align 4
  br label %113

113:                                              ; preds = %85
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %81

116:                                              ; preds = %81
  %117 = load %struct.ep_share_mem_info*, %struct.ep_share_mem_info** %7, align 8
  %118 = getelementptr inbounds %struct.ep_share_mem_info, %struct.ep_share_mem_info* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %8, align 8
  %122 = bitcast %union.fjes_device_command_req* %121 to %struct.TYPE_7__*
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %14, align 4
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i32, i32* %124, i64 %127
  store i32 %120, i32* %128, align 4
  %129 = load %struct.ep_share_mem_info*, %struct.ep_share_mem_info** %7, align 8
  %130 = getelementptr inbounds %struct.ep_share_mem_info, %struct.ep_share_mem_info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @EP_BUFFER_INFO_SIZE, align 4
  %134 = sdiv i32 %132, %133
  store i32 %134, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %135

135:                                              ; preds = %167, %116
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %11, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %170

139:                                              ; preds = %135
  %140 = load %struct.ep_share_mem_info*, %struct.ep_share_mem_info** %7, align 8
  %141 = getelementptr inbounds %struct.ep_share_mem_info, %struct.ep_share_mem_info* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i32*
  %145 = load i32, i32* %13, align 4
  %146 = load i32, i32* @EP_BUFFER_INFO_SIZE, align 4
  %147 = mul nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  %150 = bitcast i32* %149 to i8*
  store i8* %150, i8** %15, align 8
  %151 = load i8*, i8** %15, align 8
  %152 = call i32 @vmalloc_to_page(i8* %151)
  %153 = call i64 @page_to_phys(i32 %152)
  %154 = load i8*, i8** %15, align 8
  %155 = call i64 @offset_in_page(i8* %154)
  %156 = add nsw i64 %153, %155
  %157 = inttoptr i64 %156 to i8*
  %158 = ptrtoint i8* %157 to i32
  %159 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %8, align 8
  %160 = bitcast %union.fjes_device_command_req* %159 to %struct.TYPE_7__*
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i32, i32* %162, i64 %165
  store i32 %158, i32* %166, align 4
  br label %167

167:                                              ; preds = %139
  %168 = load i32, i32* %13, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %13, align 4
  br label %135

170:                                              ; preds = %135
  %171 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %9, align 8
  %172 = bitcast %union.fjes_device_command_res* %171 to %struct.TYPE_7__*
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  store i64 0, i64* %173, align 8
  %174 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %9, align 8
  %175 = bitcast %union.fjes_device_command_res* %174 to %struct.TYPE_7__*
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 3
  store i32 0, i32* %176, align 8
  %177 = load %union.fjes_device_command_req*, %union.fjes_device_command_req** %8, align 8
  %178 = bitcast %union.fjes_device_command_req* %177 to %union.fjes_device_command_res*
  %179 = load %struct.ep_share_mem_info*, %struct.ep_share_mem_info** %7, align 8
  %180 = call i32 @trace_fjes_hw_register_buff_addr_req(%union.fjes_device_command_res* %178, %struct.ep_share_mem_info* %179)
  %181 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %182 = load i32, i32* @FJES_CMD_REQ_SHARE_BUFFER, align 4
  %183 = call i32 @fjes_hw_issue_request_command(%struct.fjes_hw* %181, i32 %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* @FJES_COMMAND_REQ_BUFF_TIMEOUT, align 4
  %185 = mul nsw i32 %184, 1000
  store i32 %185, i32* %12, align 4
  br label %186

186:                                              ; preds = %208, %170
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* @FJES_CMD_STATUS_NORMAL, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %206

190:                                              ; preds = %186
  %191 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %9, align 8
  %192 = bitcast %union.fjes_device_command_res* %191 to %struct.TYPE_7__*
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @FJES_DEV_COMMAND_SHARE_BUFFER_RES_LEN, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %190
  %198 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %9, align 8
  %199 = bitcast %union.fjes_device_command_res* %198 to %struct.TYPE_7__*
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 133
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = load i32, i32* %12, align 4
  %205 = icmp sgt i32 %204, 0
  br label %206

206:                                              ; preds = %203, %197, %190, %186
  %207 = phi i1 [ false, %197 ], [ false, %190 ], [ false, %186 ], [ %205, %203 ]
  br i1 %207, label %208, label %231

208:                                              ; preds = %206
  %209 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %210 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = mul nsw i32 %211, 20
  %213 = add nsw i32 200, %212
  %214 = call i32 @msleep(i32 %213)
  %215 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %216 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = mul nsw i32 %217, 20
  %219 = add nsw i32 200, %218
  %220 = load i32, i32* %12, align 4
  %221 = sub nsw i32 %220, %219
  store i32 %221, i32* %12, align 4
  %222 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %9, align 8
  %223 = bitcast %union.fjes_device_command_res* %222 to %struct.TYPE_7__*
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  store i64 0, i64* %224, align 8
  %225 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %9, align 8
  %226 = bitcast %union.fjes_device_command_res* %225 to %struct.TYPE_7__*
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 3
  store i32 0, i32* %227, align 8
  %228 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %229 = load i32, i32* @FJES_CMD_REQ_SHARE_BUFFER, align 4
  %230 = call i32 @fjes_hw_issue_request_command(%struct.fjes_hw* %228, i32 %229)
  store i32 %230, i32* %10, align 4
  br label %186

231:                                              ; preds = %206
  store i32 0, i32* %16, align 4
  %232 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %9, align 8
  %233 = load i32, i32* %12, align 4
  %234 = call i32 @trace_fjes_hw_register_buff_addr(%union.fjes_device_command_res* %232, i32 %233)
  %235 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %9, align 8
  %236 = bitcast %union.fjes_device_command_res* %235 to %struct.TYPE_7__*
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @FJES_DEV_COMMAND_SHARE_BUFFER_RES_LEN, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %245

241:                                              ; preds = %231
  %242 = call i32 @trace_fjes_hw_register_buff_addr_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %243 = load i32, i32* @ENOMSG, align 4
  %244 = sub nsw i32 0, %243
  store i32 %244, i32* %16, align 4
  br label %283

245:                                              ; preds = %231
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* @FJES_CMD_STATUS_NORMAL, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %268

249:                                              ; preds = %245
  %250 = load %union.fjes_device_command_res*, %union.fjes_device_command_res** %9, align 8
  %251 = bitcast %union.fjes_device_command_res* %250 to %struct.TYPE_7__*
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 8
  switch i32 %253, label %264 [
    i32 132, label %254
    i32 133, label %260
  ]

254:                                              ; preds = %249
  store i32 0, i32* %16, align 4
  %255 = load i32, i32* %6, align 4
  %256 = load %struct.fjes_hw*, %struct.fjes_hw** %5, align 8
  %257 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 0
  %259 = call i32 @set_bit(i32 %255, i32* %258)
  br label %267

260:                                              ; preds = %249
  %261 = call i32 @trace_fjes_hw_register_buff_addr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %262 = load i32, i32* @EBUSY, align 4
  %263 = sub nsw i32 0, %262
  store i32 %263, i32* %16, align 4
  br label %267

264:                                              ; preds = %249
  %265 = load i32, i32* @EPERM, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %16, align 4
  br label %267

267:                                              ; preds = %264, %260, %254
  br label %282

268:                                              ; preds = %245
  %269 = load i32, i32* %10, align 4
  switch i32 %269, label %278 [
    i32 128, label %270
    i32 129, label %273
    i32 131, label %277
    i32 130, label %277
  ]

270:                                              ; preds = %268
  %271 = load i32, i32* @EPERM, align 4
  %272 = sub nsw i32 0, %271
  store i32 %272, i32* %16, align 4
  br label %281

273:                                              ; preds = %268
  %274 = call i32 @trace_fjes_hw_register_buff_addr_err(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %275 = load i32, i32* @EBUSY, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %16, align 4
  br label %281

277:                                              ; preds = %268, %268
  br label %278

278:                                              ; preds = %268, %277
  %279 = load i32, i32* @EPERM, align 4
  %280 = sub nsw i32 0, %279
  store i32 %280, i32* %16, align 4
  br label %281

281:                                              ; preds = %278, %273, %270
  br label %282

282:                                              ; preds = %281, %267
  br label %283

283:                                              ; preds = %282, %241
  %284 = load i32, i32* %16, align 4
  store i32 %284, i32* %4, align 4
  br label %285

285:                                              ; preds = %283, %32
  %286 = load i32, i32* %4, align 4
  ret i32 %286
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @memset(%union.fjes_device_command_res*, i32, i32) #1

declare dso_local i64 @FJES_DEV_COMMAND_SHARE_BUFFER_REQ_LEN(i32, i32) #1

declare dso_local i64 @page_to_phys(i32) #1

declare dso_local i32 @vmalloc_to_page(i8*) #1

declare dso_local i64 @offset_in_page(i8*) #1

declare dso_local i32 @trace_fjes_hw_register_buff_addr_req(%union.fjes_device_command_res*, %struct.ep_share_mem_info*) #1

declare dso_local i32 @fjes_hw_issue_request_command(%struct.fjes_hw*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @trace_fjes_hw_register_buff_addr(%union.fjes_device_command_res*, i32) #1

declare dso_local i32 @trace_fjes_hw_register_buff_addr_err(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
