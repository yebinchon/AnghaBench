; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_ei_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_ei_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcnet_dev = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i8*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32, i32 }
%struct.timer_list = type { i32 }

@watchdog = common dso_local global i32 0, align 4
@DLINK_GPIO = common dso_local global i32 0, align 4
@EN0_ISR = common dso_local global i64 0, align 8
@ENISR_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"interrupt(s) dropped!\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@HAS_MII = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"MII is missing!\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%s link beat\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"found\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"lost\00", align 1
@IS_DL10022 = common dso_local global i32 0, align 4
@DLINK_DIAG = common dso_local global i64 0, align 8
@IS_DL10019 = common dso_local global i32 0, align 4
@DL19FDUPLX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"autonegotiation complete: %sbaseT-%cD selected\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"link partner did not autonegotiate\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"switched to %s transceiver\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"ethernet\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"PNA\00", align 1
@info = common dso_local global %struct.pcnet_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ei_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ei_watchdog(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.pcnet_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %9 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %10 = ptrtoint %struct.pcnet_dev* %9 to i32
  %11 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %12 = load i32, i32* @watchdog, align 4
  %13 = call %struct.pcnet_dev* @from_timer(i32 %10, %struct.timer_list* %11, i32 %12)
  store %struct.pcnet_dev* %13, %struct.pcnet_dev** %3, align 8
  %14 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %14, i32 0, i32 9
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %4, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @DLINK_GPIO, align 4
  %24 = add i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @netif_device_present(%struct.net_device* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %318

29:                                               ; preds = %1
  %30 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %31 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = icmp ne i32 %32, 0
  br i1 %34, label %35, label %61

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* @EN0_ISR, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @inb_p(i64 %39)
  %41 = load i32, i32* @ENISR_ALL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %35
  %45 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %46 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = call i32 @ei_irq_wrapper(i32 %55, %struct.net_device* %56)
  %58 = load i32, i32* @HZ, align 4
  %59 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %60 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %52, %35, %29
  %62 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %63 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %68 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 8
  %71 = load i8*, i8** @jiffies, align 8
  %72 = getelementptr i8, i8* %71, i64 1
  %73 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %74 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %73, i32 0, i32 6
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i8* %72, i8** %75, align 8
  %76 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %77 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %76, i32 0, i32 6
  %78 = call i32 @add_timer(%struct.TYPE_4__* %77)
  br label %329

79:                                               ; preds = %61
  %80 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %81 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @HAS_MII, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  br label %318

87:                                               ; preds = %79
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %90 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @mdio_read(i32 %88, i32 %91, i32 1)
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %95 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @mdio_read(i32 %93, i32 %96, i32 1)
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %87
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %101, 65535
  br i1 %102, label %103, label %123

103:                                              ; preds = %100, %87
  %104 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %105 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %110 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %109, i32 0, i32 3
  store i32 0, i32* %110, align 4
  %111 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %112 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %111, i32 0, i32 2
  store i32 0, i32* %112, align 8
  br label %122

113:                                              ; preds = %103
  %114 = load %struct.net_device*, %struct.net_device** %4, align 8
  %115 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i32, i32* @HAS_MII, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %119 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %113, %108
  br label %318

123:                                              ; preds = %100
  %124 = load i32, i32* %7, align 4
  %125 = and i32 %124, 4
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %128 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %126, %129
  br i1 %130, label %131, label %225

131:                                              ; preds = %123
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %134 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @mdio_read(i32 %132, i32 %135, i32 5)
  store i32 %136, i32* %8, align 4
  %137 = load %struct.net_device*, %struct.net_device** %4, align 8
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %142 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %137, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %141)
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %163

145:                                              ; preds = %131
  %146 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %147 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @IS_DL10022, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %145
  %153 = load i32, i32* %8, align 4
  %154 = and i32 %153, 320
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 4, i32 0
  %158 = load i32, i32* %5, align 4
  %159 = zext i32 %158 to i64
  %160 = load i64, i64* @DLINK_DIAG, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @outb(i32 %157, i64 %161)
  br label %187

163:                                              ; preds = %145, %131
  %164 = load i32, i32* %7, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %186

166:                                              ; preds = %163
  %167 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %168 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @IS_DL10019, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %166
  %174 = load %struct.net_device*, %struct.net_device** %4, align 8
  %175 = getelementptr inbounds %struct.net_device, %struct.net_device* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %8, align 4
  %178 = and i32 %177, 320
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %173
  %181 = load i32, i32* @DL19FDUPLX, align 4
  br label %183

182:                                              ; preds = %173
  br label %183

183:                                              ; preds = %182, %180
  %184 = phi i32 [ %181, %180 ], [ 0, %182 ]
  %185 = call i32 @write_asic(i32 %176, i32 4, i32 %184)
  br label %186

186:                                              ; preds = %183, %166, %163
  br label %187

187:                                              ; preds = %186, %152
  %188 = load i32, i32* %7, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %221

190:                                              ; preds = %187
  %191 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %192 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %195 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %193, %196
  br i1 %197, label %198, label %218

198:                                              ; preds = %190
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %198
  %202 = load %struct.net_device*, %struct.net_device** %4, align 8
  %203 = load i32, i32* %8, align 4
  %204 = and i32 %203, 384
  %205 = icmp ne i32 %204, 0
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %208 = load i32, i32* %8, align 4
  %209 = and i32 %208, 320
  %210 = icmp ne i32 %209, 0
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i32 70, i32 72
  %213 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %202, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i8* %207, i32 %212)
  br label %217

214:                                              ; preds = %198
  %215 = load %struct.net_device*, %struct.net_device** %4, align 8
  %216 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %215, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %201
  br label %218

218:                                              ; preds = %217, %190
  %219 = load %struct.net_device*, %struct.net_device** %4, align 8
  %220 = call i32 @NS8390_init(%struct.net_device* %219, i32 1)
  br label %221

221:                                              ; preds = %218, %187
  %222 = load i32, i32* %7, align 4
  %223 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %224 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %223, i32 0, i32 4
  store i32 %222, i32* %224, align 8
  br label %225

225:                                              ; preds = %221, %123
  %226 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %227 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %317

230:                                              ; preds = %225
  %231 = load i8*, i8** @jiffies, align 8
  %232 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %233 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %232, i32 0, i32 7
  %234 = load i8*, i8** %233, align 8
  %235 = load i32, i32* @HZ, align 4
  %236 = mul nsw i32 6, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr i8, i8* %234, i64 %237
  %239 = call i64 @time_after(i8* %231, i8* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %317

241:                                              ; preds = %230
  %242 = load i32, i32* %6, align 4
  %243 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %244 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @mdio_read(i32 %242, i32 %245, i32 1)
  %247 = and i32 %246, 4
  store i32 %247, i32* %7, align 4
  %248 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %249 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %252 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %250, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %241
  %256 = load i32, i32* %7, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %269, label %258

258:                                              ; preds = %255, %241
  %259 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %260 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %263 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = icmp ne i32 %261, %264
  br i1 %265, label %266, label %316

266:                                              ; preds = %258
  %267 = load i32, i32* %7, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %316, label %269

269:                                              ; preds = %266, %255
  %270 = load i32, i32* %6, align 4
  %271 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %272 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @mdio_write(i32 %270, i32 %273, i32 0, i32 1024)
  %275 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %276 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %275, i32 0, i32 5
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %279 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = xor i32 %277, %280
  %282 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %283 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = xor i32 %284, %281
  store i32 %285, i32* %283, align 8
  %286 = load %struct.net_device*, %struct.net_device** %4, align 8
  %287 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %288 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %291 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %289, %292
  %294 = zext i1 %293 to i64
  %295 = select i1 %293, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0)
  %296 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %286, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %295)
  %297 = load i32, i32* %6, align 4
  %298 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %299 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %302 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %305 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %303, %306
  %308 = zext i1 %307 to i64
  %309 = select i1 %307, i32 4096, i32 0
  %310 = call i32 @mdio_write(i32 %297, i32 %300, i32 0, i32 %309)
  %311 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %312 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %311, i32 0, i32 4
  store i32 0, i32* %312, align 8
  %313 = load i8*, i8** @jiffies, align 8
  %314 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %315 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %314, i32 0, i32 7
  store i8* %313, i8** %315, align 8
  br label %316

316:                                              ; preds = %269, %266, %258
  br label %317

317:                                              ; preds = %316, %230, %225
  br label %318

318:                                              ; preds = %317, %122, %86, %28
  %319 = load i8*, i8** @jiffies, align 8
  %320 = load i32, i32* @HZ, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr i8, i8* %319, i64 %321
  %323 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %324 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %323, i32 0, i32 6
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  store i8* %322, i8** %325, align 8
  %326 = load %struct.pcnet_dev*, %struct.pcnet_dev** %3, align 8
  %327 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %326, i32 0, i32 6
  %328 = call i32 @add_timer(%struct.TYPE_4__* %327)
  br label %329

329:                                              ; preds = %318, %66
  ret void
}

declare dso_local %struct.pcnet_dev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @ei_irq_wrapper(i32, %struct.net_device*) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

declare dso_local i32 @mdio_read(i32, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @write_asic(i32, i32, i32) #1

declare dso_local i32 @NS8390_init(%struct.net_device*, i32) #1

declare dso_local i64 @time_after(i8*, i8*) #1

declare dso_local i32 @mdio_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
