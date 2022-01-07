; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_xirc2ps_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_xirc2ps_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.local_info = type { i64, i32, i64 }
%struct.sk_buff = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@XIRCREG_CR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: interrupt %d at %#x.\0A\00", align 1
@XIRCREG_PR = common dso_local global i32 0, align 4
@XIRCREG_ISR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"%s: interrupt %d for dead card\0A\00", align 1
@XIRCREG_ESR = common dso_local global i32 0, align 4
@XIRCREG40_RXST0 = common dso_local global i32 0, align 4
@XIRCREG40_TXST0 = common dso_local global i32 0, align 4
@XIRCREG40_TXST1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"%s: ISR=%#2.2x ESR=%#2.2x RSR=%#2.2x TSR=%#4.4x\0A\00", align 1
@FullPktRcvd = common dso_local global i32 0, align 4
@XIRCREG0_RSR = common dso_local global i32 0, align 4
@maxrx_bytes = common dso_local global i32 0, align 4
@PktRxOk = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"%s: RX drop, too much done\0A\00", align 1
@XIRCREG0_RBC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"rsr=%#02x packet_length=%u\0A\00", align 1
@XIRCREG5_RHSA0 = common dso_local global i32 0, align 4
@XIRCREG_EDP = common dso_local global i32 0, align 4
@PhyPkt = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"rsr=%#02x\0A\00", align 1
@PktTooLong = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"%s: Packet too long\0A\00", align 1
@CRCErr = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"%s: CRC error\0A\00", align 1
@AlignErr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"%s: Alignment error\0A\00", align 1
@XIRCREG0_DO = common dso_local global i32 0, align 4
@ClearRxOvrun = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"receive overrun cleared\0A\00", align 1
@PktTxed = common dso_local global i32 0, align 4
@XIRCREG0_PTR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"PTR not changed?\0A\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"tx restarted due to excessive collisions\0A\00", align 1
@RestartTx = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"set maxrx=%u (rcvd=%u ticks=%lu)\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"set maxrx=%u\0A\00", align 1
@lockup_hack = common dso_local global i64 0, align 8
@EnableIntr = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @xirc2ps_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xirc2ps_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.local_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sk_buff*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = bitcast i8* %25 to %struct.net_device*
  store %struct.net_device* %26, %struct.net_device** %6, align 8
  %27 = load %struct.net_device*, %struct.net_device** %6, align 8
  %28 = call %struct.local_info* @netdev_priv(%struct.net_device* %27)
  store %struct.local_info* %28, %struct.local_info** %7, align 8
  %29 = load i32, i32* @jiffies, align 4
  store i32 %29, i32* %17, align 4
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = call i32 @netif_device_present(%struct.net_device* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %34, i32* %3, align 4
  br label %453

35:                                               ; preds = %2
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load %struct.local_info*, %struct.local_info** %7, align 8
  %40 = getelementptr inbounds %struct.local_info, %struct.local_info* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* @XIRCREG_CR, align 4
  %45 = call i32 @PutByte(i32 %44, i32 0)
  br label %46

46:                                               ; preds = %43, %35
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50, i32 %51)
  %53 = load i32, i32* @XIRCREG_PR, align 4
  %54 = call i32 @GetByte(i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* @XIRCREG_ISR, align 4
  %56 = call i32 @GetByte(i32 %55)
  store i32 %56, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %444, %46
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 255
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %64)
  br label %434

66:                                               ; preds = %57
  %67 = load i32, i32* @XIRCREG_ESR, align 4
  %68 = call i32 @GetByte(i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = call i32 @SelectPage(i32 64)
  %70 = load i32, i32* @XIRCREG40_RXST0, align 4
  %71 = call i32 @GetByte(i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* @XIRCREG40_RXST0, align 4
  %73 = load i32, i32* %13, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %74, 255
  %76 = call i32 @PutByte(i32 %72, i32 %75)
  %77 = load i32, i32* @XIRCREG40_TXST0, align 4
  %78 = call i32 @GetByte(i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* @XIRCREG40_TXST1, align 4
  %80 = call i32 @GetByte(i32 %79)
  %81 = shl i32 %80, 8
  %82 = load i32, i32* %14, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %14, align 4
  %84 = load i32, i32* @XIRCREG40_TXST0, align 4
  %85 = call i32 @PutByte(i32 %84, i32 0)
  %86 = load i32, i32* @XIRCREG40_TXST1, align 4
  %87 = call i32 @PutByte(i32 %86, i32 0)
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91, i32 %92, i32 %93, i32 %94)
  %96 = call i32 @SelectPage(i32 0)
  br label %97

97:                                               ; preds = %301, %66
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @FullPktRcvd, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %306

102:                                              ; preds = %97
  %103 = load i32, i32* @XIRCREG0_RSR, align 4
  %104 = call i32 @GetByte(i32 %103)
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @maxrx_bytes, align 4
  %107 = icmp ugt i32 %105, %106
  br i1 %107, label %108, label %123

108:                                              ; preds = %102
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* @PktRxOk, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %108
  %114 = load %struct.net_device*, %struct.net_device** %6, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load %struct.net_device*, %struct.net_device** %6, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  br label %256

123:                                              ; preds = %108, %102
  %124 = load i32, i32* %15, align 4
  %125 = load i32, i32* @PktRxOk, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %252

128:                                              ; preds = %123
  %129 = load i32, i32* @XIRCREG0_RBC, align 4
  %130 = call i32 @GetWord(i32 %129)
  store i32 %130, i32* %16, align 4
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %10, align 4
  %133 = add i32 %132, %131
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %16, align 4
  %136 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %134, i32 %135)
  %137 = load %struct.net_device*, %struct.net_device** %6, align 8
  %138 = load i32, i32* %16, align 4
  %139 = add i32 %138, 3
  %140 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %137, i32 %139)
  store %struct.sk_buff* %140, %struct.sk_buff** %18, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %142 = icmp ne %struct.sk_buff* %141, null
  br i1 %142, label %149, label %143

143:                                              ; preds = %128
  %144 = load %struct.net_device*, %struct.net_device** %6, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %251

149:                                              ; preds = %128
  %150 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %151 = call i32 @skb_reserve(%struct.sk_buff* %150, i32 2)
  %152 = load %struct.local_info*, %struct.local_info** %7, align 8
  %153 = getelementptr inbounds %struct.local_info, %struct.local_info* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %210

156:                                              ; preds = %149
  %157 = call i32 @SelectPage(i32 5)
  %158 = load i32, i32* @XIRCREG5_RHSA0, align 4
  %159 = call i32 @GetWord(i32 %158)
  store i32 %159, i32* %19, align 4
  %160 = call i32 @SelectPage(i32 0)
  %161 = load i32, i32* %19, align 4
  %162 = add i32 %161, 3
  store i32 %162, i32* %19, align 4
  %163 = load i32, i32* %19, align 4
  %164 = icmp uge i32 %163, 32768
  br i1 %164, label %165, label %166

165:                                              ; preds = %156
  store i32 0, i32* %19, align 4
  br label %166

166:                                              ; preds = %165, %156
  %167 = load i32, i32* %19, align 4
  %168 = load i32, i32* %16, align 4
  %169 = add i32 %167, %168
  %170 = icmp ugt i32 %169, 32768
  br i1 %170, label %171, label %198

171:                                              ; preds = %166
  %172 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %173 = load i32, i32* %16, align 4
  %174 = call i32* @skb_put(%struct.sk_buff* %172, i32 %173)
  store i32* %174, i32** %21, align 8
  store i32 0, i32* %20, align 4
  br label %175

175:                                              ; preds = %192, %171
  %176 = load i32, i32* %20, align 4
  %177 = load i32, i32* %16, align 4
  %178 = icmp ult i32 %176, %177
  br i1 %178, label %179, label %197

179:                                              ; preds = %175
  %180 = load i32, i32* @XIRCREG_EDP, align 4
  %181 = call i32 @GetByte(i32 %180)
  %182 = load i32*, i32** %21, align 8
  %183 = load i32, i32* %20, align 4
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %181, i32* %185, align 4
  %186 = load i32, i32* %19, align 4
  %187 = icmp eq i32 %186, 32768
  br i1 %187, label %188, label %191

188:                                              ; preds = %179
  store i32 0, i32* %19, align 4
  %189 = load i32, i32* %20, align 4
  %190 = add i32 %189, -1
  store i32 %190, i32* %20, align 4
  br label %191

191:                                              ; preds = %188, %179
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %20, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %20, align 4
  %195 = load i32, i32* %19, align 4
  %196 = add i32 %195, 1
  store i32 %196, i32* %19, align 4
  br label %175

197:                                              ; preds = %175
  br label %209

198:                                              ; preds = %166
  %199 = load i32, i32* %8, align 4
  %200 = load i32, i32* @XIRCREG_EDP, align 4
  %201 = add i32 %199, %200
  %202 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %203 = load i32, i32* %16, align 4
  %204 = call i32* @skb_put(%struct.sk_buff* %202, i32 %203)
  %205 = load i32, i32* %16, align 4
  %206 = add i32 %205, 1
  %207 = lshr i32 %206, 1
  %208 = call i32 @insw(i32 %201, i32* %204, i32 %207)
  br label %209

209:                                              ; preds = %198, %197
  br label %221

210:                                              ; preds = %149
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* @XIRCREG_EDP, align 4
  %213 = add i32 %211, %212
  %214 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %215 = load i32, i32* %16, align 4
  %216 = call i32* @skb_put(%struct.sk_buff* %214, i32 %215)
  %217 = load i32, i32* %16, align 4
  %218 = add i32 %217, 1
  %219 = lshr i32 %218, 1
  %220 = call i32 @insw(i32 %213, i32* %216, i32 %219)
  br label %221

221:                                              ; preds = %210, %209
  %222 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %223 = load %struct.net_device*, %struct.net_device** %6, align 8
  %224 = call i32 @eth_type_trans(%struct.sk_buff* %222, %struct.net_device* %223)
  %225 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %226 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %225, i32 0, i32 0
  store i32 %224, i32* %226, align 4
  %227 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %228 = call i32 @netif_rx(%struct.sk_buff* %227)
  %229 = load %struct.net_device*, %struct.net_device** %6, align 8
  %230 = getelementptr inbounds %struct.net_device, %struct.net_device* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 8
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %231, align 4
  %234 = load i32, i32* %16, align 4
  %235 = load %struct.net_device*, %struct.net_device** %6, align 8
  %236 = getelementptr inbounds %struct.net_device, %struct.net_device* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = add i32 %238, %234
  store i32 %239, i32* %237, align 4
  %240 = load i32, i32* %15, align 4
  %241 = load i32, i32* @PhyPkt, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %250, label %244

244:                                              ; preds = %221
  %245 = load %struct.net_device*, %struct.net_device** %6, align 8
  %246 = getelementptr inbounds %struct.net_device, %struct.net_device* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 7
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %244, %221
  br label %251

251:                                              ; preds = %250, %143
  br label %255

252:                                              ; preds = %123
  %253 = load i32, i32* %15, align 4
  %254 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %253)
  br label %255

255:                                              ; preds = %252, %251
  br label %256

256:                                              ; preds = %255, %113
  %257 = load i32, i32* %15, align 4
  %258 = load i32, i32* @PktTooLong, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %271

261:                                              ; preds = %256
  %262 = load %struct.net_device*, %struct.net_device** %6, align 8
  %263 = getelementptr inbounds %struct.net_device, %struct.net_device* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 6
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 4
  %267 = load %struct.net_device*, %struct.net_device** %6, align 8
  %268 = getelementptr inbounds %struct.net_device, %struct.net_device* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %269)
  br label %271

271:                                              ; preds = %261, %256
  %272 = load i32, i32* %15, align 4
  %273 = load i32, i32* @CRCErr, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %271
  %277 = load %struct.net_device*, %struct.net_device** %6, align 8
  %278 = getelementptr inbounds %struct.net_device, %struct.net_device* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %279, align 4
  %282 = load %struct.net_device*, %struct.net_device** %6, align 8
  %283 = getelementptr inbounds %struct.net_device, %struct.net_device* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %284)
  br label %286

286:                                              ; preds = %276, %271
  %287 = load i32, i32* %15, align 4
  %288 = load i32, i32* @AlignErr, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %301

291:                                              ; preds = %286
  %292 = load %struct.net_device*, %struct.net_device** %6, align 8
  %293 = getelementptr inbounds %struct.net_device, %struct.net_device* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 4
  %295 = load i32, i32* %294, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %294, align 4
  %297 = load %struct.net_device*, %struct.net_device** %6, align 8
  %298 = getelementptr inbounds %struct.net_device, %struct.net_device* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %299)
  br label %301

301:                                              ; preds = %291, %286
  %302 = load i32, i32* @XIRCREG0_DO, align 4
  %303 = call i32 @PutWord(i32 %302, i32 32768)
  %304 = load i32, i32* @XIRCREG_ESR, align 4
  %305 = call i32 @GetByte(i32 %304)
  store i32 %305, i32* %12, align 4
  br label %97

306:                                              ; preds = %97
  %307 = load i32, i32* %13, align 4
  %308 = and i32 %307, 16
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %320

310:                                              ; preds = %306
  %311 = load %struct.net_device*, %struct.net_device** %6, align 8
  %312 = getelementptr inbounds %struct.net_device, %struct.net_device* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %312, i32 0, i32 3
  %314 = load i32, i32* %313, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %313, align 4
  %316 = load i32, i32* @XIRCREG_CR, align 4
  %317 = load i32, i32* @ClearRxOvrun, align 4
  %318 = call i32 @PutByte(i32 %316, i32 %317)
  %319 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %320

320:                                              ; preds = %310, %306
  %321 = load i32, i32* %11, align 4
  %322 = load i32, i32* @PktTxed, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %366

325:                                              ; preds = %320
  %326 = load %struct.local_info*, %struct.local_info** %7, align 8
  %327 = getelementptr inbounds %struct.local_info, %struct.local_info* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 8
  store i32 %328, i32* %22, align 4
  %329 = load i32, i32* @XIRCREG0_PTR, align 4
  %330 = call i32 @GetByte(i32 %329)
  store i32 %330, i32* %23, align 4
  %331 = load i32, i32* %23, align 4
  %332 = load %struct.local_info*, %struct.local_info** %7, align 8
  %333 = getelementptr inbounds %struct.local_info, %struct.local_info* %332, i32 0, i32 1
  store i32 %331, i32* %333, align 8
  %334 = load i32, i32* %23, align 4
  %335 = load i32, i32* %22, align 4
  %336 = icmp ult i32 %334, %335
  br i1 %336, label %337, label %345

337:                                              ; preds = %325
  %338 = load i32, i32* %22, align 4
  %339 = sub i32 256, %338
  %340 = load %struct.net_device*, %struct.net_device** %6, align 8
  %341 = getelementptr inbounds %struct.net_device, %struct.net_device* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = add i32 %343, %339
  store i32 %344, i32* %342, align 4
  br label %363

345:                                              ; preds = %325
  %346 = load i32, i32* %22, align 4
  %347 = load i32, i32* %23, align 4
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %349, label %351

349:                                              ; preds = %345
  %350 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %362

351:                                              ; preds = %345
  %352 = load %struct.local_info*, %struct.local_info** %7, align 8
  %353 = getelementptr inbounds %struct.local_info, %struct.local_info* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* %22, align 4
  %356 = sub i32 %354, %355
  %357 = load %struct.net_device*, %struct.net_device** %6, align 8
  %358 = getelementptr inbounds %struct.net_device, %struct.net_device* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = add i32 %360, %356
  store i32 %361, i32* %359, align 4
  br label %362

362:                                              ; preds = %351, %349
  br label %363

363:                                              ; preds = %362, %337
  %364 = load %struct.net_device*, %struct.net_device** %6, align 8
  %365 = call i32 @netif_wake_queue(%struct.net_device* %364)
  br label %366

366:                                              ; preds = %363, %320
  %367 = load i32, i32* %14, align 4
  %368 = and i32 %367, 2
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %375

370:                                              ; preds = %366
  %371 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %372 = load i32, i32* @XIRCREG_CR, align 4
  %373 = load i32, i32* @RestartTx, align 4
  %374 = call i32 @PutByte(i32 %372, i32 %373)
  br label %375

375:                                              ; preds = %370, %366
  %376 = load i32, i32* %14, align 4
  %377 = and i32 %376, 64
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %385

379:                                              ; preds = %375
  %380 = load %struct.net_device*, %struct.net_device** %6, align 8
  %381 = getelementptr inbounds %struct.net_device, %struct.net_device* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %382, align 4
  br label %385

385:                                              ; preds = %379, %375
  %386 = load i32, i32* %10, align 4
  %387 = icmp ugt i32 %386, 1000
  br i1 %387, label %388, label %433

388:                                              ; preds = %385
  %389 = load i32, i32* @jiffies, align 4
  %390 = load i32, i32* %17, align 4
  %391 = sub nsw i32 %389, %390
  store i32 %391, i32* %24, align 4
  %392 = load i32, i32* %24, align 4
  %393 = load i32, i32* @HZ, align 4
  %394 = sdiv i32 %393, 10
  %395 = icmp sge i32 %392, %394
  br i1 %395, label %396, label %416

396:                                              ; preds = %388
  %397 = load i32, i32* %10, align 4
  %398 = load i32, i32* @HZ, align 4
  %399 = sdiv i32 %398, 10
  %400 = mul i32 %397, %399
  %401 = load i32, i32* %24, align 4
  %402 = udiv i32 %400, %401
  store i32 %402, i32* @maxrx_bytes, align 4
  %403 = load i32, i32* @maxrx_bytes, align 4
  %404 = icmp ult i32 %403, 2000
  br i1 %404, label %405, label %406

405:                                              ; preds = %396
  store i32 2000, i32* @maxrx_bytes, align 4
  br label %411

406:                                              ; preds = %396
  %407 = load i32, i32* @maxrx_bytes, align 4
  %408 = icmp ugt i32 %407, 22000
  br i1 %408, label %409, label %410

409:                                              ; preds = %406
  store i32 22000, i32* @maxrx_bytes, align 4
  br label %410

410:                                              ; preds = %409, %406
  br label %411

411:                                              ; preds = %410, %405
  %412 = load i32, i32* @maxrx_bytes, align 4
  %413 = load i32, i32* %10, align 4
  %414 = load i32, i32* %24, align 4
  %415 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %412, i32 %413, i32 %414)
  br label %432

416:                                              ; preds = %388
  %417 = load i32, i32* %24, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %431, label %419

419:                                              ; preds = %416
  %420 = load i32, i32* @maxrx_bytes, align 4
  %421 = icmp ult i32 %420, 22000
  br i1 %421, label %422, label %431

422:                                              ; preds = %419
  %423 = load i32, i32* @maxrx_bytes, align 4
  %424 = add i32 %423, 2000
  store i32 %424, i32* @maxrx_bytes, align 4
  %425 = load i32, i32* @maxrx_bytes, align 4
  %426 = icmp ugt i32 %425, 22000
  br i1 %426, label %427, label %428

427:                                              ; preds = %422
  store i32 22000, i32* @maxrx_bytes, align 4
  br label %428

428:                                              ; preds = %427, %422
  %429 = load i32, i32* @maxrx_bytes, align 4
  %430 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %429)
  br label %431

431:                                              ; preds = %428, %419, %416
  br label %432

432:                                              ; preds = %431, %411
  br label %433

433:                                              ; preds = %432, %385
  br label %434

434:                                              ; preds = %433, %60
  %435 = load i64, i64* @lockup_hack, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %446

437:                                              ; preds = %434
  %438 = load i32, i32* %11, align 4
  %439 = icmp ne i32 %438, 255
  br i1 %439, label %440, label %445

440:                                              ; preds = %437
  %441 = load i32, i32* @XIRCREG_ISR, align 4
  %442 = call i32 @GetByte(i32 %441)
  store i32 %442, i32* %11, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %445

444:                                              ; preds = %440
  br label %57

445:                                              ; preds = %440, %437
  br label %446

446:                                              ; preds = %445, %434
  %447 = load i32, i32* %9, align 4
  %448 = call i32 @SelectPage(i32 %447)
  %449 = load i32, i32* @XIRCREG_CR, align 4
  %450 = load i32, i32* @EnableIntr, align 4
  %451 = call i32 @PutByte(i32 %449, i32 %450)
  %452 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %452, i32* %3, align 4
  br label %453

453:                                              ; preds = %446, %33
  %454 = load i32, i32* %3, align 4
  ret i32 %454
}

declare dso_local %struct.local_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @PutByte(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @GetByte(i32) #1

declare dso_local i32 @SelectPage(i32) #1

declare dso_local i32 @GetWord(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @insw(i32, i32*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @PutWord(i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
