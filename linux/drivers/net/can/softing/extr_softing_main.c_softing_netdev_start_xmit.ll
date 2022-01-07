; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_netdev_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_main.c_softing_netdev_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.softing_priv = type { %struct.TYPE_5__, i64, %struct.softing* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.softing = type { %struct.net_device**, %struct.TYPE_6__, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.can_frame = type { i32, i32, i32* }

@DPRAM_TX_SIZE = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@TXMAX = common dso_local global i64 0, align 8
@TX_ECHO_SKB_MAX = common dso_local global i64 0, align 8
@DPRAM_TX_WR = common dso_local global i64 0, align 8
@DPRAM_TX_RD = common dso_local global i64 0, align 8
@CMD_TX = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@CMD_RTR = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CMD_XTD = common dso_local global i32 0, align 4
@CMD_BUS2 = common dso_local global i32 0, align 4
@DPRAM_TX = common dso_local global i32 0, align 4
@DPRAM_TX_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @softing_netdev_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @softing_netdev_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.softing_priv*, align 8
  %7 = alloca %struct.softing*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.can_frame*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.softing_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.softing_priv* %18, %struct.softing_priv** %6, align 8
  %19 = load %struct.softing_priv*, %struct.softing_priv** %6, align 8
  %20 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %19, i32 0, i32 2
  %21 = load %struct.softing*, %struct.softing** %20, align 8
  store %struct.softing* %21, %struct.softing** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.can_frame*
  store %struct.can_frame* %25, %struct.can_frame** %12, align 8
  %26 = load i32, i32* @DPRAM_TX_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %13, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i64 @can_dropped_invalid_skb(%struct.net_device* %30, %struct.sk_buff* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %292

36:                                               ; preds = %2
  %37 = load %struct.softing*, %struct.softing** %7, align 8
  %38 = getelementptr inbounds %struct.softing, %struct.softing* %37, i32 0, i32 2
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %40, i32* %8, align 4
  %41 = load %struct.softing*, %struct.softing** %7, align 8
  %42 = getelementptr inbounds %struct.softing, %struct.softing* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %36
  %47 = load %struct.softing*, %struct.softing** %7, align 8
  %48 = getelementptr inbounds %struct.softing, %struct.softing* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @TXMAX, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %46
  %54 = load %struct.softing_priv*, %struct.softing_priv** %6, align 8
  %55 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @TX_ECHO_SKB_MAX, align 8
  %59 = icmp sge i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53, %46, %36
  br label %242

61:                                               ; preds = %53
  %62 = load %struct.softing*, %struct.softing** %7, align 8
  %63 = getelementptr inbounds %struct.softing, %struct.softing* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @DPRAM_TX_WR, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = call i32 @ioread8(i32* %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.softing*, %struct.softing** %7, align 8
  %69 = getelementptr inbounds %struct.softing, %struct.softing* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @DPRAM_TX_RD, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = call i32 @ioread8(i32* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %61
  br label %242

78:                                               ; preds = %61
  %79 = mul nuw i64 4, %27
  %80 = trunc i64 %79 to i32
  %81 = call i32 @memset(i32* %29, i32 0, i32 %80)
  store i32* %29, i32** %9, align 8
  %82 = load i32, i32* @CMD_TX, align 4
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  %84 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %85 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @CAN_RTR_FLAG, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %78
  %91 = load i32, i32* @CMD_RTR, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %90, %78
  %96 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %97 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CAN_EFF_FLAG, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load i32, i32* @CMD_XTD, align 4
  %104 = load i32*, i32** %9, align 8
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %103
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %102, %95
  %108 = load %struct.softing_priv*, %struct.softing_priv** %6, align 8
  %109 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i32, i32* @CMD_BUS2, align 4
  %114 = load i32*, i32** %9, align 8
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %112, %107
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %9, align 8
  %120 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %121 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %9, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %9, align 8
  store i32 %122, i32* %123, align 4
  %125 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %126 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = ashr i32 %127, 0
  %129 = load i32*, i32** %9, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %9, align 8
  store i32 %128, i32* %129, align 4
  %131 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %132 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = ashr i32 %133, 8
  %135 = load i32*, i32** %9, align 8
  %136 = getelementptr inbounds i32, i32* %135, i32 1
  store i32* %136, i32** %9, align 8
  store i32 %134, i32* %135, align 4
  %137 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %138 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @CAN_EFF_FLAG, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %117
  %144 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %145 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = ashr i32 %146, 16
  %148 = load i32*, i32** %9, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %9, align 8
  store i32 %147, i32* %148, align 4
  %150 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %151 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = ashr i32 %152, 24
  %154 = load i32*, i32** %9, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %9, align 8
  store i32 %153, i32* %154, align 4
  br label %159

156:                                              ; preds = %117
  %157 = load i32*, i32** %9, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 1
  store i32* %158, i32** %9, align 8
  br label %159

159:                                              ; preds = %156, %143
  %160 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %161 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @CAN_RTR_FLAG, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %176, label %166

166:                                              ; preds = %159
  %167 = load i32*, i32** %9, align 8
  %168 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %169 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %173 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @memcpy(i32* %167, i32* %171, i32 %174)
  br label %176

176:                                              ; preds = %166, %159
  %177 = load %struct.softing*, %struct.softing** %7, align 8
  %178 = getelementptr inbounds %struct.softing, %struct.softing* %177, i32 0, i32 3
  %179 = load i32*, i32** %178, align 8
  %180 = load i32, i32* @DPRAM_TX, align 4
  %181 = load i32, i32* @DPRAM_TX_SIZE, align 4
  %182 = load i32, i32* %10, align 4
  %183 = mul nsw i32 %181, %182
  %184 = add nsw i32 %180, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %179, i64 %185
  %187 = load i32, i32* @DPRAM_TX_SIZE, align 4
  %188 = call i32 @memcpy_toio(i32* %186, i32* %29, i32 %187)
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* @DPRAM_TX_CNT, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %176
  store i32 0, i32* %10, align 4
  br label %194

194:                                              ; preds = %193, %176
  %195 = load i32, i32* %10, align 4
  %196 = load %struct.softing*, %struct.softing** %7, align 8
  %197 = getelementptr inbounds %struct.softing, %struct.softing* %196, i32 0, i32 3
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* @DPRAM_TX_WR, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = call i32 @iowrite8(i32 %195, i32* %200)
  %202 = load %struct.softing_priv*, %struct.softing_priv** %6, align 8
  %203 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.softing*, %struct.softing** %7, align 8
  %206 = getelementptr inbounds %struct.softing, %struct.softing* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  store i64 %204, i64* %207, align 8
  %208 = load %struct.softing*, %struct.softing** %7, align 8
  %209 = getelementptr inbounds %struct.softing, %struct.softing* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %210, align 8
  %213 = load %struct.softing_priv*, %struct.softing_priv** %6, align 8
  %214 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = add nsw i64 %216, 1
  store i64 %217, i64* %215, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %219 = load %struct.net_device*, %struct.net_device** %5, align 8
  %220 = load %struct.softing_priv*, %struct.softing_priv** %6, align 8
  %221 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @can_put_echo_skb(%struct.sk_buff* %218, %struct.net_device* %219, i64 %223)
  %225 = load %struct.softing_priv*, %struct.softing_priv** %6, align 8
  %226 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %227, align 8
  %230 = load %struct.softing_priv*, %struct.softing_priv** %6, align 8
  %231 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @TX_ECHO_SKB_MAX, align 8
  %235 = icmp sge i64 %233, %234
  br i1 %235, label %236, label %240

236:                                              ; preds = %194
  %237 = load %struct.softing_priv*, %struct.softing_priv** %6, align 8
  %238 = getelementptr inbounds %struct.softing_priv, %struct.softing_priv* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 1
  store i64 0, i64* %239, align 8
  br label %240

240:                                              ; preds = %236, %194
  %241 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %241, i32* %8, align 4
  br label %242

242:                                              ; preds = %240, %77, %60
  %243 = load %struct.softing*, %struct.softing** %7, align 8
  %244 = getelementptr inbounds %struct.softing, %struct.softing* %243, i32 0, i32 2
  %245 = call i32 @spin_unlock(i32* %244)
  %246 = load %struct.softing*, %struct.softing** %7, align 8
  %247 = getelementptr inbounds %struct.softing, %struct.softing* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load i64, i64* @TXMAX, align 8
  %251 = icmp sge i64 %249, %250
  br i1 %251, label %252, label %283

252:                                              ; preds = %242
  store i32 0, i32* %16, align 4
  br label %253

253:                                              ; preds = %279, %252
  %254 = load i32, i32* %16, align 4
  %255 = load %struct.softing*, %struct.softing** %7, align 8
  %256 = getelementptr inbounds %struct.softing, %struct.softing* %255, i32 0, i32 0
  %257 = load %struct.net_device**, %struct.net_device*** %256, align 8
  %258 = call i32 @ARRAY_SIZE(%struct.net_device** %257)
  %259 = icmp slt i32 %254, %258
  br i1 %259, label %260, label %282

260:                                              ; preds = %253
  %261 = load %struct.softing*, %struct.softing** %7, align 8
  %262 = getelementptr inbounds %struct.softing, %struct.softing* %261, i32 0, i32 0
  %263 = load %struct.net_device**, %struct.net_device*** %262, align 8
  %264 = load i32, i32* %16, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.net_device*, %struct.net_device** %263, i64 %265
  %267 = load %struct.net_device*, %struct.net_device** %266, align 8
  %268 = icmp ne %struct.net_device* %267, null
  br i1 %268, label %269, label %278

269:                                              ; preds = %260
  %270 = load %struct.softing*, %struct.softing** %7, align 8
  %271 = getelementptr inbounds %struct.softing, %struct.softing* %270, i32 0, i32 0
  %272 = load %struct.net_device**, %struct.net_device*** %271, align 8
  %273 = load i32, i32* %16, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.net_device*, %struct.net_device** %272, i64 %274
  %276 = load %struct.net_device*, %struct.net_device** %275, align 8
  %277 = call i32 @netif_stop_queue(%struct.net_device* %276)
  br label %278

278:                                              ; preds = %269, %260
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %16, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %16, align 4
  br label %253

282:                                              ; preds = %253
  br label %283

283:                                              ; preds = %282, %242
  %284 = load i32, i32* %8, align 4
  %285 = load i32, i32* @NETDEV_TX_OK, align 4
  %286 = icmp ne i32 %284, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %283
  %288 = load %struct.net_device*, %struct.net_device** %5, align 8
  %289 = call i32 @netif_stop_queue(%struct.net_device* %288)
  br label %290

290:                                              ; preds = %287, %283
  %291 = load i32, i32* %8, align 4
  store i32 %291, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %292

292:                                              ; preds = %290, %34
  %293 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %293)
  %294 = load i32, i32* %3, align 4
  ret i32 %294
}

declare dso_local %struct.softing_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ioread8(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memcpy_toio(i32*, i32*, i32) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.net_device**) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
