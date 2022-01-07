; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_start_xmit_gbit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_start_xmit_gbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i32 }
%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.greth_private = type { i64, i32, %struct.greth_bd*, i32, %struct.sk_buff**, i32 }
%struct.greth_bd = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@MAX_FRAME_SIZE = common dso_local global i64 0, align 8
@GRETH_TXBD_MORE = common dso_local global i32 0, align 4
@GRETH_BD_IE = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@GRETH_TXBD_CSALL = common dso_local global i32 0, align 4
@GRETH_BD_LEN = common dso_local global i32 0, align 4
@GRETH_TXBD_NUM_MASK = common dso_local global i32 0, align 4
@GRETH_BD_WR = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@GRETH_BD_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not create TX DMA mapping\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @greth_start_xmit_gbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @greth_start_xmit_gbit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.greth_private*, align 8
  %7 = alloca %struct.greth_bd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.greth_private* @netdev_priv(%struct.net_device* %17)
  store %struct.greth_private* %18, %struct.greth_private** %6, align 8
  %19 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %11, align 4
  %24 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %25 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %15, align 4
  %27 = call i32 (...) @rmb()
  %28 = load i32, i32* %15, align 4
  %29 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %30 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @greth_num_free_bds(i32 %28, i64 %31)
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %33, 1
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = call i32 @netif_stop_queue(%struct.net_device* %37)
  %39 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %39, i32* %13, align 4
  br label %321

40:                                               ; preds = %2
  %41 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %42 = call i64 @netif_msg_pktdata(%struct.greth_private* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = call i32 @greth_print_tx_packet(%struct.sk_buff* %45)
  br label %47

47:                                               ; preds = %44, %40
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MAX_FRAME_SIZE, align 8
  %52 = icmp sgt i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %47
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %321

62:                                               ; preds = %47
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %65 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %64, i32 0, i32 4
  %66 = load %struct.sk_buff**, %struct.sk_buff*** %65, align 8
  %67 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %68 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %66, i64 %69
  store %struct.sk_buff* %63, %struct.sk_buff** %70, align 8
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @GRETH_TXBD_MORE, align 4
  store i32 %74, i32* %8, align 4
  br label %77

75:                                               ; preds = %62
  %76 = load i32, i32* @GRETH_BD_IE, align 4
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* @GRETH_TXBD_CSALL, align 4
  %85 = load i32, i32* %8, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %87

87:                                               ; preds = %83, %77
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = call i32 @skb_headlen(%struct.sk_buff* %88)
  %90 = load i32, i32* @GRETH_BD_LEN, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %95 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @GRETH_TXBD_NUM_MASK, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp eq i64 %96, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %87
  %101 = load i32, i32* @GRETH_BD_WR, align 4
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %100, %87
  %105 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %106 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %105, i32 0, i32 2
  %107 = load %struct.greth_bd*, %struct.greth_bd** %106, align 8
  %108 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %109 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %107, i64 %110
  store %struct.greth_bd* %111, %struct.greth_bd** %7, align 8
  %112 = load %struct.greth_bd*, %struct.greth_bd** %7, align 8
  %113 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %112, i32 0, i32 0
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @greth_write_bd(i32* %113, i32 %114)
  %116 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %117 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = call i32 @skb_headlen(%struct.sk_buff* %122)
  %124 = load i32, i32* @DMA_TO_DEVICE, align 4
  %125 = call i32 @dma_map_single(i32 %118, i32 %121, i32 %123, i32 %124)
  store i32 %125, i32* %9, align 4
  %126 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %127 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @dma_mapping_error(i32 %128, i32 %129)
  %131 = call i64 @unlikely(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %104
  br label %310

134:                                              ; preds = %104
  %135 = load %struct.greth_bd*, %struct.greth_bd** %7, align 8
  %136 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %135, i32 0, i32 1
  %137 = load i32, i32* %9, align 4
  %138 = call i32 @greth_write_bd(i32* %136, i32 %137)
  %139 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %140 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = call i32 @NEXT_TX(i32 %142)
  store i32 %143, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %144

144:                                              ; preds = %233, %134
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %236

148:                                              ; preds = %144
  %149 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %150 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %149)
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  store i32* %155, i32** %16, align 8
  %156 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %157 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %156, i32 0, i32 4
  %158 = load %struct.sk_buff**, %struct.sk_buff*** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %158, i64 %160
  store %struct.sk_buff* null, %struct.sk_buff** %161, align 8
  %162 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %163 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %162, i32 0, i32 2
  %164 = load %struct.greth_bd*, %struct.greth_bd** %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %164, i64 %166
  store %struct.greth_bd* %167, %struct.greth_bd** %7, align 8
  %168 = load i32, i32* @GRETH_BD_EN, align 4
  store i32 %168, i32* %8, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %170 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %148
  %175 = load i32, i32* @GRETH_TXBD_CSALL, align 4
  %176 = load i32, i32* %8, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %8, align 4
  br label %178

178:                                              ; preds = %174, %148
  %179 = load i32*, i32** %16, align 8
  %180 = call i32 @skb_frag_size(i32* %179)
  %181 = load i32, i32* @GRETH_BD_LEN, align 4
  %182 = and i32 %180, %181
  %183 = load i32, i32* %8, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* @GRETH_TXBD_NUM_MASK, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %178
  %189 = load i32, i32* @GRETH_BD_WR, align 4
  %190 = load i32, i32* %8, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %8, align 4
  br label %192

192:                                              ; preds = %188, %178
  %193 = load i32, i32* %12, align 4
  %194 = load i32, i32* %11, align 4
  %195 = sub nsw i32 %194, 1
  %196 = icmp slt i32 %193, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load i32, i32* @GRETH_TXBD_MORE, align 4
  %199 = load i32, i32* %8, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %8, align 4
  br label %205

201:                                              ; preds = %192
  %202 = load i32, i32* @GRETH_BD_IE, align 4
  %203 = load i32, i32* %8, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %201, %197
  %206 = load %struct.greth_bd*, %struct.greth_bd** %7, align 8
  %207 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %206, i32 0, i32 0
  %208 = load i32, i32* %8, align 4
  %209 = call i32 @greth_write_bd(i32* %207, i32 %208)
  %210 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %211 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load i32*, i32** %16, align 8
  %214 = load i32*, i32** %16, align 8
  %215 = call i32 @skb_frag_size(i32* %214)
  %216 = load i32, i32* @DMA_TO_DEVICE, align 4
  %217 = call i32 @skb_frag_dma_map(i32 %212, i32* %213, i32 0, i32 %215, i32 %216)
  store i32 %217, i32* %9, align 4
  %218 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %219 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @dma_mapping_error(i32 %220, i32 %221)
  %223 = call i64 @unlikely(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %205
  br label %268

226:                                              ; preds = %205
  %227 = load %struct.greth_bd*, %struct.greth_bd** %7, align 8
  %228 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %227, i32 0, i32 1
  %229 = load i32, i32* %9, align 4
  %230 = call i32 @greth_write_bd(i32* %228, i32 %229)
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @NEXT_TX(i32 %231)
  store i32 %232, i32* %10, align 4
  br label %233

233:                                              ; preds = %226
  %234 = load i32, i32* %12, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %12, align 4
  br label %144

236:                                              ; preds = %144
  %237 = call i32 (...) @wmb()
  %238 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %239 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %238, i32 0, i32 2
  %240 = load %struct.greth_bd*, %struct.greth_bd** %239, align 8
  %241 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %242 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %240, i64 %243
  store %struct.greth_bd* %244, %struct.greth_bd** %7, align 8
  %245 = load %struct.greth_bd*, %struct.greth_bd** %7, align 8
  %246 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %245, i32 0, i32 0
  %247 = load %struct.greth_bd*, %struct.greth_bd** %7, align 8
  %248 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %247, i32 0, i32 0
  %249 = call i32 @greth_read_bd(i32* %248)
  %250 = load i32, i32* @GRETH_BD_EN, align 4
  %251 = or i32 %249, %250
  %252 = call i32 @greth_write_bd(i32* %246, i32 %251)
  %253 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %254 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %253, i32 0, i32 3
  %255 = load i64, i64* %14, align 8
  %256 = call i32 @spin_lock_irqsave(i32* %254, i64 %255)
  %257 = load i32, i32* %10, align 4
  %258 = sext i32 %257 to i64
  %259 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %260 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %259, i32 0, i32 0
  store i64 %258, i64* %260, align 8
  %261 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %262 = call i32 @greth_enable_tx_and_irq(%struct.greth_private* %261)
  %263 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %264 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %263, i32 0, i32 3
  %265 = load i64, i64* %14, align 8
  %266 = call i32 @spin_unlock_irqrestore(i32* %264, i64 %265)
  %267 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %267, i32* %3, align 4
  br label %323

268:                                              ; preds = %225
  store i32 0, i32* %12, align 4
  br label %269

269:                                              ; preds = %306, %268
  %270 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %271 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i32, i32* %12, align 4
  %274 = sext i32 %273 to i64
  %275 = add i64 %272, %274
  %276 = load i32, i32* %10, align 4
  %277 = sext i32 %276 to i64
  %278 = icmp ne i64 %275, %277
  br i1 %278, label %279, label %309

279:                                              ; preds = %269
  %280 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %281 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %280, i32 0, i32 2
  %282 = load %struct.greth_bd*, %struct.greth_bd** %281, align 8
  %283 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %284 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %282, i64 %285
  %287 = load i32, i32* %12, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %286, i64 %288
  store %struct.greth_bd* %289, %struct.greth_bd** %7, align 8
  %290 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %291 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.greth_bd*, %struct.greth_bd** %7, align 8
  %294 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %293, i32 0, i32 1
  %295 = call i32 @greth_read_bd(i32* %294)
  %296 = load %struct.greth_bd*, %struct.greth_bd** %7, align 8
  %297 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %296, i32 0, i32 0
  %298 = call i32 @greth_read_bd(i32* %297)
  %299 = load i32, i32* @GRETH_BD_LEN, align 4
  %300 = and i32 %298, %299
  %301 = load i32, i32* @DMA_TO_DEVICE, align 4
  %302 = call i32 @dma_unmap_single(i32 %292, i32 %295, i32 %300, i32 %301)
  %303 = load %struct.greth_bd*, %struct.greth_bd** %7, align 8
  %304 = getelementptr inbounds %struct.greth_bd, %struct.greth_bd* %303, i32 0, i32 0
  %305 = call i32 @greth_write_bd(i32* %304, i32 0)
  br label %306

306:                                              ; preds = %279
  %307 = load i32, i32* %12, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %12, align 4
  br label %269

309:                                              ; preds = %269
  br label %310

310:                                              ; preds = %309, %133
  %311 = call i64 (...) @net_ratelimit()
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %310
  %314 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %315 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = call i32 @dev_warn(i32 %316, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %318

318:                                              ; preds = %313, %310
  %319 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %320 = call i32 @dev_kfree_skb(%struct.sk_buff* %319)
  br label %321

321:                                              ; preds = %318, %56, %36
  %322 = load i32, i32* %13, align 4
  store i32 %322, i32* %3, align 4
  br label %323

323:                                              ; preds = %321, %236
  %324 = load i32, i32* %3, align 4
  ret i32 %324
}

declare dso_local %struct.greth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @greth_num_free_bds(i32, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i64 @netif_msg_pktdata(%struct.greth_private*) #1

declare dso_local i32 @greth_print_tx_packet(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @greth_write_bd(i32*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @NEXT_TX(i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @greth_read_bd(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @greth_enable_tx_and_irq(%struct.greth_private*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
