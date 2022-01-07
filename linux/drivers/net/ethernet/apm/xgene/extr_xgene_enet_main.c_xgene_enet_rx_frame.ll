; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_rx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_rx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_desc_ring = type { i64, i64, i64, i64, i32, i32, i32, %struct.page**, i32, %struct.sk_buff**, %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring*, %struct.net_device* }
%struct.page = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.net_device = type { i32 }
%struct.xgene_enet_raw_desc = type { i32, i32 }
%struct.xgene_enet_pdata = type { i32, i32 }
%struct.device = type { i32 }
%struct.TYPE_2__ = type { i64 }

@DATAADDR = common dso_local global i32 0, align 4
@XGENE_ENET_STD_MTU = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@USERINFO = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@ELERR = common dso_local global i32 0, align 4
@LERR_LEN = common dso_local global i32 0, align 4
@LERR = common dso_local global i32 0, align 4
@NV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@NUM_NXTBUFPOOL = common dso_local global i64 0, align 8
@NUM_BUFPOOL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_enet_desc_ring*, %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc*)* @xgene_enet_rx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_rx_frame(%struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_raw_desc* %1, %struct.xgene_enet_raw_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgene_enet_desc_ring*, align 8
  %6 = alloca %struct.xgene_enet_raw_desc*, align 8
  %7 = alloca %struct.xgene_enet_raw_desc*, align 8
  %8 = alloca %struct.xgene_enet_desc_ring*, align 8
  %9 = alloca %struct.xgene_enet_desc_ring*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.xgene_enet_pdata*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.device*, align 8
  %18 = alloca %struct.page*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_desc_ring** %5, align 8
  store %struct.xgene_enet_raw_desc* %1, %struct.xgene_enet_raw_desc** %6, align 8
  store %struct.xgene_enet_raw_desc* %2, %struct.xgene_enet_raw_desc** %7, align 8
  store i32 0, i32* %22, align 4
  %26 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %27 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %26, i32 0, i32 12
  %28 = load %struct.net_device*, %struct.net_device** %27, align 8
  store %struct.net_device* %28, %struct.net_device** %14, align 8
  %29 = load %struct.net_device*, %struct.net_device** %14, align 8
  %30 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %29)
  store %struct.xgene_enet_pdata* %30, %struct.xgene_enet_pdata** %13, align 8
  %31 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %32 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %31, i32 0, i32 12
  %33 = load %struct.net_device*, %struct.net_device** %32, align 8
  %34 = call %struct.device* @ndev_to_dev(%struct.net_device* %33)
  store %struct.device* %34, %struct.device** %17, align 8
  %35 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %36 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %35, i32 0, i32 11
  %37 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %36, align 8
  store %struct.xgene_enet_desc_ring* %37, %struct.xgene_enet_desc_ring** %8, align 8
  %38 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %39 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %38, i32 0, i32 10
  %40 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %39, align 8
  store %struct.xgene_enet_desc_ring* %40, %struct.xgene_enet_desc_ring** %9, align 8
  %41 = load %struct.device*, %struct.device** %17, align 8
  %42 = load i32, i32* @DATAADDR, align 4
  %43 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %6, align 8
  %44 = getelementptr inbounds %struct.xgene_enet_raw_desc, %struct.xgene_enet_raw_desc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le64_to_cpu(i32 %45)
  %47 = call i32 @GET_VAL(i32 %42, i32 %46)
  %48 = load i32, i32* @XGENE_ENET_STD_MTU, align 4
  %49 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %50 = call i32 @dma_unmap_single(%struct.device* %41, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* @USERINFO, align 4
  %52 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %6, align 8
  %53 = getelementptr inbounds %struct.xgene_enet_raw_desc, %struct.xgene_enet_raw_desc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le64_to_cpu(i32 %54)
  %56 = call i32 @GET_VAL(i32 %51, i32 %55)
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %12, align 8
  %58 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %8, align 8
  %59 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %58, i32 0, i32 9
  %60 = load %struct.sk_buff**, %struct.sk_buff*** %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %60, i64 %61
  %63 = load %struct.sk_buff*, %struct.sk_buff** %62, align 8
  store %struct.sk_buff* %63, %struct.sk_buff** %16, align 8
  %64 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %8, align 8
  %65 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %64, i32 0, i32 9
  %66 = load %struct.sk_buff**, %struct.sk_buff*** %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %66, i64 %67
  store %struct.sk_buff* null, %struct.sk_buff** %68, align 8
  %69 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %6, align 8
  %70 = getelementptr inbounds %struct.xgene_enet_raw_desc, %struct.xgene_enet_raw_desc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le64_to_cpu(i32 %71)
  %73 = call i64 @xgene_enet_get_data_len(i32 %72)
  store i64 %73, i64* %10, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @skb_put(%struct.sk_buff* %74, i64 %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NET_IP_ALIGN, align 8
  %81 = sub nsw i64 %79, %80
  %82 = call i32 @prefetch(i64 %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %84 = load %struct.net_device*, %struct.net_device** %14, align 8
  %85 = call i32 @eth_type_trans(%struct.sk_buff* %83, %struct.net_device* %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %87 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @ELERR, align 4
  %89 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %6, align 8
  %90 = getelementptr inbounds %struct.xgene_enet_raw_desc, %struct.xgene_enet_raw_desc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le64_to_cpu(i32 %91)
  %93 = call i32 @GET_VAL(i32 %88, i32 %92)
  %94 = load i32, i32* @LERR_LEN, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* @LERR, align 4
  %97 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %6, align 8
  %98 = getelementptr inbounds %struct.xgene_enet_raw_desc, %struct.xgene_enet_raw_desc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le64_to_cpu(i32 %99)
  %101 = call i32 @GET_VAL(i32 %96, i32 %100)
  %102 = or i32 %95, %101
  store i32 %102, i32* %24, align 4
  %103 = load i32, i32* %24, align 4
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %144

106:                                              ; preds = %3
  %107 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %108 = load i64, i64* %10, align 8
  %109 = load i32, i32* %24, align 4
  %110 = call i64 @xgene_enet_errata_10GE_8(%struct.sk_buff* %107, i64 %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %13, align 8
  %114 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %143

117:                                              ; preds = %106
  %118 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %119 = load i64, i64* %10, align 8
  %120 = load i32, i32* %24, align 4
  %121 = call i64 @xgene_enet_errata_10GE_10(%struct.sk_buff* %118, i64 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %13, align 8
  %125 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %142

128:                                              ; preds = %117
  %129 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %130 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %129)
  %131 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %9, align 8
  %132 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %6, align 8
  %133 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %7, align 8
  %134 = call i32 @xgene_enet_free_pagepool(%struct.xgene_enet_desc_ring* %131, %struct.xgene_enet_raw_desc* %132, %struct.xgene_enet_raw_desc* %133)
  %135 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %136 = load i32, i32* %24, align 4
  %137 = call i32 @xgene_enet_parse_error(%struct.xgene_enet_desc_ring* %135, i32 %136)
  %138 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %139 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 8
  br label %259

142:                                              ; preds = %123
  br label %143

143:                                              ; preds = %142, %112
  br label %144

144:                                              ; preds = %143, %3
  %145 = load i32, i32* @NV, align 4
  %146 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %6, align 8
  %147 = getelementptr inbounds %struct.xgene_enet_raw_desc, %struct.xgene_enet_raw_desc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @le64_to_cpu(i32 %148)
  %150 = call i32 @GET_VAL(i32 %145, i32 %149)
  store i32 %150, i32* %25, align 4
  %151 = load i32, i32* %25, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %144
  %154 = load i64, i64* %10, align 8
  %155 = sub i64 %154, 4
  store i64 %155, i64* %10, align 8
  br label %239

156:                                              ; preds = %144
  %157 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %9, align 8
  %158 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = sub i64 %159, 1
  store i64 %160, i64* %19, align 8
  %161 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %9, align 8
  %162 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  store i64 %163, i64* %20, align 8
  %164 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %7, align 8
  %165 = bitcast %struct.xgene_enet_raw_desc* %164 to i8*
  %166 = bitcast i8* %165 to i32*
  store i32* %166, i32** %23, align 8
  store i32 0, i32* %21, align 4
  br label %167

167:                                              ; preds = %224, %156
  %168 = load i32, i32* %21, align 4
  %169 = icmp slt i32 %168, 4
  br i1 %169, label %170, label %227

170:                                              ; preds = %167
  %171 = load i32*, i32** %23, align 8
  %172 = load i32, i32* %21, align 4
  %173 = xor i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @le64_to_cpu(i32 %176)
  %178 = call i64 @xgene_enet_get_data_len(i32 %177)
  store i64 %178, i64* %11, align 8
  %179 = load i64, i64* %11, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %170
  br label %227

182:                                              ; preds = %170
  %183 = load i32, i32* @DATAADDR, align 4
  %184 = load i32*, i32** %23, align 8
  %185 = load i32, i32* %21, align 4
  %186 = xor i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @le64_to_cpu(i32 %189)
  %191 = call i32 @GET_VAL(i32 %183, i32 %190)
  store i32 %191, i32* %15, align 4
  %192 = load %struct.device*, %struct.device** %17, align 8
  %193 = load i32, i32* %15, align 4
  %194 = load i32, i32* @PAGE_SIZE, align 4
  %195 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %196 = call i32 @dma_unmap_page(%struct.device* %192, i32 %193, i32 %194, i32 %195)
  %197 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %9, align 8
  %198 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %197, i32 0, i32 7
  %199 = load %struct.page**, %struct.page*** %198, align 8
  %200 = load i64, i64* %20, align 8
  %201 = getelementptr inbounds %struct.page*, %struct.page** %199, i64 %200
  %202 = load %struct.page*, %struct.page** %201, align 8
  store %struct.page* %202, %struct.page** %18, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %204 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %205 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %204)
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.page*, %struct.page** %18, align 8
  %209 = load i64, i64* %11, align 8
  %210 = load i32, i32* @PAGE_SIZE, align 4
  %211 = call i32 @skb_add_rx_frag(%struct.sk_buff* %203, i64 %207, %struct.page* %208, i32 0, i64 %209, i32 %210)
  %212 = load i64, i64* %11, align 8
  %213 = load i64, i64* %10, align 8
  %214 = add i64 %213, %212
  store i64 %214, i64* %10, align 8
  %215 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %9, align 8
  %216 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %215, i32 0, i32 7
  %217 = load %struct.page**, %struct.page*** %216, align 8
  %218 = load i64, i64* %20, align 8
  %219 = getelementptr inbounds %struct.page*, %struct.page** %217, i64 %218
  store %struct.page* null, %struct.page** %219, align 8
  %220 = load i64, i64* %20, align 8
  %221 = add i64 %220, 1
  %222 = load i64, i64* %19, align 8
  %223 = and i64 %221, %222
  store i64 %223, i64* %20, align 8
  br label %224

224:                                              ; preds = %182
  %225 = load i32, i32* %21, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %21, align 4
  br label %167

227:                                              ; preds = %181, %167
  %228 = load i64, i64* %20, align 8
  %229 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %9, align 8
  %230 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %229, i32 0, i32 1
  store i64 %228, i64* %230, align 8
  %231 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %232 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %231)
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %236 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %235, i32 0, i32 2
  %237 = load i64, i64* %236, align 8
  %238 = sub nsw i64 %237, %234
  store i64 %238, i64* %236, align 8
  br label %239

239:                                              ; preds = %227, %153
  %240 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %241 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %240)
  %242 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %243 = call i32 @xgene_enet_rx_csum(%struct.sk_buff* %242)
  %244 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %245 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %244, i32 0, i32 6
  %246 = load i32, i32* %245, align 8
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 8
  %248 = load i64, i64* %10, align 8
  %249 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %250 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %249, i32 0, i32 5
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = add i64 %252, %248
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %250, align 4
  %255 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %256 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %255, i32 0, i32 4
  %257 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %258 = call i32 @napi_gro_receive(i32* %256, %struct.sk_buff* %257)
  br label %259

259:                                              ; preds = %239, %128
  %260 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %261 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %260, i32 0, i32 2
  %262 = load i64, i64* %261, align 8
  %263 = icmp sle i64 %262, 0
  br i1 %263, label %264, label %276

264:                                              ; preds = %259
  %265 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %9, align 8
  %266 = load i64, i64* @NUM_NXTBUFPOOL, align 8
  %267 = call i32 @xgene_enet_refill_pagepool(%struct.xgene_enet_desc_ring* %265, i64 %266)
  store i32 %267, i32* %22, align 4
  %268 = load i64, i64* @NUM_NXTBUFPOOL, align 8
  %269 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %270 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %269, i32 0, i32 2
  store i64 %268, i64* %270, align 8
  %271 = load i32, i32* %22, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %264
  %274 = load i32, i32* %22, align 4
  store i32 %274, i32* %4, align 4
  br label %291

275:                                              ; preds = %264
  br label %276

276:                                              ; preds = %275, %259
  %277 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %278 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %277, i32 0, i32 3
  %279 = load i64, i64* %278, align 8
  %280 = add nsw i64 %279, -1
  store i64 %280, i64* %278, align 8
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %276
  %283 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %8, align 8
  %284 = load i64, i64* @NUM_BUFPOOL, align 8
  %285 = call i32 @xgene_enet_refill_bufpool(%struct.xgene_enet_desc_ring* %283, i64 %284)
  store i32 %285, i32* %22, align 4
  %286 = load i64, i64* @NUM_BUFPOOL, align 8
  %287 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %5, align 8
  %288 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %287, i32 0, i32 3
  store i64 %286, i64* %288, align 8
  br label %289

289:                                              ; preds = %282, %276
  %290 = load i32, i32* %22, align 4
  store i32 %290, i32* %4, align 4
  br label %291

291:                                              ; preds = %289, %273
  %292 = load i32, i32* %4, align 4
  ret i32 %292
}

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.device* @ndev_to_dev(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @GET_VAL(i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @xgene_enet_get_data_len(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @prefetch(i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @xgene_enet_errata_10GE_8(%struct.sk_buff*, i64, i32) #1

declare dso_local i64 @xgene_enet_errata_10GE_10(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @xgene_enet_free_pagepool(%struct.xgene_enet_desc_ring*, %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc*) #1

declare dso_local i32 @xgene_enet_parse_error(%struct.xgene_enet_desc_ring*, i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i64, %struct.page*, i32, i64, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @xgene_enet_rx_csum(%struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @xgene_enet_refill_pagepool(%struct.xgene_enet_desc_ring*, i64) #1

declare dso_local i32 @xgene_enet_refill_bufpool(%struct.xgene_enet_desc_ring*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
