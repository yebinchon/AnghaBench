; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kim_data_s = type { %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i32* }
%struct.TYPE_4__ = type { i32 }
%struct.bts_action = type { i32, i32, i8* }
%struct.hci_command = type { i32 }
%struct.bts_action_send = type { i32 }
%struct.bts_action_delay = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"kim: failed to read local ver\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c" request_firmware failed(errno %ld) for %s\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c" action size %d, type %d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"change remote baud rate command in firmware\00", align 1
@jiffies = common dso_local global i64 0, align 8
@CMD_WR_TIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"Unable to get free space info from uart tx buffer\00", align 1
@.str.6 = private unnamed_addr constant [60 x i8] c"Timeout while waiting for free free space in uart tx buffer\00", align 1
@ETIMEDOUT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [89 x i8] c"Number of bytes written to uart tx buffer are not matching with requested cmd write size\00", align 1
@EIO = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@CMD_RESP_TIME = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"response timeout/signaled during fw download \00", align 1
@ERESTARTSYS = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [21 x i8] c"sleep command in scr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kim_data_s*)* @download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @download_firmware(%struct.kim_data_s* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kim_data_s*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [40 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.kim_data_s* %0, %struct.kim_data_s** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %12 = bitcast [40 x i8]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 40, i1 false)
  %13 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %14 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %15 = call i64 @read_local_version(%struct.kim_data_s* %13, i8* %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* %2, align 8
  br label %267

21:                                               ; preds = %1
  %22 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %23 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %22, i32 0, i32 0
  %24 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %25 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %26 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i64 @request_firmware(%struct.TYPE_5__** %23, i8* %24, i32* %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %21
  %33 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %34 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %32
  %40 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %41 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %44, 0
  br label %46

46:                                               ; preds = %39, %32, %21
  %47 = phi i1 [ true, %32 ], [ true, %21 ], [ %45, %39 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %54 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %52, i8* %53)
  %55 = load i64, i64* @EINVAL, align 8
  %56 = sub nsw i64 0, %55
  store i64 %56, i64* %2, align 8
  br label %267

57:                                               ; preds = %46
  %58 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %59 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = bitcast i32* %62 to i8*
  store i8* %63, i8** %6, align 8
  %64 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %65 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %64, i32 0, i32 0
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %5, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 4
  store i8* %70, i8** %6, align 8
  %71 = load i64, i64* %5, align 8
  %72 = sub i64 %71, 4
  store i64 %72, i64* %5, align 8
  br label %73

73:                                               ; preds = %245, %57
  %74 = load i64, i64* %5, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ne i8* %77, null
  br label %79

79:                                               ; preds = %76, %73
  %80 = phi i1 [ false, %73 ], [ %78, %76 ]
  br i1 %80, label %81, label %262

81:                                               ; preds = %79
  %82 = load i8*, i8** %6, align 8
  %83 = bitcast i8* %82 to %struct.bts_action*
  %84 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = bitcast i8* %86 to %struct.bts_action*
  %88 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %89)
  %91 = load i8*, i8** %6, align 8
  %92 = bitcast i8* %91 to %struct.bts_action*
  %93 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  switch i32 %94, label %245 [
    i32 129, label %95
    i32 128, label %204
    i32 130, label %233
  ]

95:                                               ; preds = %81
  %96 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i8*, i8** %6, align 8
  %98 = bitcast i8* %97 to %struct.bts_action*
  %99 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 0
  store i8* %101, i8** %7, align 8
  %102 = load i8*, i8** %7, align 8
  %103 = bitcast i8* %102 to %struct.hci_command*
  %104 = getelementptr inbounds %struct.hci_command, %struct.hci_command* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 65334
  %107 = zext i1 %106 to i32
  %108 = call i64 @unlikely(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %95
  %111 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %112 = call i32 @skip_change_remote_baud(i8** %6, i64* %5)
  br label %245

113:                                              ; preds = %95
  %114 = load i8*, i8** %6, align 8
  %115 = bitcast i8* %114 to %struct.bts_action*
  %116 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  store i32 %117, i32* %10, align 4
  %118 = load i64, i64* @jiffies, align 8
  %119 = load i32, i32* @CMD_WR_TIME, align 4
  %120 = call i64 @msecs_to_jiffies(i32 %119)
  %121 = add i64 %118, %120
  store i64 %121, i64* %11, align 8
  br label %122

122:                                              ; preds = %148, %113
  %123 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %124 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @st_get_uart_wr_room(i32 %125)
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %131 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %132 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %131, i32 0, i32 0
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = call i32 @release_firmware(%struct.TYPE_5__* %133)
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %2, align 8
  br label %267

137:                                              ; preds = %122
  %138 = call i32 @mdelay(i32 1)
  br label %139

139:                                              ; preds = %137
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load i64, i64* @jiffies, align 8
  %145 = load i64, i64* %11, align 8
  %146 = call i32 @time_before(i64 %144, i64 %145)
  %147 = icmp ne i32 %146, 0
  br label %148

148:                                              ; preds = %143, %139
  %149 = phi i1 [ false, %139 ], [ %147, %143 ]
  br i1 %149, label %122, label %150

150:                                              ; preds = %148
  %151 = load i64, i64* @jiffies, align 8
  %152 = load i64, i64* %11, align 8
  %153 = call i32 @time_after_eq(i64 %151, i64 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %150
  %156 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.6, i64 0, i64 0))
  %157 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %158 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %157, i32 0, i32 0
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %158, align 8
  %160 = call i32 @release_firmware(%struct.TYPE_5__* %159)
  %161 = load i64, i64* @ETIMEDOUT, align 8
  %162 = sub nsw i64 0, %161
  store i64 %162, i64* %2, align 8
  br label %267

163:                                              ; preds = %150
  %164 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %165 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %164, i32 0, i32 1
  %166 = call i32 @reinit_completion(i32* %165)
  %167 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %168 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load i8*, i8** %7, align 8
  %171 = bitcast i8* %170 to %struct.bts_action_send*
  %172 = getelementptr inbounds %struct.bts_action_send, %struct.bts_action_send* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i8*, i8** %6, align 8
  %175 = bitcast i8* %174 to %struct.bts_action*
  %176 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @st_int_write(i32 %169, i32 %173, i32 %177)
  store i64 %178, i64* %4, align 8
  %179 = load i64, i64* %4, align 8
  %180 = icmp slt i64 %179, 0
  %181 = zext i1 %180 to i32
  %182 = call i64 @unlikely(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %163
  %185 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %186 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %185, i32 0, i32 0
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = call i32 @release_firmware(%struct.TYPE_5__* %187)
  %189 = load i64, i64* %4, align 8
  store i64 %189, i64* %2, align 8
  br label %267

190:                                              ; preds = %163
  %191 = load i64, i64* %4, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = icmp ne i64 %191, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %190
  %196 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.7, i64 0, i64 0))
  %197 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %198 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %197, i32 0, i32 0
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = call i32 @release_firmware(%struct.TYPE_5__* %199)
  %201 = load i64, i64* @EIO, align 8
  %202 = sub nsw i64 0, %201
  store i64 %202, i64* %2, align 8
  br label %267

203:                                              ; preds = %190
  br label %245

204:                                              ; preds = %81
  %205 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %206 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %207 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %206, i32 0, i32 1
  %208 = load i32, i32* @CMD_RESP_TIME, align 4
  %209 = call i64 @msecs_to_jiffies(i32 %208)
  %210 = call i64 @wait_for_completion_interruptible_timeout(i32* %207, i64 %209)
  store i64 %210, i64* %4, align 8
  %211 = load i64, i64* %4, align 8
  %212 = icmp sle i64 %211, 0
  br i1 %212, label %213, label %229

213:                                              ; preds = %204
  %214 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  %215 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %216 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %215, i32 0, i32 0
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %216, align 8
  %218 = call i32 @release_firmware(%struct.TYPE_5__* %217)
  %219 = load i64, i64* %4, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %213
  %222 = load i64, i64* @ERESTARTSYS, align 8
  %223 = sub nsw i64 0, %222
  br label %227

224:                                              ; preds = %213
  %225 = load i64, i64* @ETIMEDOUT, align 8
  %226 = sub nsw i64 0, %225
  br label %227

227:                                              ; preds = %224, %221
  %228 = phi i64 [ %223, %221 ], [ %226, %224 ]
  store i64 %228, i64* %2, align 8
  br label %267

229:                                              ; preds = %204
  %230 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %231 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %230, i32 0, i32 1
  %232 = call i32 @reinit_completion(i32* %231)
  br label %245

233:                                              ; preds = %81
  %234 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %235 = load i8*, i8** %6, align 8
  %236 = bitcast i8* %235 to %struct.bts_action*
  %237 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %236, i32 0, i32 2
  %238 = load i8*, i8** %237, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 0
  store i8* %239, i8** %7, align 8
  %240 = load i8*, i8** %7, align 8
  %241 = bitcast i8* %240 to %struct.bts_action_delay*
  %242 = getelementptr inbounds %struct.bts_action_delay, %struct.bts_action_delay* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @mdelay(i32 %243)
  br label %245

245:                                              ; preds = %81, %233, %229, %203, %110
  %246 = load i64, i64* %5, align 8
  %247 = load i8*, i8** %6, align 8
  %248 = bitcast i8* %247 to %struct.bts_action*
  %249 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = add i64 16, %251
  %253 = sub i64 %246, %252
  store i64 %253, i64* %5, align 8
  %254 = load i8*, i8** %6, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 16
  %256 = load i8*, i8** %6, align 8
  %257 = bitcast i8* %256 to %struct.bts_action*
  %258 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i8, i8* %255, i64 %260
  store i8* %261, i8** %6, align 8
  br label %73

262:                                              ; preds = %79
  %263 = load %struct.kim_data_s*, %struct.kim_data_s** %3, align 8
  %264 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %263, i32 0, i32 0
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %264, align 8
  %266 = call i32 @release_firmware(%struct.TYPE_5__* %265)
  store i64 0, i64* %2, align 8
  br label %267

267:                                              ; preds = %262, %227, %195, %184, %155, %129, %51, %18
  %268 = load i64, i64* %2, align 8
  ret i64 %268
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @read_local_version(%struct.kim_data_s*, i8*) #2

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i64 @request_firmware(%struct.TYPE_5__**, i8*, i32*) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @pr_debug(i8*, ...) #2

declare dso_local i32 @pr_warn(i8*) #2

declare dso_local i32 @skip_change_remote_baud(i8**, i64*) #2

declare dso_local i64 @msecs_to_jiffies(i32) #2

declare dso_local i32 @st_get_uart_wr_room(i32) #2

declare dso_local i32 @release_firmware(%struct.TYPE_5__*) #2

declare dso_local i32 @mdelay(i32) #2

declare dso_local i32 @time_before(i64, i64) #2

declare dso_local i32 @time_after_eq(i64, i64) #2

declare dso_local i32 @reinit_completion(i32*) #2

declare dso_local i64 @st_int_write(i32, i32, i32) #2

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i64) #2

declare dso_local i32 @pr_info(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
