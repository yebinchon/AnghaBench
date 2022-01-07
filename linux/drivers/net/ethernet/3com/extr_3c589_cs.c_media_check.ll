; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_media_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c589_cs.c_media_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.el3_private = type { i32, i32, %struct.TYPE_6__, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.net_device = type { i32, i64, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.timer_list = type { i32 }

@media = common dso_local global i32 0, align 4
@EL3_STATUS = common dso_local global i64 0, align 8
@IntLatch = common dso_local global i32 0, align 4
@EL3_TIMER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"interrupt(s) dropped!\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@WN4_MEDIA = common dso_local global i64 0, align 8
@StatsDisable = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@StatsEnable = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%s link beat\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"lost\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"found\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"coax cable %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"problem\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"flipped to 10baseT\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"flipped to 10base2\0A\00", align 1
@lp = common dso_local global %struct.el3_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @media_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @media_check(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.el3_private*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %9 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %10 = ptrtoint %struct.el3_private* %9 to i32
  %11 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %12 = load i32, i32* @media, align 4
  %13 = call %struct.el3_private* @from_timer(i32 %10, %struct.timer_list* %11, i32 %12)
  store %struct.el3_private* %13, %struct.el3_private** %3, align 8
  %14 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %15 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %14, i32 0, i32 5
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %4, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %5, align 4
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i32 @netif_device_present(%struct.net_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %250

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = load i64, i64* @EL3_STATUS, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @inw(i64 %30)
  %32 = load i32, i32* @IntLatch, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* @EL3_TIMER, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @inb(i64 %39)
  %41 = icmp eq i32 %40, 255
  br i1 %41, label %42, label %63

42:                                               ; preds = %35
  %43 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %44 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = call i32 @netdev_warn(%struct.net_device* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %42
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @local_irq_save(i64 %51)
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = call i32 @el3_interrupt(i32 %55, %struct.net_device* %56)
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @local_irq_restore(i64 %58)
  %60 = load i32, i32* @HZ, align 4
  %61 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %62 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %50, %35, %26
  %64 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %65 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %70 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %70, align 8
  %73 = load i8*, i8** @jiffies, align 8
  %74 = load i32, i32* @HZ, align 4
  %75 = sdiv i32 %74, 100
  %76 = sext i32 %75 to i64
  %77 = getelementptr i8, i8* %73, i64 %76
  %78 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %79 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i8* %77, i8** %80, align 8
  %81 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %82 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %81, i32 0, i32 2
  %83 = call i32 @add_timer(%struct.TYPE_6__* %82)
  br label %261

84:                                               ; preds = %63
  %85 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %86 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %85, i32 0, i32 3
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @spin_lock_irqsave(i32* %86, i64 %87)
  %89 = call i32 @EL3WINDOW(i32 4)
  %90 = load i32, i32* %5, align 4
  %91 = zext i32 %90 to i64
  %92 = load i64, i64* @WN4_MEDIA, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @inw(i64 %93)
  %95 = and i32 %94, 51216
  store i32 %95, i32* %6, align 4
  %96 = load i8*, i8** @jiffies, align 8
  %97 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %98 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @HZ, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = call i64 @time_before(i8* %96, i64 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %84
  %106 = load i32, i32* %6, align 4
  %107 = and i32 %106, -17
  store i32 %107, i32* %6, align 4
  br label %144

108:                                              ; preds = %84
  %109 = call i32 @EL3WINDOW(i32 6)
  %110 = load i32, i32* @StatsDisable, align 4
  %111 = load i32, i32* %5, align 4
  %112 = zext i32 %111 to i64
  %113 = load i64, i64* @EL3_CMD, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @outw(i32 %110, i64 %114)
  %116 = load i32, i32* %5, align 4
  %117 = add i32 %116, 0
  %118 = zext i32 %117 to i64
  %119 = call i32 @inb(i64 %118)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* @StatsEnable, align 4
  %121 = load i32, i32* %5, align 4
  %122 = zext i32 %121 to i64
  %123 = load i64, i64* @EL3_CMD, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @outw(i32 %120, i64 %124)
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, %126
  store i32 %131, i32* %129, align 8
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %108
  %135 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %136 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 16
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134, %108
  %141 = load i32, i32* %6, align 4
  %142 = or i32 %141, 16
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %140, %134
  br label %144

144:                                              ; preds = %143, %105
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %147 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %145, %148
  br i1 %149, label %150, label %244

150:                                              ; preds = %144
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %153 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %151, %154
  %156 = and i32 %155, 32768
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %176

158:                                              ; preds = %150
  %159 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %160 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %6, align 4
  %163 = xor i32 %161, %162
  %164 = and i32 %163, 2048
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %176

166:                                              ; preds = %158
  %167 = load %struct.net_device*, %struct.net_device** %4, align 8
  %168 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %169 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 2048
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %175 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %167, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %174)
  br label %203

176:                                              ; preds = %158, %150
  %177 = load i32, i32* %6, align 4
  %178 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %179 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %177, %180
  %182 = and i32 %181, 16384
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %202

184:                                              ; preds = %176
  %185 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %186 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %6, align 4
  %189 = xor i32 %187, %188
  %190 = and i32 %189, 16
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %184
  %193 = load %struct.net_device*, %struct.net_device** %4, align 8
  %194 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %195 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, 16
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)
  %201 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8* %200)
  br label %202

202:                                              ; preds = %192, %184, %176
  br label %203

203:                                              ; preds = %202, %166
  %204 = load %struct.net_device*, %struct.net_device** %4, align 8
  %205 = getelementptr inbounds %struct.net_device, %struct.net_device* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %240

208:                                              ; preds = %203
  %209 = load i32, i32* %6, align 4
  %210 = and i32 %209, 32768
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %208
  %213 = load i32, i32* %6, align 4
  %214 = and i32 %213, 2048
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = load %struct.net_device*, %struct.net_device** %4, align 8
  %218 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %217, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %222

219:                                              ; preds = %212
  %220 = load %struct.net_device*, %struct.net_device** %4, align 8
  %221 = call i32 @tc589_set_xcvr(%struct.net_device* %220, i32 2)
  br label %222

222:                                              ; preds = %219, %216
  br label %239

223:                                              ; preds = %208
  %224 = load i32, i32* %6, align 4
  %225 = and i32 %224, 16384
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %223
  %228 = load i32, i32* %6, align 4
  %229 = and i32 %228, 16
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %227
  %232 = load %struct.net_device*, %struct.net_device** %4, align 8
  %233 = call i32 @tc589_set_xcvr(%struct.net_device* %232, i32 1)
  br label %237

234:                                              ; preds = %227
  %235 = load %struct.net_device*, %struct.net_device** %4, align 8
  %236 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %235, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %237

237:                                              ; preds = %234, %231
  br label %238

238:                                              ; preds = %237, %223
  br label %239

239:                                              ; preds = %238, %222
  br label %240

240:                                              ; preds = %239, %203
  %241 = load i32, i32* %6, align 4
  %242 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %243 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %242, i32 0, i32 1
  store i32 %241, i32* %243, align 4
  br label %244

244:                                              ; preds = %240, %144
  %245 = call i32 @EL3WINDOW(i32 1)
  %246 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %247 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %246, i32 0, i32 3
  %248 = load i64, i64* %8, align 8
  %249 = call i32 @spin_unlock_irqrestore(i32* %247, i64 %248)
  br label %250

250:                                              ; preds = %244, %25
  %251 = load i8*, i8** @jiffies, align 8
  %252 = load i32, i32* @HZ, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr i8, i8* %251, i64 %253
  %255 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %256 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  store i8* %254, i8** %257, align 8
  %258 = load %struct.el3_private*, %struct.el3_private** %3, align 8
  %259 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %258, i32 0, i32 2
  %260 = call i32 @add_timer(%struct.TYPE_6__* %259)
  br label %261

261:                                              ; preds = %250, %68
  ret void
}

declare dso_local %struct.el3_private* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @el3_interrupt(i32, %struct.net_device*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i64 @time_before(i8*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @tc589_set_xcvr(%struct.net_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
