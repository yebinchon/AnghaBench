; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_hard_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_hard_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i64 }
%struct.net_device = type { i32 }
%struct.mwifiex_private = type { i64, i64, %struct.TYPE_6__*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mwifiex_txinfo = type { i64, i64, i32 }
%struct.TYPE_5__ = type { i32 }

@DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"data: %lu BSS(%d-%d): Data <= kernel\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@MWIFIEX_SURPRISE_REMOVED = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Tx: bad skb len %d\0A\00", align 1
@MWIFIEX_MIN_DATA_HEADER_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"data: Tx: insufficient skb headroom %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Tx: cannot alloca new_skb\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"info: new skb headroomd %d\0A\00", align 1
@SKBTX_WIFI_STATUS = common dso_local global i32 0, align 4
@MWIFIEX_FW_V15 = common dso_local global i64 0, align 8
@MWIFIEX_BUF_FLAG_EAPOL_TX_STATUS = common dso_local global i32 0, align 4
@MWIFIEX_BSS_TYPE_STA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @mwifiex_hard_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_hard_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mwifiex_private*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.mwifiex_txinfo*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %10)
  store %struct.mwifiex_private* %11, %struct.mwifiex_private** %6, align 8
  %12 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %13 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load i32, i32* @DATA, align 4
  %16 = load i32, i32* @jiffies, align 4
  %17 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %18 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %21 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_6__* %14, i32 %15, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %19, i32 %22)
  %24 = load i32, i32* @MWIFIEX_SURPRISE_REMOVED, align 4
  %25 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %26 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = call i64 @test_bit(i32 %24, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @kfree_skb(%struct.sk_buff* %32)
  %34 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %35 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  store i32 0, i32* %3, align 4
  br label %215

39:                                               ; preds = %2
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ETH_FRAME_LEN, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44, %39
  %51 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %52 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* @ERROR, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_6__* %53, i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call i32 @kfree_skb(%struct.sk_buff* %59)
  %61 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %62 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  store i32 0, i32* %3, align 4
  br label %215

66:                                               ; preds = %44
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i64 @skb_headroom(%struct.sk_buff* %67)
  %69 = load i64, i64* @MWIFIEX_MIN_DATA_HEADER_LEN, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %112

71:                                               ; preds = %66
  %72 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %73 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = load i32, i32* @DATA, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = call i64 @skb_headroom(%struct.sk_buff* %76)
  %78 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_6__* %74, i32 %75, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = load i64, i64* @MWIFIEX_MIN_DATA_HEADER_LEN, align 8
  %81 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %79, i64 %80)
  store %struct.sk_buff* %81, %struct.sk_buff** %7, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = icmp ne %struct.sk_buff* %82, null
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %71
  %89 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %90 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* @ERROR, align 4
  %93 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_6__* %91, i32 %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = call i32 @kfree_skb(%struct.sk_buff* %94)
  %96 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %97 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  store i32 0, i32* %3, align 4
  br label %215

101:                                              ; preds = %71
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = call i32 @kfree_skb(%struct.sk_buff* %102)
  %104 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %104, %struct.sk_buff** %4, align 8
  %105 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %106 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %105, i32 0, i32 2
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load i32, i32* @INFO, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = call i64 @skb_headroom(%struct.sk_buff* %109)
  %111 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_6__* %107, i32 %108, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %110)
  br label %112

112:                                              ; preds = %101, %66
  %113 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %114 = call %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff* %113)
  store %struct.mwifiex_txinfo* %114, %struct.mwifiex_txinfo** %8, align 8
  %115 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %8, align 8
  %116 = call i32 @memset(%struct.mwifiex_txinfo* %115, i32 0, i32 24)
  %117 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %118 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %8, align 8
  %121 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 8
  %122 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %123 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %8, align 8
  %126 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %8, align 8
  %131 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @is_multicast_ether_addr(i32 %134)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %159, label %138

138:                                              ; preds = %112
  %139 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %138
  %144 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %145 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %144)
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @SKBTX_WIFI_STATUS, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %159

151:                                              ; preds = %143
  %152 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %153 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %152, i32 0, i32 2
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @MWIFIEX_FW_V15, align 8
  %158 = icmp eq i64 %156, %157
  br label %159

159:                                              ; preds = %151, %143, %138, %112
  %160 = phi i1 [ false, %143 ], [ false, %138 ], [ false, %112 ], [ %158, %151 ]
  %161 = zext i1 %160 to i32
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %166 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %167 = load i32, i32* @MWIFIEX_BUF_FLAG_EAPOL_TX_STATUS, align 4
  %168 = call %struct.sk_buff* @mwifiex_clone_skb_for_tx_status(%struct.mwifiex_private* %165, %struct.sk_buff* %166, i32 %167, i32* null)
  store %struct.sk_buff* %168, %struct.sk_buff** %4, align 8
  br label %169

169:                                              ; preds = %164, %159
  %170 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %171 = call i32 @__net_timestamp(%struct.sk_buff* %170)
  %172 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %173 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %172, i32 0, i32 2
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i64 @ISSUPP_TDLS_ENABLED(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %211

179:                                              ; preds = %169
  %180 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %181 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @MWIFIEX_BSS_TYPE_STA, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %185, label %211

185:                                              ; preds = %179
  %186 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %187 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @ether_addr_equal_unaligned(i32 %188, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %211, label %194

194:                                              ; preds = %185
  %195 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %196 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %195, i32 0, i32 2
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %194
  %202 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %203 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %208 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %209 = call i32 @mwifiex_tdls_check_tx(%struct.mwifiex_private* %207, %struct.sk_buff* %208)
  br label %210

210:                                              ; preds = %206, %201, %194
  br label %211

211:                                              ; preds = %210, %185, %179, %169
  %212 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %213 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %214 = call i32 @mwifiex_queue_tx_pkt(%struct.mwifiex_private* %212, %struct.sk_buff* %213)
  store i32 0, i32* %3, align 4
  br label %215

215:                                              ; preds = %211, %88, %50, %31
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.mwifiex_txinfo*, i32, i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @mwifiex_clone_skb_for_tx_status(%struct.mwifiex_private*, %struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local i64 @ISSUPP_TDLS_ENABLED(i32) #1

declare dso_local i32 @ether_addr_equal_unaligned(i32, i32) #1

declare dso_local i32 @mwifiex_tdls_check_tx(%struct.mwifiex_private*, %struct.sk_buff*) #1

declare dso_local i32 @mwifiex_queue_tx_pkt(%struct.mwifiex_private*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
