; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-ipc.c_delta_ipc_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-ipc.c_delta_ipc_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ipc_param = type { i64, i64 }
%struct.delta_ipc_ctx = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.delta_ctx = type { i32, i32, %struct.delta_dev* }
%struct.delta_dev = type { i32, %struct.rpmsg_device* }
%struct.rpmsg_device = type { i32 }
%struct.delta_ipc_decode_msg = type { i32, i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [48 x i8] c"%s   ipc: failed to decode, invalid ipc handle\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"%s   ipc: failed to decode, rpmsg is not initialized\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%s  ipc: failed to decode, empty parameter\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"%s  ipc: failed to decode, empty status\0A\00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"%s   ipc: failed to decode, too large ipc parameter (%d bytes (param) + %d bytes (status) while max %d expected)\0A\00", align 1
@.str.5 = private unnamed_addr constant [105 x i8] c"%s   ipc: failed to decode, parameter is not in expected address range (size=%d, data=%p not in %p..%p)\0A\00", align 1
@.str.6 = private unnamed_addr constant [102 x i8] c"%s   ipc: failed to decode, status is not in expected address range (size=%d, data=%p not in %p..%p)\0A\00", align 1
@DELTA_IPC_DECODE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [92 x i8] c"%s   ipc: failed to decode, rpmsg_send failed (%d) for DELTA_IPC_DECODE (size=%d, data=%p)\0A\00", align 1
@IPC_TIMEOUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [94 x i8] c"%s   ipc: failed to decode, timeout waiting for DELTA_IPC_DECODE callback (size=%d, data=%p)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [95 x i8] c"%s   ipc: failed to decode, DELTA_IPC_DECODE completed but with error (%d) (size=%d, data=%p)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delta_ipc_decode(i8* %0, %struct.delta_ipc_param* %1, %struct.delta_ipc_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.delta_ipc_param*, align 8
  %7 = alloca %struct.delta_ipc_param*, align 8
  %8 = alloca %struct.delta_ipc_ctx*, align 8
  %9 = alloca %struct.delta_ctx*, align 8
  %10 = alloca %struct.delta_dev*, align 8
  %11 = alloca %struct.rpmsg_device*, align 8
  %12 = alloca %struct.delta_ipc_decode_msg, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.delta_ipc_param* %1, %struct.delta_ipc_param** %6, align 8
  store %struct.delta_ipc_param* %2, %struct.delta_ipc_param** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call %struct.delta_ipc_ctx* @to_ctx(i8* %14)
  store %struct.delta_ipc_ctx* %15, %struct.delta_ipc_ctx** %8, align 8
  %16 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %8, align 8
  %17 = call %struct.delta_ctx* @to_pctx(%struct.delta_ipc_ctx* %16)
  store %struct.delta_ctx* %17, %struct.delta_ctx** %9, align 8
  %18 = load %struct.delta_ctx*, %struct.delta_ctx** %9, align 8
  %19 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %18, i32 0, i32 2
  %20 = load %struct.delta_dev*, %struct.delta_dev** %19, align 8
  store %struct.delta_dev* %20, %struct.delta_dev** %10, align 8
  %21 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %22 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %21, i32 0, i32 1
  %23 = load %struct.rpmsg_device*, %struct.rpmsg_device** %22, align 8
  store %struct.rpmsg_device* %23, %struct.rpmsg_device** %11, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %36, label %26

26:                                               ; preds = %3
  %27 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %28 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.delta_ctx*, %struct.delta_ctx** %9, align 8
  %31 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %327

36:                                               ; preds = %3
  %37 = load %struct.rpmsg_device*, %struct.rpmsg_device** %11, align 8
  %38 = icmp ne %struct.rpmsg_device* %37, null
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %41 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.delta_ctx*, %struct.delta_ctx** %9, align 8
  %44 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %327

49:                                               ; preds = %36
  %50 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %6, align 8
  %51 = icmp ne %struct.delta_ipc_param* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %6, align 8
  %54 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %6, align 8
  %59 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57, %52, %49
  %63 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %64 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.delta_ctx*, %struct.delta_ctx** %9, align 8
  %67 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %327

72:                                               ; preds = %57
  %73 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %7, align 8
  %74 = icmp ne %struct.delta_ipc_param* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %7, align 8
  %77 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %7, align 8
  %82 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %80, %75, %72
  %86 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %87 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.delta_ctx*, %struct.delta_ctx** %9, align 8
  %90 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %88, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %327

95:                                               ; preds = %80
  %96 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %6, align 8
  %97 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %7, align 8
  %100 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %8, align 8
  %104 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %103, i32 0, i32 2
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp sgt i64 %102, %107
  br i1 %108, label %109, label %130

109:                                              ; preds = %95
  %110 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %111 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.delta_ctx*, %struct.delta_ctx** %9, align 8
  %114 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %6, align 8
  %117 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %7, align 8
  %120 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %8, align 8
  %123 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %112, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i32 %115, i64 %118, i64 %121, i64 %126)
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %4, align 4
  br label %327

130:                                              ; preds = %95
  %131 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %8, align 8
  %132 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %6, align 8
  %133 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %6, align 8
  %136 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 @is_valid_data(%struct.delta_ipc_ctx* %131, i64 %134, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %174, label %141

141:                                              ; preds = %130
  %142 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %143 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.delta_ctx*, %struct.delta_ctx** %9, align 8
  %146 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %6, align 8
  %149 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %6, align 8
  %152 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %8, align 8
  %155 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %154, i32 0, i32 2
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %8, align 8
  %160 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %159, i32 0, i32 2
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %8, align 8
  %165 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %164, i32 0, i32 2
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add nsw i64 %163, %168
  %170 = sub nsw i64 %169, 1
  %171 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %144, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.5, i64 0, i64 0), i32 %147, i64 %150, i64 %153, i64 %158, i64 %170)
  %172 = load i32, i32* @EINVAL, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %4, align 4
  br label %327

174:                                              ; preds = %130
  %175 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %8, align 8
  %176 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %7, align 8
  %177 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %7, align 8
  %180 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  %183 = call i32 @is_valid_data(%struct.delta_ipc_ctx* %175, i64 %178, i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %218, label %185

185:                                              ; preds = %174
  %186 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %187 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.delta_ctx*, %struct.delta_ctx** %9, align 8
  %190 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %7, align 8
  %193 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %7, align 8
  %196 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %8, align 8
  %199 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %198, i32 0, i32 2
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %8, align 8
  %204 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %203, i32 0, i32 2
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %8, align 8
  %209 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %208, i32 0, i32 2
  %210 = load %struct.TYPE_2__*, %struct.TYPE_2__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %207, %212
  %214 = sub nsw i64 %213, 1
  %215 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %188, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 %191, i64 %194, i64 %197, i64 %202, i64 %214)
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %4, align 4
  br label %327

218:                                              ; preds = %174
  %219 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %8, align 8
  %220 = load i32, i32* @DELTA_IPC_DECODE, align 4
  %221 = getelementptr inbounds %struct.delta_ipc_decode_msg, %struct.delta_ipc_decode_msg* %12, i32 0, i32 4
  %222 = call i32 @build_msg_header(%struct.delta_ipc_ctx* %219, i32 %220, i32* %221)
  %223 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %6, align 8
  %224 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = trunc i64 %225 to i32
  %227 = getelementptr inbounds %struct.delta_ipc_decode_msg, %struct.delta_ipc_decode_msg* %12, i32 0, i32 0
  store i32 %226, i32* %227, align 8
  %228 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %8, align 8
  %229 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %6, align 8
  %230 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = call i8* @to_paddr(%struct.delta_ipc_ctx* %228, i64 %231)
  %233 = getelementptr inbounds %struct.delta_ipc_decode_msg, %struct.delta_ipc_decode_msg* %12, i32 0, i32 3
  store i8* %232, i8** %233, align 8
  %234 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %7, align 8
  %235 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = trunc i64 %236 to i32
  %238 = getelementptr inbounds %struct.delta_ipc_decode_msg, %struct.delta_ipc_decode_msg* %12, i32 0, i32 1
  store i32 %237, i32* %238, align 4
  %239 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %8, align 8
  %240 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %7, align 8
  %241 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = call i8* @to_paddr(%struct.delta_ipc_ctx* %239, i64 %242)
  %244 = getelementptr inbounds %struct.delta_ipc_decode_msg, %struct.delta_ipc_decode_msg* %12, i32 0, i32 2
  store i8* %243, i8** %244, align 8
  %245 = load %struct.rpmsg_device*, %struct.rpmsg_device** %11, align 8
  %246 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @rpmsg_send(i32 %247, %struct.delta_ipc_decode_msg* %12, i32 32)
  store i32 %248, i32* %13, align 4
  %249 = load i32, i32* %13, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %271

251:                                              ; preds = %218
  %252 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %253 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.delta_ctx*, %struct.delta_ctx** %9, align 8
  %256 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %13, align 4
  %259 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %6, align 8
  %260 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %6, align 8
  %263 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %254, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.7, i64 0, i64 0), i32 %257, i32 %258, i64 %261, i64 %264)
  %266 = load %struct.delta_ctx*, %struct.delta_ctx** %9, align 8
  %267 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 8
  %270 = load i32, i32* %13, align 4
  store i32 %270, i32* %4, align 4
  br label %327

271:                                              ; preds = %218
  %272 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %8, align 8
  %273 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %272, i32 0, i32 1
  %274 = load i32, i32* @IPC_TIMEOUT, align 4
  %275 = call i32 @msecs_to_jiffies(i32 %274)
  %276 = call i32 @wait_for_completion_timeout(i32* %273, i32 %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %298, label %278

278:                                              ; preds = %271
  %279 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %280 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.delta_ctx*, %struct.delta_ctx** %9, align 8
  %283 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %6, align 8
  %286 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %6, align 8
  %289 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %281, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.8, i64 0, i64 0), i32 %284, i64 %287, i64 %290)
  %292 = load %struct.delta_ctx*, %struct.delta_ctx** %9, align 8
  %293 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %293, align 8
  %296 = load i32, i32* @ETIMEDOUT, align 4
  %297 = sub nsw i32 0, %296
  store i32 %297, i32* %4, align 4
  br label %327

298:                                              ; preds = %271
  %299 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %8, align 8
  %300 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %326

303:                                              ; preds = %298
  %304 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %305 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.delta_ctx*, %struct.delta_ctx** %9, align 8
  %308 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.delta_ipc_ctx*, %struct.delta_ipc_ctx** %8, align 8
  %311 = getelementptr inbounds %struct.delta_ipc_ctx, %struct.delta_ipc_ctx* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %6, align 8
  %314 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.delta_ipc_param*, %struct.delta_ipc_param** %6, align 8
  %317 = getelementptr inbounds %struct.delta_ipc_param, %struct.delta_ipc_param* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %306, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.9, i64 0, i64 0), i32 %309, i32 %312, i64 %315, i64 %318)
  %320 = load %struct.delta_ctx*, %struct.delta_ctx** %9, align 8
  %321 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %321, align 8
  %324 = load i32, i32* @EIO, align 4
  %325 = sub nsw i32 0, %324
  store i32 %325, i32* %4, align 4
  br label %327

326:                                              ; preds = %298
  store i32 0, i32* %4, align 4
  br label %327

327:                                              ; preds = %326, %303, %278, %251, %185, %141, %109, %85, %62, %39, %26
  %328 = load i32, i32* %4, align 4
  ret i32 %328
}

declare dso_local %struct.delta_ipc_ctx* @to_ctx(i8*) #1

declare dso_local %struct.delta_ctx* @to_pctx(%struct.delta_ipc_ctx*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @is_valid_data(%struct.delta_ipc_ctx*, i64, i32) #1

declare dso_local i32 @build_msg_header(%struct.delta_ipc_ctx*, i32, i32*) #1

declare dso_local i8* @to_paddr(%struct.delta_ipc_ctx*, i64) #1

declare dso_local i32 @rpmsg_send(i32, %struct.delta_ipc_decode_msg*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
