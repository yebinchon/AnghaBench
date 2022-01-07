; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fza_private = type { i32, i32*, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__, %struct.sk_buff**, %struct.TYPE_5__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.fza_fddihdr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.fza_buffer_tx = type { i32 }

@FZA_RING_OWN_MASK = common dso_local global i32 0, align 4
@FZA_RING_OWN_FZA = common dso_local global i32 0, align 4
@FZA_RING_PBC_MASK = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@FZA_RX_BUFFER_SIZE = common dso_local global i64 0, align 8
@FDDI_FC_K_CLASS_MASK = common dso_local global i32 0, align 4
@FDDI_FC_K_FORMAT_MASK = common dso_local global i32 0, align 4
@FDDI_FC_K_CLASS_ASYNC = common dso_local global i32 0, align 4
@FDDI_FC_K_FORMAT_MANAGEMENT = common dso_local global i32 0, align 4
@FZA_RING_RX_DA_MASK = common dso_local global i32 0, align 4
@FZA_RING_RX_DA_PROM = common dso_local global i32 0, align 4
@FZA_CONTROL_A_SMT_RX_OVFL = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s: memory squeeze, dropping packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fza_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fza_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fza_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.fza_fddihdr*, align 8
  %7 = alloca i32, align 4
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
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call %struct.fza_private* @netdev_priv(%struct.net_device* %18)
  store %struct.fza_private* %19, %struct.fza_private** %3, align 8
  br label %20

20:                                               ; preds = %1, %253
  %21 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %22 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %12, align 4
  %24 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %25 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %24, i32 0, i32 3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = call i32 @readl_o(i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @FZA_RING_OWN_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @FZA_RING_OWN_FZA, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %20
  br label %297

38:                                               ; preds = %20
  %39 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %40 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %39, i32 0, i32 3
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = call i32 @readl_u(i32* %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %48 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %47, i32 0, i32 6
  %49 = load %struct.sk_buff**, %struct.sk_buff*** %48, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %49, i64 %51
  %53 = load %struct.sk_buff*, %struct.sk_buff** %52, align 8
  store %struct.sk_buff* %53, %struct.sk_buff** %4, align 8
  %54 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %55 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %7, align 4
  %61 = call i32 (...) @dma_rmb()
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @FZA_RING_PBC_MASK, align 4
  %64 = and i32 %62, %63
  %65 = add nsw i32 %64, 3
  store i32 %65, i32* %13, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to %struct.fza_fddihdr*
  store %struct.fza_fddihdr* %69, %struct.fza_fddihdr** %6, align 8
  %70 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %71 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.fza_fddihdr*, %struct.fza_fddihdr** %6, align 8
  %76 = getelementptr inbounds %struct.fza_fddihdr, %struct.fza_fddihdr* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.fza_fddihdr*, %struct.fza_fddihdr** %6, align 8
  %79 = bitcast %struct.fza_fddihdr* %78 to i32*
  %80 = ptrtoint i32* %77 to i64
  %81 = ptrtoint i32* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 4
  %84 = add nsw i64 %74, %83
  %85 = trunc i64 %84 to i32
  %86 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %87 = call i32 @dma_sync_single_for_cpu(i32 %72, i32 %85, i32 4, i32 %86)
  %88 = load %struct.fza_fddihdr*, %struct.fza_fddihdr** %6, align 8
  %89 = getelementptr inbounds %struct.fza_fddihdr, %struct.fza_fddihdr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %14, align 4
  %92 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i64 @fza_rx_err(%struct.fza_private* %92, i32 %93, i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %38
  br label %253

98:                                               ; preds = %38
  %99 = load %struct.net_device*, %struct.net_device** %2, align 8
  %100 = load i64, i64* @FZA_RX_BUFFER_SIZE, align 8
  %101 = add nsw i64 %100, 511
  %102 = call %struct.sk_buff* @fza_alloc_skb_irq(%struct.net_device* %99, i64 %101)
  store %struct.sk_buff* %102, %struct.sk_buff** %5, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = icmp ne %struct.sk_buff* %103, null
  br i1 %104, label %105, label %127

105:                                              ; preds = %98
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = call i32 @fza_skb_align(%struct.sk_buff* %106, i32 512)
  %108 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %109 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %112 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @FZA_RX_BUFFER_SIZE, align 8
  %115 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %116 = call i32 @dma_map_single(i32 %110, i64 %113, i64 %114, i32 %115)
  store i32 %116, i32* %8, align 4
  %117 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %118 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i64 @dma_mapping_error(i32 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %105
  %124 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %125 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %124)
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %126

126:                                              ; preds = %123, %105
  br label %127

127:                                              ; preds = %126, %98
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = icmp ne %struct.sk_buff* %128, null
  br i1 %129, label %130, label %242

130:                                              ; preds = %127
  %131 = load i32, i32* %13, align 4
  %132 = sub nsw i32 %131, 7
  store i32 %132, i32* %15, align 4
  %133 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %134 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i64, i64* @FZA_RX_BUFFER_SIZE, align 8
  %138 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %139 = call i32 @dma_unmap_single(i32 %135, i32 %136, i64 %137, i32 %138)
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @FDDI_FC_K_CLASS_MASK, align 4
  %142 = load i32, i32* @FDDI_FC_K_FORMAT_MASK, align 4
  %143 = or i32 %141, %142
  %144 = and i32 %140, %143
  %145 = load i32, i32* @FDDI_FC_K_CLASS_ASYNC, align 4
  %146 = load i32, i32* @FDDI_FC_K_FORMAT_MANAGEMENT, align 4
  %147 = or i32 %145, %146
  %148 = icmp eq i32 %144, %147
  br i1 %148, label %149, label %173

149:                                              ; preds = %130
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* @FZA_RING_RX_DA_MASK, align 4
  %152 = and i32 %150, %151
  %153 = load i32, i32* @FZA_RING_RX_DA_PROM, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %173

155:                                              ; preds = %149
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to %struct.fza_buffer_tx*
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.net_device*, %struct.net_device** %2, align 8
  %163 = call i64 @fza_do_recv_smt(%struct.fza_buffer_tx* %159, i32 %160, i32 %161, %struct.net_device* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %155
  %166 = load i32, i32* @FZA_CONTROL_A_SMT_RX_OVFL, align 4
  %167 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %168 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %167, i32 0, i32 7
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = call i32 @writel_o(i32 %166, i32* %170)
  br label %172

172:                                              ; preds = %165, %155
  br label %173

173:                                              ; preds = %172, %149, %130
  %174 = load %struct.fza_fddihdr*, %struct.fza_fddihdr** %6, align 8
  %175 = getelementptr inbounds %struct.fza_fddihdr, %struct.fza_fddihdr* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, 1
  %181 = icmp ne i32 %180, 0
  %182 = zext i1 %181 to i32
  store i32 %182, i32* %16, align 4
  %183 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %184 = call i32 @skb_reserve(%struct.sk_buff* %183, i32 3)
  %185 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %186 = load i32, i32* %15, align 4
  %187 = call i32 @skb_put(%struct.sk_buff* %185, i32 %186)
  %188 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %189 = load %struct.net_device*, %struct.net_device** %2, align 8
  %190 = call i32 @fddi_type_trans(%struct.sk_buff* %188, %struct.net_device* %189)
  %191 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %192 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  %193 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %194 = call i32 @netif_rx(%struct.sk_buff* %193)
  store i32 %194, i32* %17, align 4
  %195 = load i32, i32* %17, align 4
  %196 = load i32, i32* @NET_RX_DROP, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %219

198:                                              ; preds = %173
  %199 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %200 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 4
  %204 = load i32, i32* %15, align 4
  %205 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %206 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %205, i32 0, i32 5
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, %204
  store i32 %209, i32* %207, align 4
  %210 = load i32, i32* %16, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %198
  %213 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %214 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %213, i32 0, i32 5
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %212, %198
  br label %225

219:                                              ; preds = %173
  %220 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %221 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %220, i32 0, i32 5
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  br label %225

225:                                              ; preds = %219, %218
  %226 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %226, %struct.sk_buff** %4, align 8
  %227 = load i32, i32* %8, align 4
  store i32 %227, i32* %7, align 4
  %228 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %229 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %230 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %229, i32 0, i32 6
  %231 = load %struct.sk_buff**, %struct.sk_buff*** %230, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %231, i64 %233
  store %struct.sk_buff* %228, %struct.sk_buff** %234, align 8
  %235 = load i32, i32* %7, align 4
  %236 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %237 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %12, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32 %235, i32* %241, align 4
  br label %252

242:                                              ; preds = %127
  %243 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %244 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %243, i32 0, i32 5
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4
  %248 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %249 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %248, i32 0, i32 4
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @pr_notice(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %242, %225
  br label %253

253:                                              ; preds = %252, %97
  %254 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %255 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %254, i32 0, i32 3
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %255, align 8
  %257 = load i32, i32* %12, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 2
  %261 = call i32 @writel_o(i32 0, i32* %260)
  %262 = load i32, i32* %7, align 4
  %263 = add nsw i32 %262, 4096
  %264 = ashr i32 %263, 9
  store i32 %264, i32* %11, align 4
  %265 = load i32, i32* %11, align 4
  %266 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %267 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %266, i32 0, i32 3
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %267, align 8
  %269 = load i32, i32* %12, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 1
  %273 = call i32 @writel_o(i32 %265, i32* %272)
  %274 = load i32, i32* %7, align 4
  %275 = ashr i32 %274, 9
  %276 = load i32, i32* @FZA_RING_OWN_FZA, align 4
  %277 = or i32 %275, %276
  store i32 %277, i32* %11, align 4
  %278 = load i32, i32* %11, align 4
  %279 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %280 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %279, i32 0, i32 3
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %280, align 8
  %282 = load i32, i32* %12, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 0
  %286 = call i32 @writel_o(i32 %278, i32* %285)
  %287 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %288 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = add nsw i32 %289, 1
  %291 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %292 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = srem i32 %290, %293
  %295 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %296 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %295, i32 0, i32 0
  store i32 %294, i32* %296, align 8
  br label %20

297:                                              ; preds = %37
  ret void
}

declare dso_local %struct.fza_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl_o(i32*) #1

declare dso_local i32 @readl_u(i32*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i64 @fza_rx_err(%struct.fza_private*, i32, i32) #1

declare dso_local %struct.sk_buff* @fza_alloc_skb_irq(%struct.net_device*, i64) #1

declare dso_local i32 @fza_skb_align(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(i32, i64, i64, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i64 @fza_do_recv_smt(%struct.fza_buffer_tx*, i32, i32, %struct.net_device*) #1

declare dso_local i32 @writel_o(i32, i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @fddi_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
