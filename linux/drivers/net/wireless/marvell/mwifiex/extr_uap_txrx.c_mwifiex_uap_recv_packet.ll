; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_txrx.c_mwifiex_uap_recv_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_txrx.c_mwifiex_uap_recv_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, i32, %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i64, i32, i32 }
%struct.sk_buff = type { i64, i64, i32, i32, i32, i64 }
%struct.mwifiex_sta_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ethhdr = type { i32, i32 }
%struct.mwifiex_txinfo = type { i32, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@MWIFIEX_MIN_DATA_HEADER_LEN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@MWIFIEX_BUF_FLAG_BRIDGED_PKT = common dso_local global i32 0, align 4
@MWIFIEX_BRIDGED_PKTS_THR_HIGH = common dso_local global i64 0, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Tx: Bridge packet limit reached. Drop packet!\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to allocate skb_uap\00", align 1
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@MWIFIEX_USB = common dso_local global i64 0, align 8
@MWIFIEX_PCIE = common dso_local global i64 0, align 8
@MWIFIEX_RX_DATA_BUF_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_uap_recv_packet(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.mwifiex_adapter*, align 8
  %7 = alloca %struct.mwifiex_sta_node*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.mwifiex_txinfo*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %12 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %11, i32 0, i32 3
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  store %struct.mwifiex_adapter* %13, %struct.mwifiex_adapter** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %191

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = bitcast i8* %21 to %struct.ethhdr*
  store %struct.ethhdr* %22, %struct.ethhdr** %8, align 8
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %24 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %25 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %23, i32 %26)
  store %struct.mwifiex_sta_node* %27, %struct.mwifiex_sta_node** %7, align 8
  %28 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %7, align 8
  %29 = icmp ne %struct.mwifiex_sta_node* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %17
  %31 = load i32, i32* @jiffies, align 4
  %32 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %7, align 8
  %33 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %7, align 8
  %39 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %37
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %7, align 8
  %46 = getelementptr inbounds %struct.mwifiex_sta_node, %struct.mwifiex_sta_node* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %30, %17
  %51 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %52 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @is_multicast_ether_addr(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %58 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %59 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %57, i32 %60)
  %62 = icmp ne %struct.mwifiex_sta_node* %61, null
  br i1 %62, label %63, label %138

63:                                               ; preds = %56, %50
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i64 @skb_headroom(%struct.sk_buff* %64)
  %66 = load i64, i64* @MWIFIEX_MIN_DATA_HEADER_LEN, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = load i64, i64* @MWIFIEX_MIN_DATA_HEADER_LEN, align 8
  %71 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %69, i64 %70)
  store %struct.sk_buff* %71, %struct.sk_buff** %9, align 8
  br label %76

72:                                               ; preds = %63
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = load i32, i32* @GFP_ATOMIC, align 4
  %75 = call %struct.sk_buff* @skb_copy(%struct.sk_buff* %73, i32 %74)
  store %struct.sk_buff* %75, %struct.sk_buff** %9, align 8
  br label %76

76:                                               ; preds = %72, %68
  %77 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %78 = call i64 @likely(%struct.sk_buff* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %123

80:                                               ; preds = %76
  %81 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %82 = call %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff* %81)
  store %struct.mwifiex_txinfo* %82, %struct.mwifiex_txinfo** %10, align 8
  %83 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %10, align 8
  %84 = call i32 @memset(%struct.mwifiex_txinfo* %83, i32 0, i32 12)
  %85 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %86 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %10, align 8
  %89 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %91 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %10, align 8
  %94 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @MWIFIEX_BUF_FLAG_BRIDGED_PKT, align 4
  %96 = load %struct.mwifiex_txinfo*, %struct.mwifiex_txinfo** %10, align 8
  %97 = getelementptr inbounds %struct.mwifiex_txinfo, %struct.mwifiex_txinfo* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %101 = call i32 @__net_timestamp(%struct.sk_buff* %100)
  %102 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %103 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %104 = call i32 @mwifiex_wmm_add_buf_txqueue(%struct.mwifiex_private* %102, %struct.sk_buff* %103)
  %105 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %106 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %105, i32 0, i32 2
  %107 = call i32 @atomic_inc(i32* %106)
  %108 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %109 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %108, i32 0, i32 1
  %110 = call i32 @atomic_inc(i32* %109)
  %111 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %112 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %111, i32 0, i32 1
  %113 = call i64 @atomic_read(i32* %112)
  %114 = load i64, i64* @MWIFIEX_BRIDGED_PKTS_THR_HIGH, align 8
  %115 = icmp sge i64 %113, %114
  br i1 %115, label %116, label %122

116:                                              ; preds = %80
  %117 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %118 = load i32, i32* @ERROR, align 4
  %119 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %117, i32 %118, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %120 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %121 = call i32 @mwifiex_uap_cleanup_tx_queues(%struct.mwifiex_private* %120)
  br label %122

122:                                              ; preds = %116, %80
  br label %127

123:                                              ; preds = %76
  %124 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %125 = load i32, i32* @ERROR, align 4
  %126 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %124, i32 %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %127

127:                                              ; preds = %123, %122
  %128 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %129 = call i32 @mwifiex_queue_main_work(%struct.mwifiex_adapter* %128)
  %130 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %131 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %132 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private* %130, i32 %133)
  %135 = icmp ne %struct.mwifiex_sta_node* %134, null
  br i1 %135, label %136, label %137

136:                                              ; preds = %127
  store i32 0, i32* %3, align 4
  br label %191

137:                                              ; preds = %127
  br label %138

138:                                              ; preds = %137, %56
  %139 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %140 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %146 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @eth_type_trans(%struct.sk_buff* %144, i32 %147)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %150 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 4
  %151 = load i32, i32* @CHECKSUM_NONE, align 4
  %152 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  %154 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %155 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @MWIFIEX_USB, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %165, label %159

159:                                              ; preds = %138
  %160 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %6, align 8
  %161 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @MWIFIEX_PCIE, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %181

165:                                              ; preds = %159, %138
  %166 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %167 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @MWIFIEX_RX_DATA_BUF_SIZE, align 8
  %170 = icmp sgt i64 %168, %169
  br i1 %170, label %171, label %181

171:                                              ; preds = %165
  %172 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %173 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @MWIFIEX_RX_DATA_BUF_SIZE, align 8
  %176 = sub nsw i64 %174, %175
  %177 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %178 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, %176
  store i64 %180, i64* %178, align 8
  br label %181

181:                                              ; preds = %171, %165, %159
  %182 = call i64 (...) @in_interrupt()
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %186 = call i32 @netif_rx(%struct.sk_buff* %185)
  br label %190

187:                                              ; preds = %181
  %188 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %189 = call i32 @netif_rx_ni(%struct.sk_buff* %188)
  br label %190

190:                                              ; preds = %187, %184
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %190, %136, %16
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_sta_entry(%struct.mwifiex_private*, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i64) #1

declare dso_local %struct.sk_buff* @skb_copy(%struct.sk_buff*, i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local %struct.mwifiex_txinfo* @MWIFIEX_SKB_TXCB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.mwifiex_txinfo*, i32, i32) #1

declare dso_local i32 @__net_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @mwifiex_wmm_add_buf_txqueue(%struct.mwifiex_private*, %struct.sk_buff*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local i32 @mwifiex_uap_cleanup_tx_queues(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_queue_main_work(%struct.mwifiex_adapter*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
