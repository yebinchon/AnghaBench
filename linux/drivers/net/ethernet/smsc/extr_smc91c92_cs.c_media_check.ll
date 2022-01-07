; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_media_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_media_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_private = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i64, i64, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32, %struct.net_device* }
%struct.net_device = type { i32, i64, i32 }
%struct.timer_list = type { i32 }

@media = common dso_local global i32 0, align 4
@BANK_SELECT = common dso_local global i64 0, align 8
@MC_RESET = common dso_local global i32 0, align 4
@MMU_CMD = common dso_local global i64 0, align 8
@INTERRUPT = common dso_local global i64 0, align 8
@EPH = common dso_local global i64 0, align 8
@EPH_LINK_OK = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i64 0, align 8
@CFG_AUI_SELECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"interrupt(s) dropped!\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@CFG_MII_SELECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"MII is missing!\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s link beat\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"found\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"lost\00", align 1
@TCR_FDUPLX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"autonegotiation complete: %dbaseT-%cD selected\0A\00", align 1
@TCR = common dso_local global i64 0, align 8
@EPH_16COL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"coax cable %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"problem\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"flipped to 10baseT\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"flipped to 10base2\0A\00", align 1
@smc = common dso_local global %struct.smc_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @media_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @media_check(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.smc_private*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %12 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %13 = ptrtoint %struct.smc_private* %12 to i32
  %14 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %15 = load i32, i32* @media, align 4
  %16 = call %struct.smc_private* @from_timer(i32 %13, %struct.timer_list* %14, i32 %15)
  store %struct.smc_private* %16, %struct.smc_private** %3, align 8
  %17 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %18 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %17, i32 0, i32 9
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %4, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  %24 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %25 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %24, i32 0, i32 5
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = load i64, i64* @BANK_SELECT, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @inw(i64 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i32 @netif_device_present(%struct.net_device* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %1
  br label %380

37:                                               ; preds = %1
  %38 = call i32 @SMC_SELECT_BANK(i32 2)
  %39 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %40 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %39, i32 0, i32 11
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load i32, i32* @MC_RESET, align 4
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = load i64, i64* @MMU_CMD, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @outw(i32 %44, i64 %48)
  %50 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %51 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %50, i32 0, i32 11
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %43, %37
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* @INTERRUPT, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @inw(i64 %56)
  store i32 %57, i32* %6, align 4
  %58 = call i32 @SMC_SELECT_BANK(i32 0)
  %59 = load i32, i32* %5, align 4
  %60 = zext i32 %59 to i64
  %61 = load i64, i64* @EPH, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @inw(i64 %62)
  %64 = load i32, i32* @EPH_LINK_OK, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %7, align 4
  %66 = call i32 @SMC_SELECT_BANK(i32 1)
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = load i64, i64* @CONFIG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @inw(i64 %70)
  %72 = load i32, i32* @CFG_AUI_SELECT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 2, i32 1
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @SMC_SELECT_BANK(i32 %79)
  %81 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %82 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %81, i32 0, i32 5
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %86 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = icmp ne i32 %87, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %52
  %91 = load i32, i32* %6, align 4
  %92 = ashr i32 %91, 8
  %93 = load i32, i32* %6, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %90
  %97 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %98 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %96
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @local_irq_save(i64 %105)
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.net_device*, %struct.net_device** %4, align 8
  %111 = call i32 @smc_interrupt(i32 %109, %struct.net_device* %110)
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @local_irq_restore(i64 %112)
  %114 = load i32, i32* @HZ, align 4
  %115 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %116 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %117

117:                                              ; preds = %104, %90, %52
  %118 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %119 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %117
  %123 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %124 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %124, align 8
  %127 = load i8*, i8** @jiffies, align 8
  %128 = load i32, i32* @HZ, align 4
  %129 = sdiv i32 %128, 100
  %130 = sext i32 %129 to i64
  %131 = getelementptr i8, i8* %127, i64 %130
  %132 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %133 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i8* %131, i8** %134, align 8
  %135 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %136 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %135, i32 0, i32 6
  %137 = call i32 @add_timer(%struct.TYPE_4__* %136)
  br label %397

138:                                              ; preds = %117
  %139 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %140 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %139, i32 0, i32 5
  %141 = load i64, i64* %10, align 8
  %142 = call i32 @spin_lock_irqsave(i32* %140, i64 %141)
  %143 = load i32, i32* %5, align 4
  %144 = zext i32 %143 to i64
  %145 = load i64, i64* @BANK_SELECT, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @inw(i64 %146)
  store i32 %147, i32* %8, align 4
  %148 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %149 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @CFG_MII_SELECT, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %251

154:                                              ; preds = %138
  %155 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %156 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %155, i32 0, i32 9
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %380

161:                                              ; preds = %154
  %162 = call i32 @SMC_SELECT_BANK(i32 3)
  %163 = load %struct.net_device*, %struct.net_device** %4, align 8
  %164 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %165 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %164, i32 0, i32 9
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @mdio_read(%struct.net_device* %163, i32 %167, i32 1)
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %161
  %172 = load i32, i32* %9, align 4
  %173 = icmp eq i32 %172, 65535
  br i1 %173, label %174, label %180

174:                                              ; preds = %171, %161
  %175 = load %struct.net_device*, %struct.net_device** %4, align 8
  %176 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %175, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %177 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %178 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %177, i32 0, i32 9
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  store i32 -1, i32* %179, align 8
  br label %380

180:                                              ; preds = %171
  %181 = load i32, i32* %9, align 4
  %182 = and i32 %181, 4
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %185 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %183, %186
  br i1 %187, label %188, label %250

188:                                              ; preds = %180
  %189 = load %struct.net_device*, %struct.net_device** %4, align 8
  %190 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %191 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %190, i32 0, i32 9
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @mdio_read(%struct.net_device* %189, i32 %193, i32 5)
  store i32 %194, i32* %11, align 4
  %195 = load %struct.net_device*, %struct.net_device** %4, align 8
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  %198 = zext i1 %197 to i64
  %199 = select i1 %197, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %200 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %195, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %199)
  %201 = load i32, i32* %11, align 4
  %202 = and i32 %201, 256
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %188
  %205 = load i32, i32* %11, align 4
  %206 = and i32 %205, 448
  %207 = icmp eq i32 %206, 64
  br i1 %207, label %208, label %210

208:                                              ; preds = %204, %188
  %209 = load i32, i32* @TCR_FDUPLX, align 4
  br label %211

210:                                              ; preds = %204
  br label %211

211:                                              ; preds = %210, %208
  %212 = phi i32 [ %209, %208 ], [ 0, %210 ]
  %213 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %214 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %213, i32 0, i32 3
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* %9, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %231

217:                                              ; preds = %211
  %218 = load %struct.net_device*, %struct.net_device** %4, align 8
  %219 = load i32, i32* %11, align 4
  %220 = and i32 %219, 384
  %221 = icmp ne i32 %220, 0
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i32 100, i32 10
  %224 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %225 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = icmp ne i32 %226, 0
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i32 70, i32 72
  %230 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %218, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i32 %223, i32 %229)
  br label %231

231:                                              ; preds = %217, %211
  %232 = call i32 @SMC_SELECT_BANK(i32 0)
  %233 = load i32, i32* %5, align 4
  %234 = zext i32 %233 to i64
  %235 = load i64, i64* @TCR, align 8
  %236 = add nsw i64 %234, %235
  %237 = call i32 @inw(i64 %236)
  %238 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %239 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = or i32 %237, %240
  %242 = load i32, i32* %5, align 4
  %243 = zext i32 %242 to i64
  %244 = load i64, i64* @TCR, align 8
  %245 = add nsw i64 %243, %244
  %246 = call i32 @outw(i32 %241, i64 %245)
  %247 = load i32, i32* %9, align 4
  %248 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %249 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %248, i32 0, i32 2
  store i32 %247, i32* %249, align 8
  br label %250

250:                                              ; preds = %231, %180
  br label %380

251:                                              ; preds = %138
  %252 = load i8*, i8** @jiffies, align 8
  %253 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %254 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %253, i32 0, i32 8
  %255 = load i64, i64* %254, align 8
  %256 = load i32, i32* @HZ, align 4
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %255, %257
  %259 = call i64 @time_after(i8* %252, i64 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %278

261:                                              ; preds = %251
  %262 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %263 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %262, i32 0, i32 7
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %273, label %266

266:                                              ; preds = %261
  %267 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %268 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @EPH_16COL, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %266, %261
  %274 = load i32, i32* @EPH_16COL, align 4
  %275 = load i32, i32* %7, align 4
  %276 = or i32 %275, %274
  store i32 %276, i32* %7, align 4
  br label %277

277:                                              ; preds = %273, %266
  br label %278

278:                                              ; preds = %277, %251
  %279 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %280 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %279, i32 0, i32 7
  store i64 0, i64* %280, align 8
  %281 = load i32, i32* %7, align 4
  %282 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %283 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %281, %284
  br i1 %285, label %286, label %379

286:                                              ; preds = %278
  %287 = load i32, i32* %7, align 4
  %288 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %289 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 8
  %291 = and i32 %287, %290
  %292 = and i32 %291, 1
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %314

294:                                              ; preds = %286
  %295 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %296 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* %7, align 4
  %299 = xor i32 %297, %298
  %300 = load i32, i32* @EPH_LINK_OK, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %314

303:                                              ; preds = %294
  %304 = load %struct.net_device*, %struct.net_device** %4, align 8
  %305 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %306 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* @EPH_LINK_OK, align 4
  %309 = and i32 %307, %308
  %310 = icmp ne i32 %309, 0
  %311 = zext i1 %310 to i64
  %312 = select i1 %310, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %313 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %304, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %312)
  br label %341

314:                                              ; preds = %294, %286
  %315 = load i32, i32* %7, align 4
  %316 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %317 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = and i32 %315, %318
  %320 = and i32 %319, 2
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %340

322:                                              ; preds = %314
  %323 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %324 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %323, i32 0, i32 4
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* %7, align 4
  %327 = xor i32 %325, %326
  %328 = load i32, i32* @EPH_16COL, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %340

331:                                              ; preds = %322
  %332 = load %struct.net_device*, %struct.net_device** %4, align 8
  %333 = load i32, i32* %7, align 4
  %334 = load i32, i32* @EPH_16COL, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  %337 = zext i1 %336 to i64
  %338 = select i1 %336, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)
  %339 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %332, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %338)
  br label %340

340:                                              ; preds = %331, %322, %314
  br label %341

341:                                              ; preds = %340, %303
  %342 = load %struct.net_device*, %struct.net_device** %4, align 8
  %343 = getelementptr inbounds %struct.net_device, %struct.net_device* %342, i32 0, i32 1
  %344 = load i64, i64* %343, align 8
  %345 = icmp eq i64 %344, 0
  br i1 %345, label %346, label %375

346:                                              ; preds = %341
  %347 = load i32, i32* %7, align 4
  %348 = and i32 %347, 1
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %362

350:                                              ; preds = %346
  %351 = load i32, i32* %7, align 4
  %352 = load i32, i32* @EPH_LINK_OK, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %358

355:                                              ; preds = %350
  %356 = load %struct.net_device*, %struct.net_device** %4, align 8
  %357 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %356, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %361

358:                                              ; preds = %350
  %359 = load %struct.net_device*, %struct.net_device** %4, align 8
  %360 = call i32 @smc_set_xcvr(%struct.net_device* %359, i32 2)
  br label %361

361:                                              ; preds = %358, %355
  br label %374

362:                                              ; preds = %346
  %363 = load i32, i32* %7, align 4
  %364 = load i32, i32* @EPH_16COL, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %370

367:                                              ; preds = %362
  %368 = load %struct.net_device*, %struct.net_device** %4, align 8
  %369 = call i32 @smc_set_xcvr(%struct.net_device* %368, i32 1)
  br label %373

370:                                              ; preds = %362
  %371 = load %struct.net_device*, %struct.net_device** %4, align 8
  %372 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %371, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %373

373:                                              ; preds = %370, %367
  br label %374

374:                                              ; preds = %373, %361
  br label %375

375:                                              ; preds = %374, %341
  %376 = load i32, i32* %7, align 4
  %377 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %378 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %377, i32 0, i32 4
  store i32 %376, i32* %378, align 8
  br label %379

379:                                              ; preds = %375, %278
  br label %380

380:                                              ; preds = %379, %250, %174, %160, %36
  %381 = load i8*, i8** @jiffies, align 8
  %382 = load i32, i32* @HZ, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr i8, i8* %381, i64 %383
  %385 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %386 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %385, i32 0, i32 6
  %387 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i32 0, i32 0
  store i8* %384, i8** %387, align 8
  %388 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %389 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %388, i32 0, i32 6
  %390 = call i32 @add_timer(%struct.TYPE_4__* %389)
  %391 = load i32, i32* %8, align 4
  %392 = call i32 @SMC_SELECT_BANK(i32 %391)
  %393 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %394 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %393, i32 0, i32 5
  %395 = load i64, i64* %10, align 8
  %396 = call i32 @spin_unlock_irqrestore(i32* %394, i64 %395)
  br label %397

397:                                              ; preds = %380, %122
  ret void
}

declare dso_local %struct.smc_private* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @smc_interrupt(i32, %struct.net_device*) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @mdio_read(%struct.net_device*, i32, i32) #1

declare dso_local i64 @time_after(i8*, i64) #1

declare dso_local i32 @smc_set_xcvr(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
