; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-ipc.c_delta_ipc_set_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-ipc.c_delta_ipc_set_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ipc_param = type { i32, i64 }
%struct.delta_ipc_ctx = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.delta_ctx = type { i32, i32, %struct.delta_dev* }
%struct.delta_dev = type { i32, %struct.rpmsg_device* }
%struct.rpmsg_device = type { i32 }
%struct.delta_ipc_set_stream_msg = type { i32, i64, i32 }

@.str = private unnamed_addr constant [52 x i8] c"%s   ipc: failed to set stream, invalid ipc handle\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"%s   ipc: failed to set stream, rpmsg is not initialized\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"%s  ipc: failed to set stream, empty parameter\0A\00", align 1
@.str.3 = private unnamed_addr constant [89 x i8] c"%s   ipc: failed to set stream, too large ipc parameter(%d bytes while max %d expected)\0A\00", align 1
@.str.4 = private unnamed_addr constant [109 x i8] c"%s   ipc: failed to set stream, parameter is not in expected address range (size=%d, data=%p not in %p..%p)\0A\00", align 1
@DELTA_IPC_SET_STREAM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [100 x i8] c"%s   ipc: failed to set stream, rpmsg_send failed (%d) for DELTA_IPC_SET_STREAM (size=%d, data=%p)\0A\00", align 1
@IPC_TIMEOUT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [102 x i8] c"%s   ipc: failed to set stream, timeout waiting for DELTA_IPC_SET_STREAM callback (size=%d, data=%p)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [103 x i8] c"%s   ipc: failed to set stream, DELTA_IPC_SET_STREAM completed but with error (%d) (size=%d, data=%p)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delta_ipc_set_stream(i8* %0, %struct.delta_ipc_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.delta_ipc_param*, align 8
  %6 = alloca %struct.delta_ipc_ctx*, align 8
  %7 = alloca %struct.delta_ctx*, align 8
  %8 = alloca %struct.delta_dev*, align 8
  %9 = alloca %struct.rpmsg_device*, align 8
  %10 = alloca %struct.delta_ipc_set_stream_msg, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.delta_ipc_param* %1, %struct.delta_ipc_param** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call %struct.delta_ipc_ctx* @to_ctx(i8* %12)
  store %struct.delta_ipc_ctx* %13, %struct.delta_ipc_ctx** %6, align 8
  %14 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %6, align 8
  %15 = call %struct.delta_ctx* @to_pctx(%struct.delta_ipc_ctx* %14)
  store %struct.delta_ctx* %15, %struct.delta_ctx** %7, align 8
  %16 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %17 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %16, i32 0, i32 2
  %18 = load %struct.delta_dev*, %struct.delta_dev** %17, align 8
  store %struct.delta_dev* %18, %struct.delta_dev** %8, align 8
  %19 = load %struct.delta_dev*, %struct.delta_dev** %8, align 8
  %20 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %19, i32 0, i32 1
  %21 = load %struct.rpmsg_device*, %struct.rpmsg_device** %20, align 8
  store %struct.rpmsg_device* %21, %struct.rpmsg_device** %9, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %2
  %25 = load %struct.delta_dev*, %struct.delta_dev** %8, align 8
  %26 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %238

34:                                               ; preds = %2
  %35 = load %struct.rpmsg_device*, %struct.rpmsg_device** %9, align 8
  %36 = icmp ne %struct.rpmsg_device* %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %34
  %38 = load %struct.delta_dev*, %struct.delta_dev** %8, align 8
  %39 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %42 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %238

47:                                               ; preds = %34
  %48 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %5, align 8
  %49 = icmp ne %struct.delta_ipc_param* %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %5, align 8
  %52 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %5, align 8
  %57 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55, %50, %47
  %61 = load %struct.delta_dev*, %struct.delta_dev** %8, align 8
  %62 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %65 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %238

70:                                               ; preds = %55
  %71 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %5, align 8
  %72 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %6, align 8
  %75 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %74, i32 0, i32 2
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %73, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %70
  %81 = load %struct.delta_dev*, %struct.delta_dev** %8, align 8
  %82 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %85 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %5, align 8
  %88 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %6, align 8
  %91 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.3, i64 0, i64 0), i32 %86, i64 %89, i64 %94)
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %238

98:                                               ; preds = %70
  %99 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %6, align 8
  %100 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %5, align 8
  %101 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %5, align 8
  %104 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @is_valid_data(%struct.delta_ipc_ctx* %99, i32 %102, i64 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %141, label %108

108:                                              ; preds = %98
  %109 = load %struct.delta_dev*, %struct.delta_dev** %8, align 8
  %110 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %113 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %5, align 8
  %116 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %5, align 8
  %119 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %6, align 8
  %122 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %6, align 8
  %127 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %126, i32 0, i32 2
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %6, align 8
  %132 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %131, i32 0, i32 2
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %130, %135
  %137 = sub nsw i64 %136, 1
  %138 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %111, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.4, i64 0, i64 0), i32 %114, i64 %117, i32 %120, i64 %125, i64 %137)
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %3, align 4
  br label %238

141:                                              ; preds = %98
  %142 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %6, align 8
  %143 = load i32, i32* @DELTA_IPC_SET_STREAM, align 4
  %144 = getelementptr inbounds %struct.delta_ipc_set_stream_msg, %struct.delta_ipc_set_stream_msg* %10, i32 0, i32 2
  %145 = call i32 @build_msg_header(%struct.delta_ipc_ctx* %142, i32 %143, i32* %144)
  %146 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %5, align 8
  %147 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.delta_ipc_set_stream_msg, %struct.delta_ipc_set_stream_msg* %10, i32 0, i32 1
  store i64 %148, i64* %149, align 8
  %150 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %6, align 8
  %151 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %5, align 8
  %152 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @to_paddr(%struct.delta_ipc_ctx* %150, i32 %153)
  %155 = getelementptr inbounds %struct.delta_ipc_set_stream_msg, %struct.delta_ipc_set_stream_msg* %10, i32 0, i32 0
  store i32 %154, i32* %155, align 8
  %156 = load %struct.rpmsg_device*, %struct.rpmsg_device** %9, align 8
  %157 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @rpmsg_send(i32 %158, %struct.delta_ipc_set_stream_msg* %10, i32 24)
  store i32 %159, i32* %11, align 4
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %182

162:                                              ; preds = %141
  %163 = load %struct.delta_dev*, %struct.delta_dev** %8, align 8
  %164 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %167 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %11, align 4
  %170 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %5, align 8
  %171 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %5, align 8
  %174 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %165, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.5, i64 0, i64 0), i32 %168, i32 %169, i64 %172, i32 %175)
  %177 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %178 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %178, align 8
  %181 = load i32, i32* %11, align 4
  store i32 %181, i32* %3, align 4
  br label %238

182:                                              ; preds = %141
  %183 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %6, align 8
  %184 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %183, i32 0, i32 1
  %185 = load i32, i32* @IPC_TIMEOUT, align 4
  %186 = call i32 @msecs_to_jiffies(i32 %185)
  %187 = call i32 @wait_for_completion_timeout(i32* %184, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %209, label %189

189:                                              ; preds = %182
  %190 = load %struct.delta_dev*, %struct.delta_dev** %8, align 8
  %191 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %194 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %5, align 8
  %197 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %5, align 8
  %200 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %192, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 %195, i64 %198, i32 %201)
  %203 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %204 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %204, align 8
  %207 = load i32, i32* @ETIMEDOUT, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %3, align 4
  br label %238

209:                                              ; preds = %182
  %210 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %6, align 8
  %211 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %237

214:                                              ; preds = %209
  %215 = load %struct.delta_dev*, %struct.delta_dev** %8, align 8
  %216 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %219 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %6, align 8
  %222 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %5, align 8
  %225 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %5, align 8
  %228 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %217, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 %220, i32 %223, i64 %226, i32 %229)
  %231 = load %struct.delta_ctx*, %struct.delta_ctx** %7, align 8
  %232 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %232, align 8
  %235 = load i32, i32* @EIO, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %3, align 4
  br label %238

237:                                              ; preds = %209
  store i32 0, i32* %3, align 4
  br label %238

238:                                              ; preds = %237, %214, %189, %162, %108, %80, %60, %37, %24
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local %struct.delta_ipc_ctx* @to_ctx(i8*) #1

declare dso_local %struct.delta_ctx* @to_pctx(%struct.delta_ipc_ctx*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @is_valid_data(%struct.delta_ipc_ctx*, i32, i64) #1

declare dso_local i32 @build_msg_header(%struct.delta_ipc_ctx*, i32, i32*) #1

declare dso_local i32 @to_paddr(%struct.delta_ipc_ctx*, i32) #1

declare dso_local i32 @rpmsg_send(i32, %struct.delta_ipc_set_stream_msg*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
