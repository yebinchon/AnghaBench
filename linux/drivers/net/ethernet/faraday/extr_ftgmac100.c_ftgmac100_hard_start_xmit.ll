; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i32 }
%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ftgmac100 = type { i32, i32, %struct.ftgmac100_txdes*, i64, %struct.sk_buff**, i32 }
%struct.ftgmac100_txdes = type { i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32, i32* }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@MAX_PKT_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"tx packet too big\0A\00", align 1
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@FTGMAC100_TXDES1_INS_VLANTAG = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"map tx packet head failed\0A\00", align 1
@FTGMAC100_TXDES0_TXDMA_OWN = common dso_local global i32 0, align 4
@FTGMAC100_TXDES0_FTS = common dso_local global i32 0, align 4
@FTGMAC100_TXDES0_LTS = common dso_local global i32 0, align 4
@TX_THRESHOLD = common dso_local global i64 0, align 8
@FTGMAC100_OFFSET_NPTXPD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"map tx fragment failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ftgmac100_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgmac100_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ftgmac100*, align 8
  %7 = alloca %struct.ftgmac100_txdes*, align 8
  %8 = alloca %struct.ftgmac100_txdes*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.ftgmac100* @netdev_priv(%struct.net_device* %19)
  store %struct.ftgmac100* %20, %struct.ftgmac100** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i64 @eth_skb_pad(%struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %330

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MAX_PKT_SIZE, align 8
  %36 = icmp sgt i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = call i64 (...) @net_ratelimit()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = call i32 @netdev_dbg(%struct.net_device* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %40
  br label %321

47:                                               ; preds = %31
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %48)
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %10, align 4
  store i32 0, i32* %16, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %47
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @ftgmac100_prep_tx_csum(%struct.sk_buff* %58, i32* %16)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  br label %321

62:                                               ; preds = %57, %47
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32, i32* @FTGMAC100_TXDES1_INS_VLANTAG, align 4
  %68 = load i32, i32* %16, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %16, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %70)
  %72 = and i32 %71, 65535
  %73 = load i32, i32* %16, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %16, align 4
  br label %75

75:                                               ; preds = %66, %62
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = call i32 @skb_headlen(%struct.sk_buff* %76)
  store i32 %77, i32* %11, align 4
  %78 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %79 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @DMA_TO_DEVICE, align 4
  %86 = call i32 @dma_map_single(i32 %80, i32 %83, i32 %84, i32 %85)
  store i32 %86, i32* %17, align 4
  %87 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %88 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %17, align 4
  %91 = call i64 @dma_mapping_error(i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %75
  %94 = call i64 (...) @net_ratelimit()
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load %struct.net_device*, %struct.net_device** %5, align 8
  %98 = call i32 @netdev_err(%struct.net_device* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %99

99:                                               ; preds = %96, %93
  br label %321

100:                                              ; preds = %75
  %101 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %102 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %9, align 4
  %104 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %105 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %104, i32 0, i32 2
  %106 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %106, i64 %108
  store %struct.ftgmac100_txdes* %109, %struct.ftgmac100_txdes** %8, align 8
  store %struct.ftgmac100_txdes* %109, %struct.ftgmac100_txdes** %7, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %112 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %111, i32 0, i32 4
  %113 = load %struct.sk_buff**, %struct.sk_buff*** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %113, i64 %115
  store %struct.sk_buff* %110, %struct.sk_buff** %116, align 8
  %117 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @ftgmac100_base_tx_ctlstat(%struct.ftgmac100* %117, i32 %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* @FTGMAC100_TXDES0_TXDMA_OWN, align 4
  %121 = load i32, i32* %14, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @FTGMAC100_TXDES0_TXBUF_SIZE(i32 %123)
  %125 = load i32, i32* %14, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %14, align 4
  %127 = load i32, i32* @FTGMAC100_TXDES0_FTS, align 4
  %128 = load i32, i32* %14, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %100
  %133 = load i32, i32* @FTGMAC100_TXDES0_LTS, align 4
  %134 = load i32, i32* %14, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %132, %100
  %137 = load i32, i32* %17, align 4
  %138 = call i8* @cpu_to_le32(i32 %137)
  %139 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %7, align 8
  %140 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  %141 = load i32, i32* %16, align 4
  %142 = call i8* @cpu_to_le32(i32 %141)
  %143 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %7, align 8
  %144 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %143, i32 0, i32 2
  store i8* %142, i8** %144, align 8
  %145 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @ftgmac100_next_tx_pointer(%struct.ftgmac100* %145, i32 %146)
  store i32 %147, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %148

148:                                              ; preds = %222, %136
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ult i32 %149, %150
  br i1 %151, label %152, label %225

152:                                              ; preds = %148
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %153)
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32* %159, i32** %18, align 8
  %160 = load i32*, i32** %18, align 8
  %161 = call i32 @skb_frag_size(i32* %160)
  store i32 %161, i32* %11, align 4
  %162 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %163 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = load i32*, i32** %18, align 8
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* @DMA_TO_DEVICE, align 4
  %168 = call i32 @skb_frag_dma_map(i32 %164, i32* %165, i32 0, i32 %166, i32 %167)
  store i32 %168, i32* %17, align 4
  %169 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %170 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %17, align 4
  %173 = call i64 @dma_mapping_error(i32 %171, i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %152
  br label %261

176:                                              ; preds = %152
  %177 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %178 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %179 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %178, i32 0, i32 4
  %180 = load %struct.sk_buff**, %struct.sk_buff*** %179, align 8
  %181 = load i32, i32* %9, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %180, i64 %182
  store %struct.sk_buff* %177, %struct.sk_buff** %183, align 8
  %184 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %185 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %184, i32 0, i32 2
  %186 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %185, align 8
  %187 = load i32, i32* %9, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %186, i64 %188
  store %struct.ftgmac100_txdes* %189, %struct.ftgmac100_txdes** %7, align 8
  %190 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %191 = load i32, i32* %9, align 4
  %192 = call i32 @ftgmac100_base_tx_ctlstat(%struct.ftgmac100* %190, i32 %191)
  store i32 %192, i32* %15, align 4
  %193 = load i32, i32* @FTGMAC100_TXDES0_TXDMA_OWN, align 4
  %194 = load i32, i32* %15, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %15, align 4
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @FTGMAC100_TXDES0_TXBUF_SIZE(i32 %196)
  %198 = load i32, i32* %15, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %15, align 4
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* %10, align 4
  %202 = sub i32 %201, 1
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %176
  %205 = load i32, i32* @FTGMAC100_TXDES0_LTS, align 4
  %206 = load i32, i32* %15, align 4
  %207 = or i32 %206, %205
  store i32 %207, i32* %15, align 4
  br label %208

208:                                              ; preds = %204, %176
  %209 = load i32, i32* %15, align 4
  %210 = call i8* @cpu_to_le32(i32 %209)
  %211 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %7, align 8
  %212 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %211, i32 0, i32 0
  store i8* %210, i8** %212, align 8
  %213 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %7, align 8
  %214 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %213, i32 0, i32 2
  store i8* null, i8** %214, align 8
  %215 = load i32, i32* %17, align 4
  %216 = call i8* @cpu_to_le32(i32 %215)
  %217 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %7, align 8
  %218 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %217, i32 0, i32 1
  store i8* %216, i8** %218, align 8
  %219 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @ftgmac100_next_tx_pointer(%struct.ftgmac100* %219, i32 %220)
  store i32 %221, i32* %9, align 4
  br label %222

222:                                              ; preds = %208
  %223 = load i32, i32* %12, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %12, align 4
  br label %148

225:                                              ; preds = %148
  %226 = call i32 (...) @dma_wmb()
  %227 = load i32, i32* %14, align 4
  %228 = call i8* @cpu_to_le32(i32 %227)
  %229 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %8, align 8
  %230 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %229, i32 0, i32 0
  store i8* %228, i8** %230, align 8
  %231 = load i32, i32* %9, align 4
  %232 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %233 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 8
  %234 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %235 = call i64 @ftgmac100_tx_buf_avail(%struct.ftgmac100* %234)
  %236 = load i64, i64* @TX_THRESHOLD, align 8
  %237 = icmp slt i64 %235, %236
  %238 = zext i1 %237 to i32
  %239 = call i64 @unlikely(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %253

241:                                              ; preds = %225
  %242 = load %struct.net_device*, %struct.net_device** %5, align 8
  %243 = call i32 @netif_stop_queue(%struct.net_device* %242)
  %244 = call i32 (...) @smp_mb()
  %245 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %246 = call i64 @ftgmac100_tx_buf_avail(%struct.ftgmac100* %245)
  %247 = load i64, i64* @TX_THRESHOLD, align 8
  %248 = icmp sge i64 %246, %247
  br i1 %248, label %249, label %252

249:                                              ; preds = %241
  %250 = load %struct.net_device*, %struct.net_device** %5, align 8
  %251 = call i32 @netif_wake_queue(%struct.net_device* %250)
  br label %252

252:                                              ; preds = %249, %241
  br label %253

253:                                              ; preds = %252, %225
  %254 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %255 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @FTGMAC100_OFFSET_NPTXPD, align 8
  %258 = add nsw i64 %256, %257
  %259 = call i32 @iowrite32(i32 1, i64 %258)
  %260 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %260, i32* %3, align 4
  br label %330

261:                                              ; preds = %175
  %262 = call i64 (...) @net_ratelimit()
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load %struct.net_device*, %struct.net_device** %5, align 8
  %266 = call i32 @netdev_err(%struct.net_device* %265, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %267

267:                                              ; preds = %264, %261
  %268 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %269 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  store i32 %270, i32* %9, align 4
  %271 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %272 = load i32, i32* %9, align 4
  %273 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %274 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %8, align 8
  %275 = load i32, i32* %14, align 4
  %276 = call i32 @ftgmac100_free_tx_packet(%struct.ftgmac100* %271, i32 %272, %struct.sk_buff* %273, %struct.ftgmac100_txdes* %274, i32 %275)
  %277 = load i32, i32* %14, align 4
  %278 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %279 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %277, %280
  %282 = call i8* @cpu_to_le32(i32 %281)
  %283 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %8, align 8
  %284 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %283, i32 0, i32 0
  store i8* %282, i8** %284, align 8
  store i32 0, i32* %13, align 4
  br label %285

285:                                              ; preds = %317, %267
  %286 = load i32, i32* %13, align 4
  %287 = load i32, i32* %12, align 4
  %288 = icmp ult i32 %286, %287
  br i1 %288, label %289, label %320

289:                                              ; preds = %285
  %290 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %291 = load i32, i32* %9, align 4
  %292 = call i32 @ftgmac100_next_tx_pointer(%struct.ftgmac100* %290, i32 %291)
  store i32 %292, i32* %9, align 4
  %293 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %294 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %293, i32 0, i32 2
  %295 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %294, align 8
  %296 = load i32, i32* %9, align 4
  %297 = zext i32 %296 to i64
  %298 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %295, i64 %297
  store %struct.ftgmac100_txdes* %298, %struct.ftgmac100_txdes** %7, align 8
  %299 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %7, align 8
  %300 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %299, i32 0, i32 0
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @le32_to_cpu(i8* %301)
  store i32 %302, i32* %15, align 4
  %303 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %304 = load i32, i32* %9, align 4
  %305 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %306 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %7, align 8
  %307 = load i32, i32* %15, align 4
  %308 = call i32 @ftgmac100_free_tx_packet(%struct.ftgmac100* %303, i32 %304, %struct.sk_buff* %305, %struct.ftgmac100_txdes* %306, i32 %307)
  %309 = load i32, i32* %15, align 4
  %310 = load %struct.ftgmac100*, %struct.ftgmac100** %6, align 8
  %311 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = and i32 %309, %312
  %314 = call i8* @cpu_to_le32(i32 %313)
  %315 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %7, align 8
  %316 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %315, i32 0, i32 0
  store i8* %314, i8** %316, align 8
  br label %317

317:                                              ; preds = %289
  %318 = load i32, i32* %13, align 4
  %319 = add i32 %318, 1
  store i32 %319, i32* %13, align 4
  br label %285

320:                                              ; preds = %285
  br label %321

321:                                              ; preds = %320, %99, %61, %46
  %322 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %323 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %322)
  %324 = load %struct.net_device*, %struct.net_device** %5, align 8
  %325 = getelementptr inbounds %struct.net_device, %struct.net_device* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %326, align 4
  %329 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %329, i32* %3, align 4
  br label %330

330:                                              ; preds = %321, %253, %24
  %331 = load i32, i32* %3, align 4
  ret i32 %331
}

declare dso_local %struct.ftgmac100* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @eth_skb_pad(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @ftgmac100_prep_tx_csum(%struct.sk_buff*, i32*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @ftgmac100_base_tx_ctlstat(%struct.ftgmac100*, i32) #1

declare dso_local i32 @FTGMAC100_TXDES0_TXBUF_SIZE(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ftgmac100_next_tx_pointer(%struct.ftgmac100*, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i64 @ftgmac100_tx_buf_avail(%struct.ftgmac100*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ftgmac100_free_tx_packet(%struct.ftgmac100*, i32, %struct.sk_buff*, %struct.ftgmac100_txdes*, i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
