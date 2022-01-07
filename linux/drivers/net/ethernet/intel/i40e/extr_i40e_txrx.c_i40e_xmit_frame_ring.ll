; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_xmit_frame_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_xmit_frame_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.i40e_ring = type { i64, i32, %struct.i40e_tx_buffer*, %struct.TYPE_2__ }
%struct.i40e_tx_buffer = type { i32, %struct.sk_buff*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i40e_pf = type { i32, %struct.sk_buff* }

@I40E_TX_DESC_DTYPE_CONTEXT = common dso_local global i32 0, align 4
@xmit_frame_ring = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@I40E_TX_FLAGS_IPV4 = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@I40E_TX_FLAGS_IPV6 = common dso_local global i32 0, align 4
@I40E_TX_FLAGS_TSO = common dso_local global i32 0, align 4
@I40E_TX_FLAGS_TSYN = common dso_local global i32 0, align 4
@I40E_TX_DESC_CMD_ICRC = common dso_local global i32 0, align 4
@xmit_frame_ring_drop = common dso_local global i32 0, align 4
@__I40E_PTP_TX_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.i40e_ring*)* @i40e_xmit_frame_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_xmit_frame_ring(%struct.sk_buff* %0, %struct.i40e_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.i40e_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_tx_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.i40e_pf*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.i40e_ring* %1, %struct.i40e_ring** %5, align 8
  %19 = load i32, i32* @I40E_TX_DESC_DTYPE_CONTEXT, align 4
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @prefetch(i32 %22)
  %24 = load i32, i32* @xmit_frame_ring, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %27 = call i32 @i40e_trace(i32 %24, %struct.sk_buff* %25, %struct.i40e_ring* %26)
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i32 @i40e_xmit_descriptor_count(%struct.sk_buff* %28)
  store i32 %29, i32* %16, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = load i32, i32* %16, align 4
  %32 = call i64 @i40e_chk_linearize(%struct.sk_buff* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call i64 @__skb_linearize(%struct.sk_buff* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %39)
  %41 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %41, i32* %3, align 4
  br label %204

42:                                               ; preds = %34
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @i40e_txd_use_count(i32 %45)
  store i32 %46, i32* %16, align 4
  %47 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %48 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %42, %2
  %53 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %54 = load i32, i32* %16, align 4
  %55 = add nsw i32 %54, 4
  %56 = add nsw i32 %55, 1
  %57 = call i64 @i40e_maybe_stop_tx(%struct.i40e_ring* %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %61 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %65, i32* %3, align 4
  br label %204

66:                                               ; preds = %52
  %67 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %68 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %67, i32 0, i32 2
  %69 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %68, align 8
  %70 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %71 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %69, i64 %72
  store %struct.i40e_tx_buffer* %73, %struct.i40e_tx_buffer** %9, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %9, align 8
  %76 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %75, i32 0, i32 1
  store %struct.sk_buff* %74, %struct.sk_buff** %76, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %9, align 8
  %81 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %9, align 8
  %83 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %86 = call i64 @i40e_tx_prepare_vlan_flags(%struct.sk_buff* %84, %struct.i40e_ring* %85, i32* %11)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %66
  br label %167

89:                                               ; preds = %66
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = call i64 @vlan_get_protocol(%struct.sk_buff* %90)
  store i64 %91, i64* %12, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load i32, i32* @ETH_P_IP, align 4
  %94 = call i64 @htons(i32 %93)
  %95 = icmp eq i64 %92, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = load i32, i32* @I40E_TX_FLAGS_IPV4, align 4
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %110

100:                                              ; preds = %89
  %101 = load i64, i64* %12, align 8
  %102 = load i32, i32* @ETH_P_IPV6, align 4
  %103 = call i64 @htons(i32 %102)
  %104 = icmp eq i64 %101, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @I40E_TX_FLAGS_IPV6, align 4
  %107 = load i32, i32* %11, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %11, align 4
  br label %109

109:                                              ; preds = %105, %100
  br label %110

110:                                              ; preds = %109, %96
  %111 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %9, align 8
  %112 = call i32 @i40e_tso(%struct.i40e_tx_buffer* %111, i32* %14, i32* %6)
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %15, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  br label %167

116:                                              ; preds = %110
  %117 = load i32, i32* %15, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load i32, i32* @I40E_TX_FLAGS_TSO, align 4
  %121 = load i32, i32* %11, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %11, align 4
  br label %123

123:                                              ; preds = %119, %116
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %127 = call i32 @i40e_tx_enable_csum(%struct.sk_buff* %125, i32* %11, i32* %13, i32* %10, %struct.i40e_ring* %126, i32* %7)
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  br label %167

131:                                              ; preds = %124
  %132 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @i40e_tsyn(%struct.i40e_ring* %132, %struct.sk_buff* %133, i32 %134, i32* %6)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load i32, i32* @I40E_TX_FLAGS_TSYN, align 4
  %140 = load i32, i32* %11, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %138, %131
  %143 = load i32, i32* @I40E_TX_DESC_CMD_ICRC, align 4
  %144 = load i32, i32* %13, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %13, align 4
  %146 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @i40e_create_tx_ctx(%struct.i40e_ring* %146, i32 %147, i32 %148, i32 %149)
  %151 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %152 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %153 = load i32, i32* %11, align 4
  %154 = call i32 @i40e_atr(%struct.i40e_ring* %151, %struct.sk_buff* %152, i32 %153)
  %155 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %9, align 8
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %10, align 4
  %162 = call i64 @i40e_tx_map(%struct.i40e_ring* %155, %struct.sk_buff* %156, %struct.i40e_tx_buffer* %157, i32 %158, i32 %159, i32 %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %142
  br label %180

165:                                              ; preds = %142
  %166 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %166, i32* %3, align 4
  br label %204

167:                                              ; preds = %130, %115, %88
  %168 = load i32, i32* @xmit_frame_ring_drop, align 4
  %169 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %9, align 8
  %170 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %169, i32 0, i32 1
  %171 = load %struct.sk_buff*, %struct.sk_buff** %170, align 8
  %172 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %173 = call i32 @i40e_trace(i32 %168, %struct.sk_buff* %171, %struct.i40e_ring* %172)
  %174 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %9, align 8
  %175 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %174, i32 0, i32 1
  %176 = load %struct.sk_buff*, %struct.sk_buff** %175, align 8
  %177 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %176)
  %178 = load %struct.i40e_tx_buffer*, %struct.i40e_tx_buffer** %9, align 8
  %179 = getelementptr inbounds %struct.i40e_tx_buffer, %struct.i40e_tx_buffer* %178, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %179, align 8
  br label %180

180:                                              ; preds = %167, %164
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* @I40E_TX_FLAGS_TSYN, align 4
  %183 = and i32 %181, %182
  %184 = call i64 @unlikely(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %202

186:                                              ; preds = %180
  %187 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %188 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call %struct.i40e_pf* @i40e_netdev_to_pf(i32 %189)
  store %struct.i40e_pf* %190, %struct.i40e_pf** %18, align 8
  %191 = load %struct.i40e_pf*, %struct.i40e_pf** %18, align 8
  %192 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %191, i32 0, i32 1
  %193 = load %struct.sk_buff*, %struct.sk_buff** %192, align 8
  %194 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %193)
  %195 = load %struct.i40e_pf*, %struct.i40e_pf** %18, align 8
  %196 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %195, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %196, align 8
  %197 = load i32, i32* @__I40E_PTP_TX_IN_PROGRESS, align 4
  %198 = load %struct.i40e_pf*, %struct.i40e_pf** %18, align 8
  %199 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @clear_bit_unlock(i32 %197, i32 %200)
  br label %202

202:                                              ; preds = %186, %180
  %203 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %202, %165, %59, %38
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @prefetch(i32) #1

declare dso_local i32 @i40e_trace(i32, %struct.sk_buff*, %struct.i40e_ring*) #1

declare dso_local i32 @i40e_xmit_descriptor_count(%struct.sk_buff*) #1

declare dso_local i64 @i40e_chk_linearize(%struct.sk_buff*, i32) #1

declare dso_local i64 @__skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @i40e_txd_use_count(i32) #1

declare dso_local i64 @i40e_maybe_stop_tx(%struct.i40e_ring*, i32) #1

declare dso_local i64 @i40e_tx_prepare_vlan_flags(%struct.sk_buff*, %struct.i40e_ring*, i32*) #1

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @i40e_tso(%struct.i40e_tx_buffer*, i32*, i32*) #1

declare dso_local i32 @i40e_tx_enable_csum(%struct.sk_buff*, i32*, i32*, i32*, %struct.i40e_ring*, i32*) #1

declare dso_local i32 @i40e_tsyn(%struct.i40e_ring*, %struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @i40e_create_tx_ctx(%struct.i40e_ring*, i32, i32, i32) #1

declare dso_local i32 @i40e_atr(%struct.i40e_ring*, %struct.sk_buff*, i32) #1

declare dso_local i64 @i40e_tx_map(%struct.i40e_ring*, %struct.sk_buff*, %struct.i40e_tx_buffer*, i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.i40e_pf* @i40e_netdev_to_pf(i32) #1

declare dso_local i32 @clear_bit_unlock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
