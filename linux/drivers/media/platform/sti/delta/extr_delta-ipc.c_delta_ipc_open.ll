; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-ipc.c_delta_ipc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-ipc.c_delta_ipc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, i32, %struct.delta_ipc_ctx, %struct.delta_dev* }
%struct.delta_ipc_ctx = type { i32, %struct.delta_buf*, i32, %struct.delta_buf }
%struct.delta_buf = type { i32, i64*, i32 }
%struct.delta_dev = type { i32, %struct.rpmsg_device* }
%struct.rpmsg_device = type { i32 }
%struct.delta_ipc_param = type { i8*, i64 }
%struct.delta_ipc_open_msg = type { i32, i32, i64*, i32, i64, i32 }

@.str = private unnamed_addr constant [52 x i8] c"%s   ipc: failed to open, rpmsg is not initialized\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s   ipc: failed to open, no name given\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"%s  ipc: failed to open, empty parameter\0A\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"%s   ipc: failed to open, no size given for ipc buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"%s   ipc: failed to open, too large ipc parameter (%d bytes while max %d expected)\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"ipc data buffer\00", align 1
@DELTA_IPC_OPEN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [97 x i8] c"%s   ipc: failed to open, rpmsg_send failed (%d) for DELTA_IPC_OPEN (name=%s, size=%d, data=%p)\0A\00", align 1
@IPC_TIMEOUT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [99 x i8] c"%s   ipc: failed to open, timeout waiting for DELTA_IPC_OPEN callback (name=%s, size=%d, data=%p)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [100 x i8] c"%s   ipc: failed to open, DELTA_IPC_OPEN completed but with error (%d) (name=%s, size=%d, data=%p)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delta_ipc_open(%struct.delta_ctx* %0, i8* %1, %struct.delta_ipc_param* %2, i64 %3, %struct.delta_buf** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.delta_ctx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.delta_ipc_param*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.delta_buf**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.delta_dev*, align 8
  %15 = alloca %struct.rpmsg_device*, align 8
  %16 = alloca %struct.delta_ipc_ctx*, align 8
  %17 = alloca %struct.delta_ipc_open_msg, align 8
  %18 = alloca %struct.delta_buf*, align 8
  %19 = alloca i32, align 4
  store %struct.delta_ctx* %0, %struct.delta_ctx** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.delta_ipc_param* %2, %struct.delta_ipc_param** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.delta_buf** %4, %struct.delta_buf*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %20 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %20, i32 0, i32 3
  %22 = load %struct.delta_dev*, %struct.delta_dev** %21, align 8
  store %struct.delta_dev* %22, %struct.delta_dev** %14, align 8
  %23 = load %struct.delta_dev*, %struct.delta_dev** %14, align 8
  %24 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %23, i32 0, i32 1
  %25 = load %struct.rpmsg_device*, %struct.rpmsg_device** %24, align 8
  store %struct.rpmsg_device* %25, %struct.rpmsg_device** %15, align 8
  %26 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %26, i32 0, i32 2
  store %struct.delta_ipc_ctx* %27, %struct.delta_ipc_ctx** %16, align 8
  %28 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %16, align 8
  %29 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %28, i32 0, i32 3
  store %struct.delta_buf* %29, %struct.delta_buf** %18, align 8
  %30 = load %struct.rpmsg_device*, %struct.rpmsg_device** %15, align 8
  %31 = icmp ne %struct.rpmsg_device* %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %6
  %33 = load %struct.delta_dev*, %struct.delta_dev** %14, align 8
  %34 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %37 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %268

46:                                               ; preds = %6
  %47 = load i8*, i8** %9, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %46
  %50 = load %struct.delta_dev*, %struct.delta_dev** %14, align 8
  %51 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %54 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %52, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %268

59:                                               ; preds = %46
  %60 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %10, align 8
  %61 = icmp ne %struct.delta_ipc_param* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %10, align 8
  %64 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %10, align 8
  %69 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %67, %62, %59
  %73 = load %struct.delta_dev*, %struct.delta_dev** %14, align 8
  %74 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %77 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %75, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %268

82:                                               ; preds = %67
  %83 = load i64, i64* %11, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %82
  %86 = load %struct.delta_dev*, %struct.delta_dev** %14, align 8
  %87 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %90 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %88, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %7, align 4
  br label %268

95:                                               ; preds = %82
  %96 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %10, align 8
  %97 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %11, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %95
  %102 = load %struct.delta_dev*, %struct.delta_dev** %14, align 8
  %103 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %106 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %10, align 8
  %109 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %16, align 8
  %112 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %111, i32 0, i32 1
  %113 = load %struct.delta_buf*, %struct.delta_buf** %112, align 8
  %114 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %104, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 %107, i64 %110, i32 %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %7, align 4
  br label %268

119:                                              ; preds = %95
  %120 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %16, align 8
  %121 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %120, i32 0, i32 2
  %122 = call i32 @init_completion(i32* %121)
  %123 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load %struct.delta_buf*, %struct.delta_buf** %18, align 8
  %126 = call i32 @hw_alloc(%struct.delta_ctx* %123, i64 %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), %struct.delta_buf* %125)
  store i32 %126, i32* %19, align 4
  %127 = load i32, i32* %19, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %119
  %130 = load i32, i32* %19, align 4
  store i32 %130, i32* %7, align 4
  br label %268

131:                                              ; preds = %119
  %132 = load %struct.delta_buf*, %struct.delta_buf** %18, align 8
  %133 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %16, align 8
  %134 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %133, i32 0, i32 1
  store %struct.delta_buf* %132, %struct.delta_buf** %134, align 8
  %135 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %16, align 8
  %136 = load i32, i32* @DELTA_IPC_OPEN, align 4
  %137 = getelementptr inbounds %struct.delta_ipc_open_msg, %struct.delta_ipc_open_msg* %17, i32 0, i32 5
  %138 = call i32 @build_msg_header(%struct.delta_ipc_ctx* %135, i32 %136, i32* %137)
  %139 = load i64, i64* %11, align 8
  %140 = getelementptr inbounds %struct.delta_ipc_open_msg, %struct.delta_ipc_open_msg* %17, i32 0, i32 4
  store i64 %139, i64* %140, align 8
  %141 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %16, align 8
  %142 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %141, i32 0, i32 1
  %143 = load %struct.delta_buf*, %struct.delta_buf** %142, align 8
  %144 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds %struct.delta_ipc_open_msg, %struct.delta_ipc_open_msg* %17, i32 0, i32 3
  store i32 %145, i32* %146, align 8
  %147 = getelementptr inbounds %struct.delta_ipc_open_msg, %struct.delta_ipc_open_msg* %17, i32 0, i32 2
  %148 = load i64*, i64** %147, align 8
  %149 = load i8*, i8** %9, align 8
  %150 = call i32 @memcpy(i64* %148, i8* %149, i32 8)
  %151 = getelementptr inbounds %struct.delta_ipc_open_msg, %struct.delta_ipc_open_msg* %17, i32 0, i32 2
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 7
  store i64 0, i64* %153, align 8
  %154 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %10, align 8
  %155 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = getelementptr inbounds %struct.delta_ipc_open_msg, %struct.delta_ipc_open_msg* %17, i32 0, i32 0
  store i32 %157, i32* %158, align 8
  %159 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %16, align 8
  %160 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %159, i32 0, i32 1
  %161 = load %struct.delta_buf*, %struct.delta_buf** %160, align 8
  %162 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %161, i32 0, i32 1
  %163 = load i64*, i64** %162, align 8
  %164 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %10, align 8
  %165 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds %struct.delta_ipc_open_msg, %struct.delta_ipc_open_msg* %17, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @memcpy(i64* %163, i8* %166, i32 %168)
  %170 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %16, align 8
  %171 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %170, i32 0, i32 1
  %172 = load %struct.delta_buf*, %struct.delta_buf** %171, align 8
  %173 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = getelementptr inbounds %struct.delta_ipc_open_msg, %struct.delta_ipc_open_msg* %17, i32 0, i32 1
  store i32 %174, i32* %175, align 4
  %176 = load %struct.rpmsg_device*, %struct.rpmsg_device** %15, align 8
  %177 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @rpmsg_send(i32 %178, %struct.delta_ipc_open_msg* %17, i32 40)
  store i32 %179, i32* %19, align 4
  %180 = load i32, i32* %19, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %198

182:                                              ; preds = %131
  %183 = load %struct.delta_dev*, %struct.delta_dev** %14, align 8
  %184 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %187 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %19, align 4
  %190 = load i8*, i8** %9, align 8
  %191 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %10, align 8
  %192 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %10, align 8
  %195 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %185, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.6, i64 0, i64 0), i32 %188, i32 %189, i8* %190, i64 %193, i8* %196)
  br label %255

198:                                              ; preds = %131
  %199 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %16, align 8
  %200 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %199, i32 0, i32 2
  %201 = load i32, i32* @IPC_TIMEOUT, align 4
  %202 = call i32 @msecs_to_jiffies(i32 %201)
  %203 = call i32 @wait_for_completion_timeout(i32* %200, i32 %202)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %222, label %205

205:                                              ; preds = %198
  %206 = load %struct.delta_dev*, %struct.delta_dev** %14, align 8
  %207 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %210 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i8*, i8** %9, align 8
  %213 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %10, align 8
  %214 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %10, align 8
  %217 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %208, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.7, i64 0, i64 0), i32 %211, i8* %212, i64 %215, i8* %218)
  %220 = load i32, i32* @ETIMEDOUT, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %19, align 4
  br label %255

222:                                              ; preds = %198
  %223 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %16, align 8
  %224 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %247

227:                                              ; preds = %222
  %228 = load %struct.delta_dev*, %struct.delta_dev** %14, align 8
  %229 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %232 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %16, align 8
  %235 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i8*, i8** %9, align 8
  %238 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %10, align 8
  %239 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %10, align 8
  %242 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %241, i32 0, i32 0
  %243 = load i8*, i8** %242, align 8
  %244 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %230, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.8, i64 0, i64 0), i32 %233, i32 %236, i8* %237, i64 %240, i8* %243)
  %245 = load i32, i32* @EIO, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %19, align 4
  br label %255

247:                                              ; preds = %222
  %248 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %16, align 8
  %249 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %248, i32 0, i32 1
  %250 = load %struct.delta_buf*, %struct.delta_buf** %249, align 8
  %251 = load %struct.delta_buf**, %struct.delta_buf*** %12, align 8
  store %struct.delta_buf* %250, %struct.delta_buf** %251, align 8
  %252 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %16, align 8
  %253 = bitcast %struct.delta_ipc_ctx* %252 to i8*
  %254 = load i8**, i8*** %13, align 8
  store i8* %253, i8** %254, align 8
  store i32 0, i32* %7, align 4
  br label %268

255:                                              ; preds = %227, %205, %182
  %256 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %257 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %257, align 8
  %260 = load %struct.delta_ctx*, %struct.delta_ctx** %8, align 8
  %261 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %16, align 8
  %262 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %261, i32 0, i32 1
  %263 = load %struct.delta_buf*, %struct.delta_buf** %262, align 8
  %264 = call i32 @hw_free(%struct.delta_ctx* %260, %struct.delta_buf* %263)
  %265 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %16, align 8
  %266 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %265, i32 0, i32 1
  store %struct.delta_buf* null, %struct.delta_buf** %266, align 8
  %267 = load i32, i32* %19, align 4
  store i32 %267, i32* %7, align 4
  br label %268

268:                                              ; preds = %255, %247, %129, %101, %85, %72, %49, %32
  %269 = load i32, i32* %7, align 4
  ret i32 %269
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @hw_alloc(%struct.delta_ctx*, i64, i8*, %struct.delta_buf*) #1

declare dso_local i32 @build_msg_header(%struct.delta_ipc_ctx*, i32, i32*) #1

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

declare dso_local i32 @rpmsg_send(i32, %struct.delta_ipc_open_msg*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @hw_free(%struct.delta_ctx*, %struct.delta_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
