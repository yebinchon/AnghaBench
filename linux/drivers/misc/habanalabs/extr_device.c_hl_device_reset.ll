; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_hl_device_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_hl_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32*, %struct.TYPE_7__*, i32, i64, %struct.TYPE_6__*, i64, i32*, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)*, i32 (%struct.hl_device*, i32)*, i32 (%struct.hl_device*, i32)*, i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.hl_device_reset_work = type { i32, %struct.hl_device* }

@.str = private unnamed_addr constant [43 x i8] c"Can't reset before initialization is done\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Going to RESET device!\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@device_hard_reset_pending = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"CS active cnt %d is not 0 during reset\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"kernel ctx was alive during hard reset, something is terribly wrong\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Failed to initialize MMU S/W after hard reset\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"failed to init kernel ctx in hard reset\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"failed to initialize the H/W after reset\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Failed to detect if device is alive after reset\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Failed late init after hard reset\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"Failed to init memory module after hard reset\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Failed late init after soft reset\0A\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Successfully finished resetting the device\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Failed to reset! Device is NOT usable\0A\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"Failed to do soft-reset, trying hard reset\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_device_reset(%struct.hl_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hl_device_reset_work*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %12 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %11, i32 0, i32 19
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %3
  %16 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %17 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %407

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %57, label %23

23:                                               ; preds = %20
  %24 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %25 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %24, i32 0, i32 3
  %26 = call i32 @atomic_cmpxchg(i32* %25, i32 0, i32 1)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %407

30:                                               ; preds = %23
  %31 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %32 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %34 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %33, i32 0, i32 7
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 6
  %37 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %36, align 8
  %38 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %39 = call i32 %37(%struct.hl_device* %38)
  %40 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %41 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %40, i32 0, i32 7
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 5
  %44 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %43, align 8
  %45 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %46 = call i32 %44(%struct.hl_device* %45)
  %47 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %48 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %47, i32 0, i32 11
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %51 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %50, i32 0, i32 11
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %54 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %30, %20
  br label %58

58:                                               ; preds = %393, %57
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %86, label %64

64:                                               ; preds = %61
  %65 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %66 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* @GFP_ATOMIC, align 4
  %68 = call i8* @kzalloc(i32 16, i32 %67)
  %69 = bitcast i8* %68 to %struct.hl_device_reset_work*
  store %struct.hl_device_reset_work* %69, %struct.hl_device_reset_work** %10, align 8
  %70 = load %struct.hl_device_reset_work*, %struct.hl_device_reset_work** %10, align 8
  %71 = icmp ne %struct.hl_device_reset_work* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %64
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %9, align 4
  br label %379

75:                                               ; preds = %64
  %76 = load %struct.hl_device_reset_work*, %struct.hl_device_reset_work** %10, align 8
  %77 = getelementptr inbounds %struct.hl_device_reset_work, %struct.hl_device_reset_work* %76, i32 0, i32 0
  %78 = load i32, i32* @device_hard_reset_pending, align 4
  %79 = call i32 @INIT_WORK(i32* %77, i32 %78)
  %80 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %81 = load %struct.hl_device_reset_work*, %struct.hl_device_reset_work** %10, align 8
  %82 = getelementptr inbounds %struct.hl_device_reset_work, %struct.hl_device_reset_work* %81, i32 0, i32 1
  store %struct.hl_device* %80, %struct.hl_device** %82, align 8
  %83 = load %struct.hl_device_reset_work*, %struct.hl_device_reset_work** %10, align 8
  %84 = getelementptr inbounds %struct.hl_device_reset_work, %struct.hl_device_reset_work* %83, i32 0, i32 0
  %85 = call i32 @schedule_work(i32* %84)
  store i32 0, i32* %4, align 4
  br label %407

86:                                               ; preds = %61, %58
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %91 = call i32 @device_late_fini(%struct.hl_device* %90)
  %92 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %93 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %92, i32 0, i32 18
  %94 = call i32 @mutex_lock(i32* %93)
  %95 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %96 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %95, i32 0, i32 18
  %97 = call i32 @mutex_unlock(i32* %96)
  br label %98

98:                                               ; preds = %89, %86
  %99 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %100 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %99, i32 0, i32 7
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 4
  %103 = load i32 (%struct.hl_device*, i32)*, i32 (%struct.hl_device*, i32)** %102, align 8
  %104 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = call i32 %103(%struct.hl_device* %104, i32 %105)
  %107 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %108 = call i32 @hl_cs_rollback_all(%struct.hl_device* %107)
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %98
  %112 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %113 = call i32 @device_kill_open_processes(%struct.hl_device* %112)
  br label %114

114:                                              ; preds = %111, %98
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %119 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %118, i32 0, i32 9
  %120 = load i32*, i32** %119, align 8
  %121 = call i32 @hl_ctx_put(i32* %120)
  %122 = icmp eq i32 %121, 1
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %125 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %124, i32 0, i32 9
  store i32* null, i32** %125, align 8
  br label %126

126:                                              ; preds = %123, %117, %114
  %127 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %128 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %127, i32 0, i32 7
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 3
  %131 = load i32 (%struct.hl_device*, i32)*, i32 (%struct.hl_device*, i32)** %130, align 8
  %132 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %133 = load i32, i32* %6, align 4
  %134 = call i32 %131(%struct.hl_device* %132, i32 %133)
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %126
  %138 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %139 = call i32 @hl_vm_fini(%struct.hl_device* %138)
  %140 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %141 = call i32 @hl_mmu_fini(%struct.hl_device* %140)
  %142 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %143 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %144 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %143, i32 0, i32 17
  %145 = call i32 @hl_eq_reset(%struct.hl_device* %142, i32* %144)
  br label %146

146:                                              ; preds = %137, %126
  %147 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @hl_hw_queue_reset(%struct.hl_device* %147, i32 %148)
  store i32 0, i32* %8, align 4
  br label %150

150:                                              ; preds = %166, %146
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %153 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %152, i32 0, i32 16
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp slt i32 %151, %155
  br i1 %156, label %157, label %169

157:                                              ; preds = %150
  %158 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %159 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %160 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %159, i32 0, i32 15
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = call i32 @hl_cq_reset(%struct.hl_device* %158, i32* %164)
  br label %166

166:                                              ; preds = %157
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %150

169:                                              ; preds = %150
  %170 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %171 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %170, i32 0, i32 14
  store i64 0, i64* %171, align 8
  %172 = call i8* @ktime_set(i32 0, i32 0)
  %173 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %174 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %173, i32 0, i32 13
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i64 0
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 1
  store i8* %172, i8** %177, align 8
  %178 = call i8* @ktime_set(i32 0, i32 0)
  %179 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %180 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %179, i32 0, i32 13
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  store i8* %178, i8** %183, align 8
  %184 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %185 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %184, i32 0, i32 12
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %169
  %189 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %190 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %193 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %192, i32 0, i32 12
  %194 = load i64, i64* %193, align 8
  %195 = call i32 (i32, i8*, ...) @dev_crit(i32 %191, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %194)
  br label %196

196:                                              ; preds = %188, %169
  %197 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %198 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %197, i32 0, i32 11
  %199 = call i32 @mutex_lock(i32* %198)
  %200 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %201 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %200, i32 0, i32 10
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %201, align 8
  %203 = icmp ne %struct.TYPE_7__* %202, null
  br i1 %203, label %204, label %214

204:                                              ; preds = %196
  %205 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %206 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %205, i32 0, i32 10
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = call i32 @atomic_set(i32* %208, i32 1)
  %210 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %211 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %210, i32 0, i32 10
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  store i64 0, i64* %213, align 8
  br label %214

214:                                              ; preds = %204, %196
  %215 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %216 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %215, i32 0, i32 11
  %217 = call i32 @mutex_unlock(i32* %216)
  %218 = load i32, i32* %6, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %281

220:                                              ; preds = %214
  %221 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %222 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %221, i32 0, i32 2
  store i32 0, i32* %222, align 8
  %223 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %224 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %223, i32 0, i32 1
  store i32 0, i32* %224, align 4
  %225 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %226 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %225, i32 0, i32 9
  %227 = load i32*, i32** %226, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %229, label %236

229:                                              ; preds = %220
  %230 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %231 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = call i32 (i32, i8*, ...) @dev_crit(i32 %232, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %234 = load i32, i32* @EBUSY, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %9, align 4
  br label %379

236:                                              ; preds = %220
  %237 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %238 = call i32 @hl_mmu_init(%struct.hl_device* %237)
  store i32 %238, i32* %9, align 4
  %239 = load i32, i32* %9, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %236
  %242 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %243 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @dev_err(i32 %244, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  br label %379

246:                                              ; preds = %236
  %247 = load i32, i32* @GFP_KERNEL, align 4
  %248 = call i8* @kzalloc(i32 4, i32 %247)
  %249 = bitcast i8* %248 to i32*
  %250 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %251 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %250, i32 0, i32 9
  store i32* %249, i32** %251, align 8
  %252 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %253 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %252, i32 0, i32 9
  %254 = load i32*, i32** %253, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %259, label %256

256:                                              ; preds = %246
  %257 = load i32, i32* @ENOMEM, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %9, align 4
  br label %379

259:                                              ; preds = %246
  %260 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %261 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %260, i32 0, i32 10
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %261, align 8
  %262 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %263 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %264 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %263, i32 0, i32 9
  %265 = load i32*, i32** %264, align 8
  %266 = call i32 @hl_ctx_init(%struct.hl_device* %262, i32* %265, i32 1)
  store i32 %266, i32* %9, align 4
  %267 = load i32, i32* %9, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %280

269:                                              ; preds = %259
  %270 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %271 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @dev_err(i32 %272, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %274 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %275 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %274, i32 0, i32 9
  %276 = load i32*, i32** %275, align 8
  %277 = call i32 @kfree(i32* %276)
  %278 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %279 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %278, i32 0, i32 9
  store i32* null, i32** %279, align 8
  br label %379

280:                                              ; preds = %259
  br label %281

281:                                              ; preds = %280, %214
  %282 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %283 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %282, i32 0, i32 7
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 0
  %286 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %285, align 8
  %287 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %288 = call i32 %286(%struct.hl_device* %287)
  store i32 %288, i32* %9, align 4
  %289 = load i32, i32* %9, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %296

291:                                              ; preds = %281
  %292 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %293 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %292, i32 0, i32 5
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @dev_err(i32 %294, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  br label %379

296:                                              ; preds = %281
  %297 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %298 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %297, i32 0, i32 0
  store i32 0, i32* %298, align 8
  %299 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %300 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %299, i32 0, i32 7
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 1
  %303 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %302, align 8
  %304 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %305 = call i32 %303(%struct.hl_device* %304)
  store i32 %305, i32* %9, align 4
  %306 = load i32, i32* %9, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %313

308:                                              ; preds = %296
  %309 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %310 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @dev_err(i32 %311, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  br label %379

313:                                              ; preds = %296
  %314 = load i32, i32* %6, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %342

316:                                              ; preds = %313
  %317 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %318 = call i32 @device_late_init(%struct.hl_device* %317)
  store i32 %318, i32* %9, align 4
  %319 = load i32, i32* %9, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %316
  %322 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %323 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %322, i32 0, i32 5
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @dev_err(i32 %324, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %379

326:                                              ; preds = %316
  %327 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %328 = call i32 @hl_vm_init(%struct.hl_device* %327)
  store i32 %328, i32* %9, align 4
  %329 = load i32, i32* %9, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %336

331:                                              ; preds = %326
  %332 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %333 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %332, i32 0, i32 5
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @dev_err(i32 %334, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0))
  br label %379

336:                                              ; preds = %326
  %337 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %338 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %339 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %338, i32 0, i32 8
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @hl_set_max_power(%struct.hl_device* %337, i32 %340)
  br label %358

342:                                              ; preds = %313
  %343 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %344 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %343, i32 0, i32 7
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 2
  %347 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %346, align 8
  %348 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %349 = call i32 %347(%struct.hl_device* %348)
  store i32 %349, i32* %9, align 4
  %350 = load i32, i32* %9, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %357

352:                                              ; preds = %342
  %353 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %354 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %353, i32 0, i32 5
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @dev_err(i32 %355, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %379

357:                                              ; preds = %342
  br label %358

358:                                              ; preds = %357, %336
  %359 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %360 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %359, i32 0, i32 3
  %361 = call i32 @atomic_set(i32* %360, i32 0)
  %362 = load i32, i32* %6, align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %369

364:                                              ; preds = %358
  %365 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %366 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %365, i32 0, i32 6
  %367 = load i32, i32* %366, align 8
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %366, align 8
  br label %374

369:                                              ; preds = %358
  %370 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %371 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 8
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %371, align 8
  br label %374

374:                                              ; preds = %369, %364
  %375 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %376 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %375, i32 0, i32 5
  %377 = load i32, i32* %376, align 4
  %378 = call i32 @dev_warn(i32 %377, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %407

379:                                              ; preds = %352, %331, %321, %308, %291, %269, %256, %241, %229, %72
  %380 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %381 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %380, i32 0, i32 0
  store i32 1, i32* %381, align 8
  %382 = load i32, i32* %6, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %393

384:                                              ; preds = %379
  %385 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %386 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %385, i32 0, i32 5
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @dev_err(i32 %387, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %389 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %390 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %389, i32 0, i32 6
  %391 = load i32, i32* %390, align 8
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %390, align 8
  br label %402

393:                                              ; preds = %379
  %394 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %395 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %394, i32 0, i32 5
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @dev_err(i32 %396, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  %398 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %399 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %398, i32 0, i32 4
  %400 = load i32, i32* %399, align 8
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %399, align 8
  store i32 1, i32* %6, align 4
  br label %58

402:                                              ; preds = %384
  %403 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %404 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %403, i32 0, i32 3
  %405 = call i32 @atomic_set(i32* %404, i32 0)
  %406 = load i32, i32* %9, align 4
  store i32 %406, i32* %4, align 4
  br label %407

407:                                              ; preds = %402, %374, %75, %29, %15
  %408 = load i32, i32* %4, align 4
  ret i32 %408
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @device_late_fini(%struct.hl_device*) #1

declare dso_local i32 @hl_cs_rollback_all(%struct.hl_device*) #1

declare dso_local i32 @device_kill_open_processes(%struct.hl_device*) #1

declare dso_local i32 @hl_ctx_put(i32*) #1

declare dso_local i32 @hl_vm_fini(%struct.hl_device*) #1

declare dso_local i32 @hl_mmu_fini(%struct.hl_device*) #1

declare dso_local i32 @hl_eq_reset(%struct.hl_device*, i32*) #1

declare dso_local i32 @hl_hw_queue_reset(%struct.hl_device*, i32) #1

declare dso_local i32 @hl_cq_reset(%struct.hl_device*, i32*) #1

declare dso_local i8* @ktime_set(i32, i32) #1

declare dso_local i32 @dev_crit(i32, i8*, ...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hl_mmu_init(%struct.hl_device*) #1

declare dso_local i32 @hl_ctx_init(%struct.hl_device*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @device_late_init(%struct.hl_device*) #1

declare dso_local i32 @hl_vm_init(%struct.hl_device*) #1

declare dso_local i32 @hl_set_max_power(%struct.hl_device*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
