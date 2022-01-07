; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_process_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_process_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_rx_buffer = type { i32 }
%struct.qlcnic_adapter = type { i64, %struct.TYPE_2__, i64, %struct.qlcnic_recv_context*, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_rds_ring = type { i32, i32, %struct.qlcnic_rx_buffer* }
%struct.net_device = type { i32 }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.sk_buff = type { i64, i32, i32 }

@CHECKSUM_UNNECESSARY = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qlcnic_rx_buffer* (%struct.qlcnic_adapter*, %struct.qlcnic_host_sds_ring*, i64, i32*)* @qlcnic_83xx_process_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qlcnic_rx_buffer* @qlcnic_83xx_process_rcv(%struct.qlcnic_adapter* %0, %struct.qlcnic_host_sds_ring* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.qlcnic_rx_buffer*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.qlcnic_recv_context*, align 8
  %12 = alloca %struct.qlcnic_rx_buffer*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store %struct.qlcnic_host_sds_ring* %1, %struct.qlcnic_host_sds_ring** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %22 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %21, i32 0, i32 4
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %10, align 8
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %24, i32 0, i32 3
  %26 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %25, align 8
  store %struct.qlcnic_recv_context* %26, %struct.qlcnic_recv_context** %11, align 8
  store i32 65535, i32* %19, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp uge i64 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  store %struct.qlcnic_rx_buffer* null, %struct.qlcnic_rx_buffer** %5, align 8
  br label %177

36:                                               ; preds = %4
  %37 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %11, align 8
  %38 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %37, i32 0, i32 0
  %39 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %39, i64 %40
  store %struct.qlcnic_host_rds_ring* %41, %struct.qlcnic_host_rds_ring** %14, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @qlcnic_83xx_hndl(i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %48 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %36
  store %struct.qlcnic_rx_buffer* null, %struct.qlcnic_rx_buffer** %5, align 8
  br label %177

55:                                               ; preds = %36
  %56 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %57 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %56, i32 0, i32 2
  %58 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.qlcnic_rx_buffer, %struct.qlcnic_rx_buffer* %58, i64 %60
  store %struct.qlcnic_rx_buffer* %61, %struct.qlcnic_rx_buffer** %12, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @qlcnic_83xx_pktln(i32 %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @qlcnic_83xx_csum_status(i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %71 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %17, align 4
  %74 = call %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter* %70, %struct.qlcnic_host_rds_ring* %71, i32 %72, i32 %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %13, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %55
  %78 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %78, %struct.qlcnic_rx_buffer** %5, align 8
  br label %177

79:                                               ; preds = %55
  %80 = load i32, i32* %16, align 4
  %81 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %82 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %80, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %87 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %88 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @skb_put(%struct.sk_buff* %86, i32 %89)
  br label %95

91:                                               ; preds = %79
  %92 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @skb_put(%struct.sk_buff* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %85
  %96 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %98 = call i32 @qlcnic_check_rx_tagging(%struct.qlcnic_adapter* %96, %struct.sk_buff* %97, i32* %19)
  store i32 %98, i32* %20, align 4
  %99 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %100 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %95
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @qlcnic_83xx_is_lb_pkt(i32 %106, i32 0)
  store i32 %107, i32* %18, align 4
  %108 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %19, align 4
  %112 = call i32 @qlcnic_add_lb_filter(%struct.qlcnic_adapter* %108, %struct.sk_buff* %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %103, %95
  %114 = load i32, i32* %20, align 4
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %119 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %124 = call i32 @dev_kfree_skb(%struct.sk_buff* %123)
  %125 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %125, %struct.qlcnic_rx_buffer** %5, align 8
  br label %177

126:                                              ; preds = %113
  %127 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %128 = load %struct.net_device*, %struct.net_device** %10, align 8
  %129 = call i32 @eth_type_trans(%struct.sk_buff* %127, %struct.net_device* %128)
  %130 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @qlcnic_encap_length(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %126
  %138 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %137
  %144 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 1
  store i32 1, i32* %145, align 8
  %146 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %147 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %143, %137, %126
  %152 = load i32, i32* %19, align 4
  %153 = icmp ne i32 %152, 65535
  br i1 %153, label %154, label %160

154:                                              ; preds = %151
  %155 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %156 = load i32, i32* @ETH_P_8021Q, align 4
  %157 = call i32 @htons(i32 %156)
  %158 = load i32, i32* %19, align 4
  %159 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %155, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %154, %151
  %161 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %162 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %161, i32 0, i32 0
  %163 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %164 = call i32 @napi_gro_receive(i32* %162, %struct.sk_buff* %163)
  %165 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %166 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %172 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = add nsw i32 %174, %170
  store i32 %175, i32* %173, align 8
  %176 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %176, %struct.qlcnic_rx_buffer** %5, align 8
  br label %177

177:                                              ; preds = %160, %117, %77, %54, %35
  %178 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %5, align 8
  ret %struct.qlcnic_rx_buffer* %178
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qlcnic_83xx_hndl(i32) #1

declare dso_local i32 @qlcnic_83xx_pktln(i32) #1

declare dso_local i32 @qlcnic_83xx_csum_status(i32) #1

declare dso_local %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter*, %struct.qlcnic_host_rds_ring*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @qlcnic_check_rx_tagging(%struct.qlcnic_adapter*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @qlcnic_83xx_is_lb_pkt(i32, i32) #1

declare dso_local i32 @qlcnic_add_lb_filter(%struct.qlcnic_adapter*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @qlcnic_encap_length(i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
