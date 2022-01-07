; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_ns83820_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_ns83820_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i32, i64 }
%struct.net_device = type { i32 }
%struct.ns83820 = type { i32, i32, i32, i32, i32, i32, i32, %struct.sk_buff**, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"ns83820_hard_start_xmit\0A\00", align 1
@CFG_LNKSTS = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NR_TX_DESC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"stop_queue - not enough(%p)\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"restart queue(%p)\0A\00", align 1
@MIN_TX_DESC_FREE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"stop_queue - last entry(%p)\0A\00", align 1
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@EXTSTS_IPPKT = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@EXTSTS_TCPPKT = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@EXTSTS_UDPPKT = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@DESC_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"frag[%3u]: %4u @ 0x%08Lx\0A\00", align 1
@DESC_LINK = common dso_local global i64 0, align 8
@DESC_BUFPTR = common dso_local global i32 0, align 4
@DESC_EXTSTS = common dso_local global i64 0, align 8
@CMDSTS_MORE = common dso_local global i32 0, align 4
@CMDSTS_INTR = common dso_local global i32 0, align 4
@CMDSTS_OWN = common dso_local global i32 0, align 4
@DESC_CMDSTS = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"frag: buf=%08Lx  page=%08lx offset=%08lx\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"done pkt\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@EXTSTS_VPKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ns83820_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns83820_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ns83820*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call %struct.ns83820* @PRIV(%struct.net_device* %21)
  store %struct.ns83820* %22, %struct.ns83820** %6, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %23 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %81, %2
  %29 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %30 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CFG_LNKSTS, align 4
  %33 = and i32 %31, %32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %28
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = call i32 @netif_stop_queue(%struct.net_device* %37)
  %39 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %40 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CFG_LNKSTS, align 4
  %43 = and i32 %41, %42
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %47, i32* %3, align 4
  br label %338

48:                                               ; preds = %36
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = call i32 @netif_start_queue(%struct.net_device* %49)
  br label %51

51:                                               ; preds = %48, %28
  %52 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %53 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  store i32 %54, i32* %13, align 4
  %55 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %56 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @NR_TX_DESC, align 4
  %60 = add i32 %58, %59
  %61 = sub i32 %60, 2
  %62 = load i32, i32* %7, align 4
  %63 = sub i32 %61, %62
  %64 = load i32, i32* @NR_TX_DESC, align 4
  %65 = urem i32 %63, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %51
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), %struct.net_device* %72)
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = call i32 @netif_stop_queue(%struct.net_device* %74)
  %76 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %77 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), %struct.net_device* %82)
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = call i32 @netif_start_queue(%struct.net_device* %84)
  br label %28

86:                                               ; preds = %71
  %87 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %87, i32* %3, align 4
  br label %338

88:                                               ; preds = %51
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %91 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %89, %92
  br i1 %93, label %94, label %105

94:                                               ; preds = %88
  store i32 1, i32* %18, align 4
  %95 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %96 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @NR_TX_DESC, align 4
  %99 = udiv i32 %98, 4
  %100 = add i32 %97, %99
  %101 = load i32, i32* @NR_TX_DESC, align 4
  %102 = urem i32 %100, %101
  %103 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %104 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %94, %88
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %10, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @MIN_TX_DESC_FREE, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load %struct.net_device*, %struct.net_device** %5, align 8
  %114 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), %struct.net_device* %113)
  %115 = load %struct.net_device*, %struct.net_device** %5, align 8
  %116 = call i32 @netif_stop_queue(%struct.net_device* %115)
  store i32 1, i32* %17, align 4
  br label %117

117:                                              ; preds = %112, %105
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %118)
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  store %struct.TYPE_7__* %121, %struct.TYPE_7__** %16, align 8
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %16, align 8
  br label %125

125:                                              ; preds = %124, %117
  store i32 0, i32* %9, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %158

131:                                              ; preds = %125
  %132 = load i32, i32* @EXTSTS_IPPKT, align 4
  %133 = load i32, i32* %9, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %9, align 4
  %135 = load i64, i64* @IPPROTO_TCP, align 8
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = call %struct.TYPE_10__* @ip_hdr(%struct.sk_buff* %136)
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %135, %139
  br i1 %140, label %141, label %145

141:                                              ; preds = %131
  %142 = load i32, i32* @EXTSTS_TCPPKT, align 4
  %143 = load i32, i32* %9, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %9, align 4
  br label %157

145:                                              ; preds = %131
  %146 = load i64, i64* @IPPROTO_UDP, align 8
  %147 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %148 = call %struct.TYPE_10__* @ip_hdr(%struct.sk_buff* %147)
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %146, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %145
  %153 = load i32, i32* @EXTSTS_UDPPKT, align 4
  %154 = load i32, i32* %9, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %9, align 4
  br label %156

156:                                              ; preds = %152, %145
  br label %157

157:                                              ; preds = %156, %141
  br label %158

158:                                              ; preds = %157, %125
  %159 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  store i32 %161, i32* %15, align 4
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %158
  %165 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %15, align 4
  %169 = zext i32 %168 to i64
  %170 = sub nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %15, align 4
  br label %172

172:                                              ; preds = %164, %158
  %173 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %174 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %173, i32 0, i32 8
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %181 = call i64 @pci_map_single(%struct.TYPE_9__* %175, i32 %178, i32 %179, i32 %180)
  store i64 %181, i64* %14, align 8
  %182 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %183 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %182, i32 0, i32 9
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @DESC_SIZE, align 4
  %187 = mul nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %184, i64 %188
  store i32* %189, i32** %19, align 8
  br label %190

190:                                              ; preds = %266, %172
  %191 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %192 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %191, i32 0, i32 9
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* @DESC_SIZE, align 4
  %196 = mul nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %193, i64 %197
  store i32* %198, i32** %20, align 8
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* %15, align 4
  %201 = load i64, i64* %14, align 8
  %202 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %199, i32 %200, i64 %201)
  %203 = load i32, i32* %7, align 4
  store i32 %203, i32* %13, align 4
  %204 = load i32, i32* %7, align 4
  %205 = add nsw i32 %204, 1
  %206 = load i32, i32* @NR_TX_DESC, align 4
  %207 = urem i32 %205, %206
  store i32 %207, i32* %7, align 4
  %208 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %209 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @DESC_SIZE, align 4
  %213 = mul nsw i32 %211, %212
  %214 = mul nsw i32 %213, 4
  %215 = add nsw i32 %210, %214
  %216 = call i32 @cpu_to_le32(i32 %215)
  %217 = load i32*, i32** %20, align 8
  %218 = load i64, i64* @DESC_LINK, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  store volatile i32 %216, i32* %219, align 4
  %220 = load i32*, i32** %20, align 8
  %221 = load i32, i32* @DESC_BUFPTR, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i64, i64* %14, align 8
  %225 = call i32 @desc_addr_set(i32* %223, i64 %224)
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @cpu_to_le32(i32 %226)
  %228 = load i32*, i32** %20, align 8
  %229 = load i64, i64* @DESC_EXTSTS, align 8
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  store volatile i32 %227, i32* %230, align 4
  %231 = load i32, i32* %11, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %190
  %234 = load i32, i32* @CMDSTS_MORE, align 4
  br label %243

235:                                              ; preds = %190
  %236 = load i32, i32* %18, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %240

238:                                              ; preds = %235
  %239 = load i32, i32* @CMDSTS_INTR, align 4
  br label %241

240:                                              ; preds = %235
  br label %241

241:                                              ; preds = %240, %238
  %242 = phi i32 [ %239, %238 ], [ 0, %240 ]
  br label %243

243:                                              ; preds = %241, %233
  %244 = phi i32 [ %234, %233 ], [ %242, %241 ]
  store i32 %244, i32* %8, align 4
  %245 = load i32*, i32** %20, align 8
  %246 = load i32*, i32** %19, align 8
  %247 = icmp eq i32* %245, %246
  br i1 %247, label %248, label %249

248:                                              ; preds = %243
  br label %251

249:                                              ; preds = %243
  %250 = load i32, i32* @CMDSTS_OWN, align 4
  br label %251

251:                                              ; preds = %249, %248
  %252 = phi i32 [ 0, %248 ], [ %250, %249 ]
  %253 = load i32, i32* %8, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %8, align 4
  %255 = load i32, i32* %15, align 4
  %256 = load i32, i32* %8, align 4
  %257 = or i32 %256, %255
  store i32 %257, i32* %8, align 4
  %258 = load i32, i32* %8, align 4
  %259 = call i32 @cpu_to_le32(i32 %258)
  %260 = load i32*, i32** %20, align 8
  %261 = load i64, i64* @DESC_CMDSTS, align 8
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  store volatile i32 %259, i32* %262, align 4
  %263 = load i32, i32* %11, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %266, label %265

265:                                              ; preds = %251
  br label %291

266:                                              ; preds = %251
  %267 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %268 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %267, i32 0, i32 8
  %269 = load %struct.TYPE_9__*, %struct.TYPE_9__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %272 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %273 = call i32 @skb_frag_size(%struct.TYPE_7__* %272)
  %274 = load i32, i32* @DMA_TO_DEVICE, align 4
  %275 = call i64 @skb_frag_dma_map(i32* %270, %struct.TYPE_7__* %271, i32 0, i32 %273, i32 %274)
  store i64 %275, i64* %14, align 8
  %276 = load i64, i64* %14, align 8
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = call i64 @page_to_pfn(i32 %279)
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %276, i64 %280, i32 %283)
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %286 = call i32 @skb_frag_size(%struct.TYPE_7__* %285)
  store i32 %286, i32* %15, align 4
  %287 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 1
  store %struct.TYPE_7__* %288, %struct.TYPE_7__** %16, align 8
  %289 = load i32, i32* %11, align 4
  %290 = add nsw i32 %289, -1
  store i32 %290, i32* %11, align 4
  br label %190

291:                                              ; preds = %265
  %292 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %293 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %294 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %293, i32 0, i32 5
  %295 = call i32 @spin_lock_irq(i32* %294)
  %296 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %297 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %298 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %297, i32 0, i32 7
  %299 = load %struct.sk_buff**, %struct.sk_buff*** %298, align 8
  %300 = load i32, i32* %13, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %299, i64 %301
  store %struct.sk_buff* %296, %struct.sk_buff** %302, align 8
  %303 = load i32, i32* @CMDSTS_OWN, align 4
  %304 = call i32 @cpu_to_le32(i32 %303)
  %305 = load i32*, i32** %19, align 8
  %306 = load i64, i64* @DESC_CMDSTS, align 8
  %307 = getelementptr inbounds i32, i32* %305, i64 %306
  %308 = load volatile i32, i32* %307, align 4
  %309 = or i32 %308, %304
  store volatile i32 %309, i32* %307, align 4
  %310 = load i32, i32* %7, align 4
  %311 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %312 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %311, i32 0, i32 1
  store i32 %310, i32* %312, align 4
  %313 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %314 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %313, i32 0, i32 6
  %315 = call i32 @atomic_inc(i32* %314)
  %316 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %317 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %316, i32 0, i32 5
  %318 = call i32 @spin_unlock_irq(i32* %317)
  %319 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %320 = call i32 @kick_tx(%struct.ns83820* %319)
  %321 = load i32, i32* %17, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %336

323:                                              ; preds = %291
  %324 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %325 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* %12, align 4
  %328 = icmp ne i32 %326, %327
  br i1 %328, label %329, label %336

329:                                              ; preds = %323
  %330 = load %struct.ns83820*, %struct.ns83820** %6, align 8
  %331 = call i64 @start_tx_okay(%struct.ns83820* %330)
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %329
  %334 = load %struct.net_device*, %struct.net_device** %5, align 8
  %335 = call i32 @netif_start_queue(%struct.net_device* %334)
  br label %336

336:                                              ; preds = %333, %329, %323, %291
  %337 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %337, i32* %3, align 4
  br label %338

338:                                              ; preds = %336, %86, %46
  %339 = load i32, i32* %3, align 4
  ret i32 %339
}

declare dso_local %struct.ns83820* @PRIV(%struct.net_device*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local %struct.TYPE_10__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i64 @pci_map_single(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @desc_addr_set(i32*, i64) #1

declare dso_local i64 @skb_frag_dma_map(i32*, %struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(%struct.TYPE_7__*) #1

declare dso_local i64 @page_to_pfn(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kick_tx(%struct.ns83820*) #1

declare dso_local i64 @start_tx_okay(%struct.ns83820*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
