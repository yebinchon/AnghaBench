; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_xmit_frame_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_xmit_frame_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.iavf_ring = type { i64, %struct.iavf_tx_buffer*, %struct.TYPE_2__ }
%struct.iavf_tx_buffer = type { i32, %struct.sk_buff*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IAVF_TX_DESC_DTYPE_CONTEXT = common dso_local global i32 0, align 4
@xmit_frame_ring = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IAVF_TX_FLAGS_IPV4 = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@IAVF_TX_FLAGS_IPV6 = common dso_local global i32 0, align 4
@IAVF_TX_FLAGS_TSO = common dso_local global i32 0, align 4
@IAVF_TX_DESC_CMD_ICRC = common dso_local global i32 0, align 4
@xmit_frame_ring_drop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.iavf_ring*)* @iavf_xmit_frame_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_xmit_frame_ring(%struct.sk_buff* %0, %struct.iavf_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.iavf_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iavf_tx_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.iavf_ring* %1, %struct.iavf_ring** %5, align 8
  %17 = load i32, i32* @IAVF_TX_DESC_DTYPE_CONTEXT, align 4
  store i32 %17, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @prefetch(i32 %20)
  %22 = load i32, i32* @xmit_frame_ring, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %25 = call i32 @iavf_trace(i32 %22, %struct.sk_buff* %23, %struct.iavf_ring* %24)
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @iavf_xmit_descriptor_count(%struct.sk_buff* %26)
  store i32 %27, i32* %16, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = load i32, i32* %16, align 4
  %30 = call i64 @iavf_chk_linearize(%struct.sk_buff* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i64 @__skb_linearize(%struct.sk_buff* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %37)
  %39 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %39, i32* %3, align 4
  br label %161

40:                                               ; preds = %32
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @iavf_txd_use_count(i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %46 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %40, %2
  %51 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %52 = load i32, i32* %16, align 4
  %53 = add nsw i32 %52, 4
  %54 = add nsw i32 %53, 1
  %55 = call i64 @iavf_maybe_stop_tx(%struct.iavf_ring* %51, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %59 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %63, i32* %3, align 4
  br label %161

64:                                               ; preds = %50
  %65 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %66 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %65, i32 0, i32 1
  %67 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %66, align 8
  %68 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %69 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %67, i64 %70
  store %struct.iavf_tx_buffer* %71, %struct.iavf_tx_buffer** %9, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %9, align 8
  %74 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %73, i32 0, i32 1
  store %struct.sk_buff* %72, %struct.sk_buff** %74, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %9, align 8
  %79 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %9, align 8
  %81 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %84 = call i64 @iavf_tx_prepare_vlan_flags(%struct.sk_buff* %82, %struct.iavf_ring* %83, i32* %11)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %64
  br label %147

87:                                               ; preds = %64
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = call i64 @vlan_get_protocol(%struct.sk_buff* %88)
  store i64 %89, i64* %12, align 8
  %90 = load i64, i64* %12, align 8
  %91 = load i32, i32* @ETH_P_IP, align 4
  %92 = call i64 @htons(i32 %91)
  %93 = icmp eq i64 %90, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i32, i32* @IAVF_TX_FLAGS_IPV4, align 4
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %108

98:                                               ; preds = %87
  %99 = load i64, i64* %12, align 8
  %100 = load i32, i32* @ETH_P_IPV6, align 4
  %101 = call i64 @htons(i32 %100)
  %102 = icmp eq i64 %99, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load i32, i32* @IAVF_TX_FLAGS_IPV6, align 4
  %105 = load i32, i32* %11, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %103, %98
  br label %108

108:                                              ; preds = %107, %94
  %109 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %9, align 8
  %110 = call i32 @iavf_tso(%struct.iavf_tx_buffer* %109, i32* %14, i32* %6)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %147

114:                                              ; preds = %108
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* @IAVF_TX_FLAGS_TSO, align 4
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %11, align 4
  br label %121

121:                                              ; preds = %117, %114
  br label %122

122:                                              ; preds = %121
  %123 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %124 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %125 = call i32 @iavf_tx_enable_csum(%struct.sk_buff* %123, i32* %11, i32* %13, i32* %10, %struct.iavf_ring* %124, i32* %7)
  store i32 %125, i32* %15, align 4
  %126 = load i32, i32* %15, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %147

129:                                              ; preds = %122
  %130 = load i32, i32* @IAVF_TX_DESC_CMD_ICRC, align 4
  %131 = load i32, i32* %13, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %13, align 4
  %133 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @iavf_create_tx_ctx(%struct.iavf_ring* %133, i32 %134, i32 %135, i32 %136)
  %138 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %140 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %9, align 8
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @iavf_tx_map(%struct.iavf_ring* %138, %struct.sk_buff* %139, %struct.iavf_tx_buffer* %140, i32 %141, i32 %142, i32 %143, i32 %144)
  %146 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %146, i32* %3, align 4
  br label %161

147:                                              ; preds = %128, %113, %86
  %148 = load i32, i32* @xmit_frame_ring_drop, align 4
  %149 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %9, align 8
  %150 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %149, i32 0, i32 1
  %151 = load %struct.sk_buff*, %struct.sk_buff** %150, align 8
  %152 = load %struct.iavf_ring*, %struct.iavf_ring** %5, align 8
  %153 = call i32 @iavf_trace(i32 %148, %struct.sk_buff* %151, %struct.iavf_ring* %152)
  %154 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %9, align 8
  %155 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %154, i32 0, i32 1
  %156 = load %struct.sk_buff*, %struct.sk_buff** %155, align 8
  %157 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %156)
  %158 = load %struct.iavf_tx_buffer*, %struct.iavf_tx_buffer** %9, align 8
  %159 = getelementptr inbounds %struct.iavf_tx_buffer, %struct.iavf_tx_buffer* %158, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %159, align 8
  %160 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %160, i32* %3, align 4
  br label %161

161:                                              ; preds = %147, %129, %57, %36
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @prefetch(i32) #1

declare dso_local i32 @iavf_trace(i32, %struct.sk_buff*, %struct.iavf_ring*) #1

declare dso_local i32 @iavf_xmit_descriptor_count(%struct.sk_buff*) #1

declare dso_local i64 @iavf_chk_linearize(%struct.sk_buff*, i32) #1

declare dso_local i64 @__skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @iavf_txd_use_count(i32) #1

declare dso_local i64 @iavf_maybe_stop_tx(%struct.iavf_ring*, i32) #1

declare dso_local i64 @iavf_tx_prepare_vlan_flags(%struct.sk_buff*, %struct.iavf_ring*, i32*) #1

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @iavf_tso(%struct.iavf_tx_buffer*, i32*, i32*) #1

declare dso_local i32 @iavf_tx_enable_csum(%struct.sk_buff*, i32*, i32*, i32*, %struct.iavf_ring*, i32*) #1

declare dso_local i32 @iavf_create_tx_ctx(%struct.iavf_ring*, i32, i32, i32) #1

declare dso_local i32 @iavf_tx_map(%struct.iavf_ring*, %struct.sk_buff*, %struct.iavf_tx_buffer*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
