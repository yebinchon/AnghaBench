; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_ether3.c_ether3_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_ether3.c_ether3_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats, i32*, i32 }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@buffer_read = common dso_local global i32 0, align 4
@RXSTAT_DONE = common dso_local global i32 0, align 4
@RXHDR_CHAINCONTINUE = common dso_local global i32 0, align 4
@RXHDR_RECEIVE = common dso_local global i32 0, align 4
@RX_START = common dso_local global i32 0, align 4
@RX_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%s: bad next pointer @%04X: \00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%02X %02X %02X %02X \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@REG_RECVEND = common dso_local global i32 0, align 4
@RXSTAT_OVERSIZE = common dso_local global i32 0, align 4
@RXSTAT_CRCERROR = common dso_local global i32 0, align 4
@RXSTAT_DRIBBLEERROR = common dso_local global i32 0, align 4
@RXSTAT_SHORTPACKET = common dso_local global i32 0, align 4
@REG_STATUS = common dso_local global i32 0, align 4
@STAT_RXON = common dso_local global i32 0, align 4
@REG_RECVPTR = common dso_local global i32 0, align 4
@CMD_RXON = common dso_local global i32 0, align 4
@REG_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ether3_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether3_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.net_device_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call %struct.TYPE_4__* @priv(%struct.net_device* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @ether3_ledon(%struct.net_device* %20)
  br label %22

22:                                               ; preds = %284, %2
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = load i32, i32* @buffer_read, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ether3_setbuffer(%struct.net_device* %23, i32 %24, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @ether3_readword(%struct.net_device* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @ether3_readword(%struct.net_device* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @RXSTAT_DONE, align 4
  %33 = load i32, i32* @RXHDR_CHAINCONTINUE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @RXHDR_RECEIVE, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %31, %36
  %38 = load i32, i32* @RXSTAT_DONE, align 4
  %39 = load i32, i32* @RXHDR_CHAINCONTINUE, align 4
  %40 = or i32 %38, %39
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %45, label %42

42:                                               ; preds = %22
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42, %22
  br label %288

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @ntohs(i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = load i32, i32* @buffer_read, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ether3_setbuffer(%struct.net_device* %51, i32 %52, i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %57 = getelementptr inbounds i8, i8* %56, i64 2
  %58 = call i32 @ether3_readbuffer(%struct.net_device* %55, i8* %57, i32 12)
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @RX_START, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %46
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @RX_END, align 4
  %65 = icmp uge i32 %63, %64
  br i1 %65, label %66, label %103

66:                                               ; preds = %62, %46
  %67 = load %struct.net_device*, %struct.net_device** %3, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = call %struct.TYPE_4__* @priv(%struct.net_device* %70)
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = lshr i32 %75, 8
  %77 = load i32, i32* %5, align 4
  %78 = and i32 %77, 255
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, 255
  %81 = load i32, i32* %8, align 4
  %82 = lshr i32 %81, 8
  %83 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %76, i32 %78, i32 %80, i32 %82)
  store i32 2, i32* %11, align 4
  br label %84

84:                                               ; preds = %94, %66
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 14
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  br label %84

97:                                               ; preds = %84
  %98 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = call %struct.TYPE_4__* @priv(%struct.net_device* %99)
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %5, align 4
  br label %288

103:                                              ; preds = %62
  %104 = load %struct.net_device*, %struct.net_device** %3, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = bitcast i32* %107 to i64*
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 8
  %111 = bitcast i8* %110 to i64*
  %112 = load i64, i64* %111, align 8
  %113 = xor i64 %109, %112
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %136, label %115

115:                                              ; preds = %103
  %116 = load %struct.net_device*, %struct.net_device** %3, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 4
  %120 = bitcast i32* %119 to i16*
  %121 = load i16, i16* %120, align 2
  %122 = zext i16 %121 to i32
  %123 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 12
  %124 = bitcast i8* %123 to i16*
  %125 = load i16, i16* %124, align 4
  %126 = zext i16 %125 to i32
  %127 = xor i32 %122, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %115
  %130 = load i32, i32* %4, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %5, align 4
  %133 = lshr i32 %132, 8
  %134 = load i32, i32* @REG_RECVEND, align 4
  %135 = call i32 @ether3_outw(i32 %133, i32 %134)
  br label %283

136:                                              ; preds = %115, %103
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @RXSTAT_OVERSIZE, align 4
  %139 = load i32, i32* @RXSTAT_CRCERROR, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @RXSTAT_DRIBBLEERROR, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @RXSTAT_SHORTPACKET, align 4
  %144 = or i32 %142, %143
  %145 = and i32 %137, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %231, label %147

147:                                              ; preds = %136
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %7, align 4
  %150 = sub i32 %148, %149
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ule i32 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %147
  %155 = load i32, i32* @RX_END, align 4
  %156 = load i32, i32* @RX_START, align 4
  %157 = sub i32 %155, %156
  %158 = load i32, i32* %12, align 4
  %159 = add i32 %158, %157
  store i32 %159, i32* %12, align 4
  br label %160

160:                                              ; preds = %154, %147
  %161 = load %struct.net_device*, %struct.net_device** %3, align 8
  %162 = load i32, i32* %12, align 4
  %163 = add i32 %162, 2
  %164 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %161, i32 %163)
  store %struct.sk_buff* %164, %struct.sk_buff** %13, align 8
  %165 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %166 = icmp ne %struct.sk_buff* %165, null
  br i1 %166, label %167, label %220

167:                                              ; preds = %160
  %168 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %169 = call i32 @skb_reserve(%struct.sk_buff* %168, i32 2)
  %170 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %171 = load i32, i32* %12, align 4
  %172 = call i8* @skb_put(%struct.sk_buff* %170, i32 %171)
  store i8* %172, i8** %14, align 8
  %173 = load %struct.net_device*, %struct.net_device** %3, align 8
  %174 = load i8*, i8** %14, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 12
  %176 = load i32, i32* %12, align 4
  %177 = sub i32 %176, 12
  %178 = call i32 @ether3_readbuffer(%struct.net_device* %173, i8* %175, i32 %177)
  %179 = load i32, i32* %5, align 4
  %180 = lshr i32 %179, 8
  %181 = load i32, i32* @REG_RECVEND, align 4
  %182 = call i32 @ether3_outw(i32 %180, i32 %181)
  %183 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %184 = getelementptr inbounds i8, i8* %183, i64 2
  %185 = bitcast i8* %184 to i16*
  %186 = load i16, i16* %185, align 2
  %187 = load i8*, i8** %14, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 0
  %189 = bitcast i8* %188 to i16*
  store i16 %186, i16* %189, align 2
  %190 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %191 = getelementptr inbounds i8, i8* %190, i64 4
  %192 = bitcast i8* %191 to i64*
  %193 = load i64, i64* %192, align 8
  %194 = load i8*, i8** %14, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 2
  %196 = bitcast i8* %195 to i64*
  store i64 %193, i64* %196, align 8
  %197 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %198 = getelementptr inbounds i8, i8* %197, i64 8
  %199 = bitcast i8* %198 to i64*
  %200 = load i64, i64* %199, align 8
  %201 = load i8*, i8** %14, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 6
  %203 = bitcast i8* %202 to i64*
  store i64 %200, i64* %203, align 8
  %204 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %205 = getelementptr inbounds i8, i8* %204, i64 12
  %206 = bitcast i8* %205 to i16*
  %207 = load i16, i16* %206, align 2
  %208 = load i8*, i8** %14, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 10
  %210 = bitcast i8* %209 to i16*
  store i16 %207, i16* %210, align 2
  %211 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %212 = load %struct.net_device*, %struct.net_device** %3, align 8
  %213 = call i32 @eth_type_trans(%struct.sk_buff* %211, %struct.net_device* %212)
  %214 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %215 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %214, i32 0, i32 0
  store i32 %213, i32* %215, align 4
  %216 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %217 = call i32 @netif_rx(%struct.sk_buff* %216)
  %218 = load i32, i32* %6, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %6, align 4
  br label %230

220:                                              ; preds = %160
  %221 = load i32, i32* %5, align 4
  %222 = lshr i32 %221, 8
  %223 = load i32, i32* @REG_RECVEND, align 4
  %224 = call i32 @ether3_outw(i32 %222, i32 %223)
  %225 = load %struct.net_device*, %struct.net_device** %3, align 8
  %226 = getelementptr inbounds %struct.net_device, %struct.net_device* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 4
  br label %289

230:                                              ; preds = %167
  br label %282

231:                                              ; preds = %136
  %232 = load %struct.net_device*, %struct.net_device** %3, align 8
  %233 = getelementptr inbounds %struct.net_device, %struct.net_device* %232, i32 0, i32 0
  store %struct.net_device_stats* %233, %struct.net_device_stats** %15, align 8
  %234 = load i32, i32* %5, align 4
  %235 = lshr i32 %234, 8
  %236 = load i32, i32* @REG_RECVEND, align 4
  %237 = call i32 @ether3_outw(i32 %235, i32 %236)
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @RXSTAT_OVERSIZE, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %231
  %243 = load %struct.net_device_stats*, %struct.net_device_stats** %15, align 8
  %244 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %243, i32 0, i32 6
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %244, align 4
  br label %247

247:                                              ; preds = %242, %231
  %248 = load i32, i32* %8, align 4
  %249 = load i32, i32* @RXSTAT_CRCERROR, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %247
  %253 = load %struct.net_device_stats*, %struct.net_device_stats** %15, align 8
  %254 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %252, %247
  %258 = load i32, i32* %8, align 4
  %259 = load i32, i32* @RXSTAT_DRIBBLEERROR, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %257
  %263 = load %struct.net_device_stats*, %struct.net_device_stats** %15, align 8
  %264 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 4
  br label %267

267:                                              ; preds = %262, %257
  %268 = load i32, i32* %8, align 4
  %269 = load i32, i32* @RXSTAT_SHORTPACKET, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %267
  %273 = load %struct.net_device_stats*, %struct.net_device_stats** %15, align 8
  %274 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 4
  br label %277

277:                                              ; preds = %272, %267
  %278 = load %struct.net_device_stats*, %struct.net_device_stats** %15, align 8
  %279 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %279, align 4
  br label %282

282:                                              ; preds = %277, %230
  br label %283

283:                                              ; preds = %282, %129
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %4, align 4
  %286 = add i32 %285, -1
  store i32 %286, i32* %4, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %22, label %288

288:                                              ; preds = %284, %97, %45
  br label %289

289:                                              ; preds = %288, %220
  %290 = load i32, i32* %6, align 4
  %291 = load %struct.net_device*, %struct.net_device** %3, align 8
  %292 = getelementptr inbounds %struct.net_device, %struct.net_device* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = add i32 %294, %290
  store i32 %295, i32* %293, align 8
  %296 = load i32, i32* %5, align 4
  %297 = load %struct.net_device*, %struct.net_device** %3, align 8
  %298 = call %struct.TYPE_4__* @priv(%struct.net_device* %297)
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 0
  store i32 %296, i32* %299, align 4
  %300 = load i32, i32* @REG_STATUS, align 4
  %301 = call i32 @ether3_inw(i32 %300)
  %302 = load i32, i32* @STAT_RXON, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %323, label %305

305:                                              ; preds = %289
  %306 = load %struct.net_device*, %struct.net_device** %3, align 8
  %307 = getelementptr inbounds %struct.net_device, %struct.net_device* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %308, align 4
  %311 = load i32, i32* %5, align 4
  %312 = load i32, i32* @REG_RECVPTR, align 4
  %313 = call i32 @ether3_outw(i32 %311, i32 %312)
  %314 = load %struct.net_device*, %struct.net_device** %3, align 8
  %315 = call %struct.TYPE_4__* @priv(%struct.net_device* %314)
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @CMD_RXON, align 4
  %320 = or i32 %318, %319
  %321 = load i32, i32* @REG_COMMAND, align 4
  %322 = call i32 @ether3_outw(i32 %320, i32 %321)
  br label %323

323:                                              ; preds = %305, %289
  %324 = load i32, i32* %4, align 4
  ret i32 %324
}

declare dso_local %struct.TYPE_4__* @priv(%struct.net_device*) #1

declare dso_local i32 @ether3_ledon(%struct.net_device*) #1

declare dso_local i32 @ether3_setbuffer(%struct.net_device*, i32, i32) #1

declare dso_local i32 @ether3_readword(%struct.net_device*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ether3_readbuffer(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @ether3_outw(i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @ether3_inw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
