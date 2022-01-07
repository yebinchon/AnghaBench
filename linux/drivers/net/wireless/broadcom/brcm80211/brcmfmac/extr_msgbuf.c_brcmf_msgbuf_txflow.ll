; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_txflow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_txflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_msgbuf = type { i32, %struct.brcmf_pub*, %struct.brcmf_commonring**, %struct.brcmf_flowring* }
%struct.brcmf_pub = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.brcmf_commonring = type { i32 }
%struct.brcmf_flowring = type { i32 }
%struct.sk_buff = type { i32, i64, i32 }
%struct.msgbuf_tx_msghdr = type { i32, i32, %struct.TYPE_8__, i64, %struct.TYPE_7__, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i32, i8*, i32 }

@BRCMF_MSGBUF_TX_FLUSH_CNT2 = common dso_local global i64 0, align 8
@BRCMF_MSGBUF_TX_FLUSH_CNT1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"No SKB, but qlen %d\0A\00", align 1
@ETH_HLEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"No PKTID available !!\0A\00", align 1
@MSGBUF_TYPE_TX_POST = common dso_local global i32 0, align 4
@BRCMF_MSGBUF_PKT_FLAGS_FRAME_802_3 = common dso_local global i32 0, align 4
@BRCMF_MSGBUF_PKT_FLAGS_PRIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_msgbuf*, i64)* @brcmf_msgbuf_txflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_msgbuf_txflow(%struct.brcmf_msgbuf* %0, i64 %1) #0 {
  %3 = alloca %struct.brcmf_msgbuf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.brcmf_flowring*, align 8
  %6 = alloca %struct.brcmf_pub*, align 8
  %7 = alloca %struct.brcmf_commonring*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.msgbuf_tx_msghdr*, align 8
  %14 = alloca i32, align 4
  store %struct.brcmf_msgbuf* %0, %struct.brcmf_msgbuf** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %16 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %15, i32 0, i32 3
  %17 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %16, align 8
  store %struct.brcmf_flowring* %17, %struct.brcmf_flowring** %5, align 8
  %18 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %19 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %18, i32 0, i32 1
  %20 = load %struct.brcmf_pub*, %struct.brcmf_pub** %19, align 8
  store %struct.brcmf_pub* %20, %struct.brcmf_pub** %6, align 8
  %21 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %22 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %21, i32 0, i32 2
  %23 = load %struct.brcmf_commonring**, %struct.brcmf_commonring*** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.brcmf_commonring*, %struct.brcmf_commonring** %23, i64 %24
  %26 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %25, align 8
  store %struct.brcmf_commonring* %26, %struct.brcmf_commonring** %7, align 8
  %27 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %7, align 8
  %28 = call i32 @brcmf_commonring_write_available(%struct.brcmf_commonring* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %193

31:                                               ; preds = %2
  %32 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %7, align 8
  %33 = call i32 @brcmf_commonring_lock(%struct.brcmf_commonring* %32)
  %34 = load i64, i64* @BRCMF_MSGBUF_TX_FLUSH_CNT2, align 8
  %35 = load i64, i64* @BRCMF_MSGBUF_TX_FLUSH_CNT1, align 8
  %36 = sub nsw i64 %34, %35
  store i64 %36, i64* %9, align 8
  br label %37

37:                                               ; preds = %183, %31
  %38 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %5, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i64 @brcmf_flowring_qlen(%struct.brcmf_flowring* %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %184

42:                                               ; preds = %37
  %43 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %5, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call %struct.sk_buff* @brcmf_flowring_dequeue(%struct.brcmf_flowring* %43, i64 %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %10, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %47 = icmp eq %struct.sk_buff* %46, null
  br i1 %47, label %48, label %54

48:                                               ; preds = %42
  %49 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %50 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %5, align 8
  %51 = load i64, i64* %4, align 8
  %52 = call i64 @brcmf_flowring_qlen(%struct.brcmf_flowring* %50, i64 %51)
  %53 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %52)
  br label %184

54:                                               ; preds = %42
  %55 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %56 = call i32 @skb_orphan(%struct.sk_buff* %55)
  %57 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %58 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %57, i32 0, i32 1
  %59 = load %struct.brcmf_pub*, %struct.brcmf_pub** %58, align 8
  %60 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %65 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = load i64, i64* @ETH_HLEN, align 8
  %69 = call i64 @brcmf_msgbuf_alloc_pktid(i32 %63, i32 %66, %struct.sk_buff* %67, i64 %68, i64* %11, i64* %12)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %54
  %72 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %5, align 8
  %73 = load i64, i64* %4, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = call i32 @brcmf_flowring_reinsert(%struct.brcmf_flowring* %72, i64 %73, %struct.sk_buff* %74)
  %76 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %77 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %184

78:                                               ; preds = %54
  %79 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %7, align 8
  %80 = call i8* @brcmf_commonring_reserve_for_write(%struct.brcmf_commonring* %79)
  store i8* %80, i8** %8, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %100, label %83

83:                                               ; preds = %78
  %84 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %85 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %84, i32 0, i32 1
  %86 = load %struct.brcmf_pub*, %struct.brcmf_pub** %85, align 8
  %87 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %3, align 8
  %92 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* %12, align 8
  %95 = call i32 @brcmf_msgbuf_get_pktid(i32 %90, i32 %93, i64 %94)
  %96 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %5, align 8
  %97 = load i64, i64* %4, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %99 = call i32 @brcmf_flowring_reinsert(%struct.brcmf_flowring* %96, i64 %97, %struct.sk_buff* %98)
  br label %184

100:                                              ; preds = %78
  %101 = load i64, i64* %9, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %9, align 8
  %103 = load i8*, i8** %8, align 8
  %104 = bitcast i8* %103 to %struct.msgbuf_tx_msghdr*
  store %struct.msgbuf_tx_msghdr* %104, %struct.msgbuf_tx_msghdr** %13, align 8
  %105 = load i32, i32* @MSGBUF_TYPE_TX_POST, align 4
  %106 = load %struct.msgbuf_tx_msghdr*, %struct.msgbuf_tx_msghdr** %13, align 8
  %107 = getelementptr inbounds %struct.msgbuf_tx_msghdr, %struct.msgbuf_tx_msghdr* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 2
  store i32 %105, i32* %108, align 8
  %109 = load i64, i64* %12, align 8
  %110 = add nsw i64 %109, 1
  %111 = trunc i64 %110 to i32
  %112 = call i8* @cpu_to_le32(i32 %111)
  %113 = load %struct.msgbuf_tx_msghdr*, %struct.msgbuf_tx_msghdr** %13, align 8
  %114 = getelementptr inbounds %struct.msgbuf_tx_msghdr, %struct.msgbuf_tx_msghdr* %113, i32 0, i32 7
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i8* %112, i8** %115, align 8
  %116 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %5, align 8
  %117 = load i64, i64* %4, align 8
  %118 = call i32 @brcmf_flowring_ifidx_get(%struct.brcmf_flowring* %116, i64 %117)
  %119 = load %struct.msgbuf_tx_msghdr*, %struct.msgbuf_tx_msghdr** %13, align 8
  %120 = getelementptr inbounds %struct.msgbuf_tx_msghdr, %struct.msgbuf_tx_msghdr* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  %122 = load i32, i32* @BRCMF_MSGBUF_PKT_FLAGS_FRAME_802_3, align 4
  %123 = load %struct.msgbuf_tx_msghdr*, %struct.msgbuf_tx_msghdr** %13, align 8
  %124 = getelementptr inbounds %struct.msgbuf_tx_msghdr, %struct.msgbuf_tx_msghdr* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = and i32 %127, 7
  %129 = load i32, i32* @BRCMF_MSGBUF_PKT_FLAGS_PRIO_SHIFT, align 4
  %130 = shl i32 %128, %129
  %131 = load %struct.msgbuf_tx_msghdr*, %struct.msgbuf_tx_msghdr** %13, align 8
  %132 = getelementptr inbounds %struct.msgbuf_tx_msghdr, %struct.msgbuf_tx_msghdr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.msgbuf_tx_msghdr*, %struct.msgbuf_tx_msghdr** %13, align 8
  %136 = getelementptr inbounds %struct.msgbuf_tx_msghdr, %struct.msgbuf_tx_msghdr* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  %137 = load %struct.msgbuf_tx_msghdr*, %struct.msgbuf_tx_msghdr** %13, align 8
  %138 = getelementptr inbounds %struct.msgbuf_tx_msghdr, %struct.msgbuf_tx_msghdr* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load i64, i64* @ETH_HLEN, align 8
  %144 = call i32 @memcpy(i32 %139, i32 %142, i64 %143)
  %145 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ETH_HLEN, align 8
  %149 = sub nsw i64 %147, %148
  %150 = call i32 @cpu_to_le16(i64 %149)
  %151 = load %struct.msgbuf_tx_msghdr*, %struct.msgbuf_tx_msghdr** %13, align 8
  %152 = getelementptr inbounds %struct.msgbuf_tx_msghdr, %struct.msgbuf_tx_msghdr* %151, i32 0, i32 5
  store i32 %150, i32* %152, align 8
  %153 = load i64, i64* %11, align 8
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = ashr i32 %155, 32
  %157 = call i8* @cpu_to_le32(i32 %156)
  %158 = load %struct.msgbuf_tx_msghdr*, %struct.msgbuf_tx_msghdr** %13, align 8
  %159 = getelementptr inbounds %struct.msgbuf_tx_msghdr, %struct.msgbuf_tx_msghdr* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  store i8* %157, i8** %160, align 8
  %161 = load i32, i32* %14, align 4
  %162 = call i8* @cpu_to_le32(i32 %161)
  %163 = load %struct.msgbuf_tx_msghdr*, %struct.msgbuf_tx_msghdr** %13, align 8
  %164 = getelementptr inbounds %struct.msgbuf_tx_msghdr, %struct.msgbuf_tx_msghdr* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  store i8* %162, i8** %165, align 8
  %166 = load %struct.msgbuf_tx_msghdr*, %struct.msgbuf_tx_msghdr** %13, align 8
  %167 = getelementptr inbounds %struct.msgbuf_tx_msghdr, %struct.msgbuf_tx_msghdr* %166, i32 0, i32 3
  store i64 0, i64* %167, align 8
  %168 = load %struct.msgbuf_tx_msghdr*, %struct.msgbuf_tx_msghdr** %13, align 8
  %169 = getelementptr inbounds %struct.msgbuf_tx_msghdr, %struct.msgbuf_tx_msghdr* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  store i64 0, i64* %170, align 8
  %171 = load %struct.msgbuf_tx_msghdr*, %struct.msgbuf_tx_msghdr** %13, align 8
  %172 = getelementptr inbounds %struct.msgbuf_tx_msghdr, %struct.msgbuf_tx_msghdr* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  store i64 0, i64* %173, align 8
  %174 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %7, align 8
  %175 = getelementptr inbounds %struct.brcmf_commonring, %struct.brcmf_commonring* %174, i32 0, i32 0
  %176 = call i32 @atomic_inc(i32* %175)
  %177 = load i64, i64* %9, align 8
  %178 = load i64, i64* @BRCMF_MSGBUF_TX_FLUSH_CNT2, align 8
  %179 = icmp sge i64 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %100
  %181 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %7, align 8
  %182 = call i32 @brcmf_commonring_write_complete(%struct.brcmf_commonring* %181)
  store i64 0, i64* %9, align 8
  br label %183

183:                                              ; preds = %180, %100
  br label %37

184:                                              ; preds = %83, %71, %48, %37
  %185 = load i64, i64* %9, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %7, align 8
  %189 = call i32 @brcmf_commonring_write_complete(%struct.brcmf_commonring* %188)
  br label %190

190:                                              ; preds = %187, %184
  %191 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %7, align 8
  %192 = call i32 @brcmf_commonring_unlock(%struct.brcmf_commonring* %191)
  br label %193

193:                                              ; preds = %190, %30
  ret void
}

declare dso_local i32 @brcmf_commonring_write_available(%struct.brcmf_commonring*) #1

declare dso_local i32 @brcmf_commonring_lock(%struct.brcmf_commonring*) #1

declare dso_local i64 @brcmf_flowring_qlen(%struct.brcmf_flowring*, i64) #1

declare dso_local %struct.sk_buff* @brcmf_flowring_dequeue(%struct.brcmf_flowring*, i64) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, ...) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i64 @brcmf_msgbuf_alloc_pktid(i32, i32, %struct.sk_buff*, i64, i64*, i64*) #1

declare dso_local i32 @brcmf_flowring_reinsert(%struct.brcmf_flowring*, i64, %struct.sk_buff*) #1

declare dso_local i8* @brcmf_commonring_reserve_for_write(%struct.brcmf_commonring*) #1

declare dso_local i32 @brcmf_msgbuf_get_pktid(i32, i32, i64) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @brcmf_flowring_ifidx_get(%struct.brcmf_flowring*, i64) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @brcmf_commonring_write_complete(%struct.brcmf_commonring*) #1

declare dso_local i32 @brcmf_commonring_unlock(%struct.brcmf_commonring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
