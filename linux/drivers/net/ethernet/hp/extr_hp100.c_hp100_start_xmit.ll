; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hp100_private = type { i32, i64, i32, i32, i32 }

@TX_MEM_FREE = common dso_local global i32 0, align 4
@TX_PKT_CNT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@HP100_LAN_100 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"hp100: %s: login to 100Mb/s hub retry\0A\00", align 1
@HP100_LAN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"hp100: %s: link down detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"hp100: %s: cable change 10Mb/s <-> 100Mb/s detected\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"hp100: %s: interface reset\0A\00", align 1
@OPTION_MSW = common dso_local global i32 0, align 4
@HP100_TX_CMD = common dso_local global i32 0, align 4
@IRQ_STATUS = common dso_local global i32 0, align 4
@HP100_TX_COMPLETE = common dso_local global i32 0, align 4
@HP100_MIN_PACKET_SIZE = common dso_local global i32 0, align 4
@DATA32 = common dso_local global i32 0, align 4
@FRAGMENT_LEN = common dso_local global i32 0, align 4
@HP100_REG_DATA32 = common dso_local global i64 0, align 8
@HP100_SET_LB = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@IRQ_MASK = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @hp100_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp100_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hp100_private*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.hp100_private* @netdev_priv(%struct.net_device* %15)
  store %struct.hp100_private* %16, %struct.hp100_private** %11, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %293

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call i64 @hp100_check_lan(%struct.net_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %293

27:                                               ; preds = %22
  %28 = load i32, i32* @TX_MEM_FREE, align 4
  %29 = call i32 @hp100_inl(i32 %28)
  %30 = and i32 %29, 2147483647
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sdiv i32 %31, 2
  %33 = sub nsw i32 %32, 539
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 16
  %38 = icmp sgt i32 %33, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i32, i32* @TX_PKT_CNT, align 4
  %41 = call i32 @hp100_inb(i32 %40)
  %42 = icmp slt i32 %41, 255
  br i1 %42, label %153, label %43

43:                                               ; preds = %39, %27
  %44 = load i32, i32* @jiffies, align 4
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = call i64 @dev_trans_start(%struct.net_device* %45)
  %47 = load i64, i64* @HZ, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i64 @time_before(i32 %44, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %293

52:                                               ; preds = %43
  %53 = load %struct.hp100_private*, %struct.hp100_private** %11, align 8
  %54 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @HP100_LAN_100, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %52
  %59 = load %struct.hp100_private*, %struct.hp100_private** %11, align 8
  %60 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %58
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = call i32 @hp100_stop_interface(%struct.net_device* %68)
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = call i8* @hp100_login_to_vg_hub(%struct.net_device* %70, i32 0)
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.hp100_private*, %struct.hp100_private** %11, align 8
  %74 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  %75 = load %struct.net_device*, %struct.net_device** %5, align 8
  %76 = call i32 @hp100_start_interface(%struct.net_device* %75)
  br label %152

77:                                               ; preds = %58, %52
  %78 = load %struct.hp100_private*, %struct.hp100_private** %11, align 8
  %79 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %78, i32 0, i32 3
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @spin_lock_irqsave(i32* %79, i64 %80)
  %82 = call i32 (...) @hp100_ints_off()
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = call i32 @hp100_sense_lan(%struct.net_device* %83)
  store i32 %84, i32* %7, align 4
  %85 = call i32 (...) @hp100_ints_on()
  %86 = load %struct.hp100_private*, %struct.hp100_private** %11, align 8
  %87 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %86, i32 0, i32 3
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @HP100_LAN_ERR, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %77
  %94 = load %struct.net_device*, %struct.net_device** %5, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %151

98:                                               ; preds = %77
  %99 = load %struct.hp100_private*, %struct.hp100_private** %11, align 8
  %100 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %128

104:                                              ; preds = %98
  %105 = load %struct.net_device*, %struct.net_device** %5, align 8
  %106 = getelementptr inbounds %struct.net_device, %struct.net_device* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.hp100_private*, %struct.hp100_private** %11, align 8
  %111 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.net_device*, %struct.net_device** %5, align 8
  %113 = call i32 @hp100_stop_interface(%struct.net_device* %112)
  %114 = load %struct.hp100_private*, %struct.hp100_private** %11, align 8
  %115 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @HP100_LAN_100, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %104
  %120 = load %struct.net_device*, %struct.net_device** %5, align 8
  %121 = call i8* @hp100_login_to_vg_hub(%struct.net_device* %120, i32 0)
  %122 = ptrtoint i8* %121 to i64
  %123 = load %struct.hp100_private*, %struct.hp100_private** %11, align 8
  %124 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %123, i32 0, i32 1
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %119, %104
  %126 = load %struct.net_device*, %struct.net_device** %5, align 8
  %127 = call i32 @hp100_start_interface(%struct.net_device* %126)
  br label %150

128:                                              ; preds = %98
  %129 = load %struct.net_device*, %struct.net_device** %5, align 8
  %130 = getelementptr inbounds %struct.net_device, %struct.net_device* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %131)
  %133 = load %struct.net_device*, %struct.net_device** %5, align 8
  %134 = call i32 @hp100_stop_interface(%struct.net_device* %133)
  %135 = load %struct.hp100_private*, %struct.hp100_private** %11, align 8
  %136 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @HP100_LAN_100, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %128
  %141 = load %struct.net_device*, %struct.net_device** %5, align 8
  %142 = call i8* @hp100_login_to_vg_hub(%struct.net_device* %141, i32 0)
  %143 = ptrtoint i8* %142 to i64
  %144 = load %struct.hp100_private*, %struct.hp100_private** %11, align 8
  %145 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %140, %128
  %147 = load %struct.net_device*, %struct.net_device** %5, align 8
  %148 = call i32 @hp100_start_interface(%struct.net_device* %147)
  %149 = call i32 @mdelay(i32 1)
  br label %150

150:                                              ; preds = %146, %125
  br label %151

151:                                              ; preds = %150, %93
  br label %152

152:                                              ; preds = %151, %63
  br label %293

153:                                              ; preds = %39
  store i32 0, i32* %7, align 4
  br label %154

154:                                              ; preds = %166, %153
  %155 = load i32, i32* %7, align 4
  %156 = icmp slt i32 %155, 6000
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load i32, i32* @OPTION_MSW, align 4
  %159 = call i32 @hp100_inb(i32 %158)
  %160 = load i32, i32* @HP100_TX_CMD, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br label %163

163:                                              ; preds = %157, %154
  %164 = phi i1 [ false, %154 ], [ %162, %157 ]
  br i1 %164, label %165, label %169

165:                                              ; preds = %163
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %7, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %7, align 4
  br label %154

169:                                              ; preds = %163
  %170 = load %struct.hp100_private*, %struct.hp100_private** %11, align 8
  %171 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %170, i32 0, i32 3
  %172 = load i64, i64* %6, align 8
  %173 = call i32 @spin_lock_irqsave(i32* %171, i64 %172)
  %174 = call i32 (...) @hp100_ints_off()
  %175 = load i32, i32* @IRQ_STATUS, align 4
  %176 = call i32 @hp100_inw(i32 %175)
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* @HP100_TX_COMPLETE, align 4
  %178 = load i32, i32* @IRQ_STATUS, align 4
  %179 = call i32 @hp100_outw(i32 %177, i32 %178)
  %180 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @HP100_MIN_PACKET_SIZE, align 4
  %184 = icmp sge i32 %182, %183
  %185 = zext i1 %184 to i32
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %169
  %189 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  br label %194

192:                                              ; preds = %169
  %193 = load i32, i32* @HP100_MIN_PACKET_SIZE, align 4
  br label %194

194:                                              ; preds = %192, %188
  %195 = phi i32 [ %191, %188 ], [ %193, %192 ]
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* @DATA32, align 4
  %198 = call i32 @hp100_outw(i32 %196, i32 %197)
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @FRAGMENT_LEN, align 4
  %201 = call i32 @hp100_outw(i32 %199, i32 %200)
  %202 = load %struct.hp100_private*, %struct.hp100_private** %11, align 8
  %203 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 2
  br i1 %205, label %206, label %232

206:                                              ; preds = %194
  %207 = load %struct.hp100_private*, %struct.hp100_private** %11, align 8
  %208 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %211 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %214 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, 3
  %217 = and i32 %216, -4
  %218 = call i32 @memcpy_toio(i32 %209, i32 %212, i32 %217)
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %231, label %221

221:                                              ; preds = %206
  %222 = load %struct.hp100_private*, %struct.hp100_private** %11, align 8
  %223 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @HP100_MIN_PACKET_SIZE, align 4
  %226 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %227 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = sub nsw i32 %225, %228
  %230 = call i32 @memset_io(i32 %224, i32 0, i32 %229)
  br label %231

231:                                              ; preds = %221, %206
  br label %266

232:                                              ; preds = %194
  %233 = load i32, i32* %9, align 4
  %234 = sext i32 %233 to i64
  %235 = load i64, i64* @HP100_REG_DATA32, align 8
  %236 = add nsw i64 %234, %235
  %237 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %238 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %241 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = add nsw i32 %242, 3
  %244 = ashr i32 %243, 2
  %245 = call i32 @outsl(i64 %236, i32 %239, i32 %244)
  %246 = load i32, i32* %8, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %265, label %248

248:                                              ; preds = %232
  %249 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %250 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, 3
  %253 = and i32 %252, -4
  store i32 %253, i32* %7, align 4
  br label %254

254:                                              ; preds = %261, %248
  %255 = load i32, i32* %7, align 4
  %256 = load i32, i32* @HP100_MIN_PACKET_SIZE, align 4
  %257 = icmp slt i32 %255, %256
  br i1 %257, label %258, label %264

258:                                              ; preds = %254
  %259 = load i32, i32* @DATA32, align 4
  %260 = call i32 @hp100_outl(i32 0, i32 %259)
  br label %261

261:                                              ; preds = %258
  %262 = load i32, i32* %7, align 4
  %263 = add nsw i32 %262, 4
  store i32 %263, i32* %7, align 4
  br label %254

264:                                              ; preds = %254
  br label %265

265:                                              ; preds = %264, %232
  br label %266

266:                                              ; preds = %265, %231
  %267 = load i32, i32* @HP100_TX_CMD, align 4
  %268 = load i32, i32* @HP100_SET_LB, align 4
  %269 = or i32 %267, %268
  %270 = load i32, i32* @OPTION_MSW, align 4
  %271 = call i32 @hp100_outb(i32 %269, i32 %270)
  %272 = load %struct.net_device*, %struct.net_device** %5, align 8
  %273 = getelementptr inbounds %struct.net_device, %struct.net_device* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 4
  %277 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %278 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.net_device*, %struct.net_device** %5, align 8
  %281 = getelementptr inbounds %struct.net_device, %struct.net_device* %280, i32 0, i32 2
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = add nsw i32 %283, %279
  store i32 %284, i32* %282, align 4
  %285 = call i32 (...) @hp100_ints_on()
  %286 = load %struct.hp100_private*, %struct.hp100_private** %11, align 8
  %287 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %286, i32 0, i32 3
  %288 = load i64, i64* %6, align 8
  %289 = call i32 @spin_unlock_irqrestore(i32* %287, i64 %288)
  %290 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %291 = call i32 @dev_consume_skb_any(%struct.sk_buff* %290)
  %292 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %292, i32* %3, align 4
  br label %297

293:                                              ; preds = %152, %51, %26, %21
  %294 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %295 = call i32 @dev_kfree_skb(%struct.sk_buff* %294)
  %296 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %296, i32* %3, align 4
  br label %297

297:                                              ; preds = %293, %266
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local %struct.hp100_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @hp100_check_lan(%struct.net_device*) #1

declare dso_local i32 @hp100_inl(i32) #1

declare dso_local i32 @hp100_inb(i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i64 @dev_trans_start(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @hp100_stop_interface(%struct.net_device*) #1

declare dso_local i8* @hp100_login_to_vg_hub(%struct.net_device*, i32) #1

declare dso_local i32 @hp100_start_interface(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @hp100_ints_off(...) #1

declare dso_local i32 @hp100_sense_lan(%struct.net_device*) #1

declare dso_local i32 @hp100_ints_on(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @hp100_inw(i32) #1

declare dso_local i32 @hp100_outw(i32, i32) #1

declare dso_local i32 @memcpy_toio(i32, i32, i32) #1

declare dso_local i32 @memset_io(i32, i32, i32) #1

declare dso_local i32 @outsl(i64, i32, i32) #1

declare dso_local i32 @hp100_outl(i32, i32) #1

declare dso_local i32 @hp100_outb(i32, i32) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
