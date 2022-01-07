; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32 }
%struct.net_device = type { i32 }
%struct.cp_private = type { i32, i32*, %struct.TYPE_8__*, i32, %struct.cp_desc*, %struct.sk_buff**, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cp_desc = type { i8*, i8*, i8* }
%struct.TYPE_6__ = type { i32 }
%struct.iphdr = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32* }

@.str = private unnamed_addr constant [37 x i8] c"BUG! Tx Ring full when queue awake!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@CP_TX_RING_SIZE = common dso_local global i32 0, align 4
@RingEnd = common dso_local global i32 0, align 4
@MSSMask = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Net bug: GSO size %d too large for 8139CP\0A\00", align 1
@DescOwn = common dso_local global i32 0, align 4
@LargeSend = common dso_local global i32 0, align 4
@MSSShift = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPCS = common dso_local global i32 0, align 4
@TCPCS = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@UDPCS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Net bug: asked to checksum invalid Legacy IP packet\0A\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@FirstFrag = common dso_local global i32 0, align 4
@LastFrag = common dso_local global i32 0, align 4
@tx_queued = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"tx queued, slot %d, skblen %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"tx queued, slots %d-%d, skblen %d\0A\00", align 1
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@TxPoll = common dso_local global i32 0, align 4
@NormalTxPoll = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @cp_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cp_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.iphdr*, align 8
  %14 = alloca %struct.cp_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.cp_desc*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call %struct.cp_private* @netdev_priv(%struct.net_device* %27)
  store %struct.cp_private* %28, %struct.cp_private** %6, align 8
  store i32 0, i32* %12, align 4
  %29 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %30 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %29, i32 0, i32 3
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %34 = call i64 @TX_BUFFS_AVAIL(%struct.cp_private* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = icmp sle i64 %34, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %2
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = call i32 @netif_stop_queue(%struct.net_device* %43)
  %45 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %46 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %45, i32 0, i32 3
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = call i32 @netdev_err(%struct.net_device* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %51, i32* %3, align 4
  br label %429

52:                                               ; preds = %2
  %53 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %54 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @CP_TX_RING_SIZE, align 4
  %58 = sub nsw i32 %57, 1
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @RingEnd, align 4
  br label %63

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  store i32 %64, i32* %8, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %65)
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @MSSMask, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @netdev_WARN_ONCE(%struct.net_device* %73, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  br label %419

76:                                               ; preds = %63
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call i32 @cp_tx_vlan_tag(%struct.sk_buff* %77)
  %79 = call i8* @cpu_to_le32(i32 %78)
  store i8* %79, i8** %11, align 8
  %80 = load i32, i32* @DescOwn, align 4
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %76
  %84 = load i32, i32* @LargeSend, align 4
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @MSSShift, align 4
  %87 = shl i32 %85, %86
  %88 = or i32 %84, %87
  %89 = load i32, i32* %9, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %128

91:                                               ; preds = %76
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %127

97:                                               ; preds = %91
  %98 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %99 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %98)
  store %struct.iphdr* %99, %struct.iphdr** %13, align 8
  %100 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %101 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @IPPROTO_TCP, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = load i32, i32* @IPCS, align 4
  %107 = load i32, i32* @TCPCS, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %126

111:                                              ; preds = %97
  %112 = load %struct.iphdr*, %struct.iphdr** %13, align 8
  %113 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @IPPROTO_UDP, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %111
  %118 = load i32, i32* @IPCS, align 4
  %119 = load i32, i32* @UDPCS, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* %9, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %9, align 4
  br label %125

123:                                              ; preds = %111
  %124 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %419

125:                                              ; preds = %117
  br label %126

126:                                              ; preds = %125, %105
  br label %127

127:                                              ; preds = %126, %91
  br label %128

128:                                              ; preds = %127, %83
  %129 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %130 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %129)
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %209

134:                                              ; preds = %128
  %135 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %136 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %135, i32 0, i32 4
  %137 = load %struct.cp_desc*, %struct.cp_desc** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %137, i64 %139
  store %struct.cp_desc* %140, %struct.cp_desc** %14, align 8
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  store i32 %143, i32* %15, align 4
  %144 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %145 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %144, i32 0, i32 6
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %153 = call i32 @dma_map_single(i32* %147, i32 %150, i32 %151, i32 %152)
  store i32 %153, i32* %16, align 4
  %154 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %155 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %154, i32 0, i32 6
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32, i32* %16, align 4
  %159 = call i64 @dma_mapping_error(i32* %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %134
  br label %419

162:                                              ; preds = %134
  %163 = load i8*, i8** %11, align 8
  %164 = load %struct.cp_desc*, %struct.cp_desc** %14, align 8
  %165 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  %166 = load i32, i32* %16, align 4
  %167 = call i8* @cpu_to_le64(i32 %166)
  %168 = load %struct.cp_desc*, %struct.cp_desc** %14, align 8
  %169 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %168, i32 0, i32 1
  store i8* %167, i8** %169, align 8
  %170 = call i32 (...) @wmb()
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %15, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @FirstFrag, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @LastFrag, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* %9, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = call i8* @cpu_to_le32(i32 %180)
  %182 = load %struct.cp_desc*, %struct.cp_desc** %14, align 8
  %183 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %182, i32 0, i32 0
  store i8* %181, i8** %183, align 8
  %184 = call i32 (...) @wmb()
  %185 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %186 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %187 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %186, i32 0, i32 5
  %188 = load %struct.sk_buff**, %struct.sk_buff*** %187, align 8
  %189 = load i32, i32* %7, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %188, i64 %190
  store %struct.sk_buff* %185, %struct.sk_buff** %191, align 8
  %192 = load i32, i32* %9, align 4
  %193 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %194 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %193, i32 0, i32 1
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  store i32 %192, i32* %198, align 4
  %199 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %200 = load i32, i32* @tx_queued, align 4
  %201 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %202 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %201, i32 0, i32 2
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %206 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call i32 (%struct.cp_private*, i32, %struct.TYPE_8__*, i8*, i32, i32, ...) @netif_dbg(%struct.cp_private* %199, i32 %200, %struct.TYPE_8__* %203, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %204, i32 %207)
  br label %390

209:                                              ; preds = %128
  %210 = load i32, i32* %7, align 4
  store i32 %210, i32* %23, align 4
  %211 = load i32, i32* %8, align 4
  store i32 %211, i32* %19, align 4
  %212 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %213 = call i32 @skb_headlen(%struct.sk_buff* %212)
  store i32 %213, i32* %18, align 4
  %214 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %215 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %214, i32 0, i32 6
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %219 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %18, align 4
  %222 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %223 = call i32 @dma_map_single(i32* %217, i32 %220, i32 %221, i32 %222)
  store i32 %223, i32* %21, align 4
  %224 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %225 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %224, i32 0, i32 6
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i32, i32* %21, align 4
  %229 = call i64 @dma_mapping_error(i32* %227, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %209
  br label %419

232:                                              ; preds = %209
  %233 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %234 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %235 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %234, i32 0, i32 5
  %236 = load %struct.sk_buff**, %struct.sk_buff*** %235, align 8
  %237 = load i32, i32* %7, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %236, i64 %238
  store %struct.sk_buff* %233, %struct.sk_buff** %239, align 8
  store i32 0, i32* %22, align 4
  br label %240

240:                                              ; preds = %342, %232
  %241 = load i32, i32* %22, align 4
  %242 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %243 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %242)
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp slt i32 %241, %245
  br i1 %246, label %247, label %345

247:                                              ; preds = %240
  %248 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %249 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %248)
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 2
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %22, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32* %254, i32** %24, align 8
  %255 = load i32, i32* %7, align 4
  %256 = call i8* @NEXT_TX(i32 %255)
  %257 = ptrtoint i8* %256 to i32
  store i32 %257, i32* %7, align 4
  %258 = load i32*, i32** %24, align 8
  %259 = call i32 @skb_frag_size(i32* %258)
  store i32 %259, i32* %25, align 4
  %260 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %261 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %260, i32 0, i32 6
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 0
  %264 = load i32*, i32** %24, align 8
  %265 = call i32 @skb_frag_address(i32* %264)
  %266 = load i32, i32* %25, align 4
  %267 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %268 = call i32 @dma_map_single(i32* %263, i32 %265, i32 %266, i32 %267)
  store i32 %268, i32* %26, align 4
  %269 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %270 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %269, i32 0, i32 6
  %271 = load %struct.TYPE_6__*, %struct.TYPE_6__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load i32, i32* %26, align 4
  %274 = call i64 @dma_mapping_error(i32* %272, i32 %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %282

276:                                              ; preds = %247
  %277 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %278 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %279 = load i32, i32* %23, align 4
  %280 = load i32, i32* %7, align 4
  %281 = call i32 @unwind_tx_frag_mapping(%struct.cp_private* %277, %struct.sk_buff* %278, i32 %279, i32 %280)
  br label %419

282:                                              ; preds = %247
  %283 = load i32, i32* %7, align 4
  %284 = load i32, i32* @CP_TX_RING_SIZE, align 4
  %285 = sub nsw i32 %284, 1
  %286 = icmp eq i32 %283, %285
  br i1 %286, label %287, label %289

287:                                              ; preds = %282
  %288 = load i32, i32* @RingEnd, align 4
  br label %290

289:                                              ; preds = %282
  br label %290

290:                                              ; preds = %289, %287
  %291 = phi i32 [ %288, %287 ], [ 0, %289 ]
  store i32 %291, i32* %8, align 4
  %292 = load i32, i32* %9, align 4
  %293 = load i32, i32* %8, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* %25, align 4
  %296 = or i32 %294, %295
  store i32 %296, i32* %20, align 4
  %297 = load i32, i32* %22, align 4
  %298 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %299 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %298)
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = sub nsw i32 %301, 1
  %303 = icmp eq i32 %297, %302
  br i1 %303, label %304, label %308

304:                                              ; preds = %290
  %305 = load i32, i32* @LastFrag, align 4
  %306 = load i32, i32* %20, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %20, align 4
  br label %308

308:                                              ; preds = %304, %290
  %309 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %310 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %309, i32 0, i32 4
  %311 = load %struct.cp_desc*, %struct.cp_desc** %310, align 8
  %312 = load i32, i32* %7, align 4
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %311, i64 %313
  store %struct.cp_desc* %314, %struct.cp_desc** %17, align 8
  %315 = load i8*, i8** %11, align 8
  %316 = load %struct.cp_desc*, %struct.cp_desc** %17, align 8
  %317 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %316, i32 0, i32 2
  store i8* %315, i8** %317, align 8
  %318 = load i32, i32* %26, align 4
  %319 = call i8* @cpu_to_le64(i32 %318)
  %320 = load %struct.cp_desc*, %struct.cp_desc** %17, align 8
  %321 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %320, i32 0, i32 1
  store i8* %319, i8** %321, align 8
  %322 = call i32 (...) @wmb()
  %323 = load i32, i32* %20, align 4
  %324 = call i8* @cpu_to_le32(i32 %323)
  %325 = load %struct.cp_desc*, %struct.cp_desc** %17, align 8
  %326 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %325, i32 0, i32 0
  store i8* %324, i8** %326, align 8
  %327 = call i32 (...) @wmb()
  %328 = load i32, i32* %20, align 4
  %329 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %330 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %329, i32 0, i32 1
  %331 = load i32*, i32** %330, align 8
  %332 = load i32, i32* %7, align 4
  %333 = zext i32 %332 to i64
  %334 = getelementptr inbounds i32, i32* %331, i64 %333
  store i32 %328, i32* %334, align 4
  %335 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %336 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %337 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %336, i32 0, i32 5
  %338 = load %struct.sk_buff**, %struct.sk_buff*** %337, align 8
  %339 = load i32, i32* %7, align 4
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %338, i64 %340
  store %struct.sk_buff* %335, %struct.sk_buff** %341, align 8
  br label %342

342:                                              ; preds = %308
  %343 = load i32, i32* %22, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %22, align 4
  br label %240

345:                                              ; preds = %240
  %346 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %347 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %346, i32 0, i32 4
  %348 = load %struct.cp_desc*, %struct.cp_desc** %347, align 8
  %349 = load i32, i32* %23, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %348, i64 %350
  store %struct.cp_desc* %351, %struct.cp_desc** %17, align 8
  %352 = load i8*, i8** %11, align 8
  %353 = load %struct.cp_desc*, %struct.cp_desc** %17, align 8
  %354 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %353, i32 0, i32 2
  store i8* %352, i8** %354, align 8
  %355 = load i32, i32* %21, align 4
  %356 = call i8* @cpu_to_le64(i32 %355)
  %357 = load %struct.cp_desc*, %struct.cp_desc** %17, align 8
  %358 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %357, i32 0, i32 1
  store i8* %356, i8** %358, align 8
  %359 = call i32 (...) @wmb()
  %360 = load i32, i32* %9, align 4
  %361 = load i32, i32* %19, align 4
  %362 = or i32 %360, %361
  %363 = load i32, i32* %18, align 4
  %364 = or i32 %362, %363
  %365 = load i32, i32* @FirstFrag, align 4
  %366 = or i32 %364, %365
  store i32 %366, i32* %20, align 4
  %367 = load i32, i32* %20, align 4
  %368 = call i8* @cpu_to_le32(i32 %367)
  %369 = load %struct.cp_desc*, %struct.cp_desc** %17, align 8
  %370 = getelementptr inbounds %struct.cp_desc, %struct.cp_desc* %369, i32 0, i32 0
  store i8* %368, i8** %370, align 8
  %371 = call i32 (...) @wmb()
  %372 = load i32, i32* %20, align 4
  %373 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %374 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %373, i32 0, i32 1
  %375 = load i32*, i32** %374, align 8
  %376 = load i32, i32* %23, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  store i32 %372, i32* %378, align 4
  %379 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %380 = load i32, i32* @tx_queued, align 4
  %381 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %382 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %381, i32 0, i32 2
  %383 = load %struct.TYPE_8__*, %struct.TYPE_8__** %382, align 8
  %384 = load i32, i32* %23, align 4
  %385 = load i32, i32* %7, align 4
  %386 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %387 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 8
  %389 = call i32 (%struct.cp_private*, i32, %struct.TYPE_8__*, i8*, i32, i32, ...) @netif_dbg(%struct.cp_private* %379, i32 %380, %struct.TYPE_8__* %383, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %384, i32 %385, i32 %388)
  br label %390

390:                                              ; preds = %345, %162
  %391 = load i32, i32* %7, align 4
  %392 = call i8* @NEXT_TX(i32 %391)
  %393 = ptrtoint i8* %392 to i32
  %394 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %395 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %394, i32 0, i32 0
  store i32 %393, i32* %395, align 8
  %396 = load %struct.net_device*, %struct.net_device** %5, align 8
  %397 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %398 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 8
  %400 = call i32 @netdev_sent_queue(%struct.net_device* %396, i32 %399)
  %401 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %402 = call i64 @TX_BUFFS_AVAIL(%struct.cp_private* %401)
  %403 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %404 = add nsw i64 %403, 1
  %405 = icmp sle i64 %402, %404
  br i1 %405, label %406, label %409

406:                                              ; preds = %390
  %407 = load %struct.net_device*, %struct.net_device** %5, align 8
  %408 = call i32 @netif_stop_queue(%struct.net_device* %407)
  br label %409

409:                                              ; preds = %406, %390
  br label %410

410:                                              ; preds = %419, %409
  %411 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %412 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %411, i32 0, i32 3
  %413 = load i64, i64* %10, align 8
  %414 = call i32 @spin_unlock_irqrestore(i32* %412, i64 %413)
  %415 = load i32, i32* @TxPoll, align 4
  %416 = load i32, i32* @NormalTxPoll, align 4
  %417 = call i32 @cpw8(i32 %415, i32 %416)
  %418 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %418, i32* %3, align 4
  br label %429

419:                                              ; preds = %276, %231, %161, %123, %72
  %420 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %421 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %420)
  %422 = load %struct.cp_private*, %struct.cp_private** %6, align 8
  %423 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %422, i32 0, i32 2
  %424 = load %struct.TYPE_8__*, %struct.TYPE_8__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %426, align 4
  br label %410

429:                                              ; preds = %410, %42
  %430 = load i32, i32* %3, align 4
  ret i32 %430
}

declare dso_local %struct.cp_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @TX_BUFFS_AVAIL(%struct.cp_private*) #1

declare dso_local %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @netdev_WARN_ONCE(%struct.net_device*, i8*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @cp_tx_vlan_tag(%struct.sk_buff*) #1

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @netif_dbg(%struct.cp_private*, i32, %struct.TYPE_8__*, i8*, i32, i32, ...) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i8* @NEXT_TX(i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @skb_frag_address(i32*) #1

declare dso_local i32 @unwind_tx_frag_mapping(%struct.cp_private*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @netdev_sent_queue(%struct.net_device*, i32) #1

declare dso_local i32 @cpw8(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
