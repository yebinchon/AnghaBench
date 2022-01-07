; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_process_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_process_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_rx_buffer = type { i32 }
%struct.qlcnic_adapter = type { i32, %struct.TYPE_2__, i64, %struct.qlcnic_recv_context*, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_rds_ring = type { i32, i32, %struct.qlcnic_rx_buffer* }
%struct.net_device = type { i32 }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.sk_buff = type { i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qlcnic_rx_buffer* (%struct.qlcnic_adapter*, %struct.qlcnic_host_sds_ring*, i32, i32)* @qlcnic_process_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qlcnic_rx_buffer* @qlcnic_process_rcv(%struct.qlcnic_adapter* %0, %struct.qlcnic_host_sds_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qlcnic_rx_buffer*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %6, align 8
  store %struct.qlcnic_host_sds_ring* %1, %struct.qlcnic_host_sds_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 4
  %24 = load %struct.net_device*, %struct.net_device** %23, align 8
  store %struct.net_device* %24, %struct.net_device** %10, align 8
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 3
  %27 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %26, align 8
  store %struct.qlcnic_recv_context* %27, %struct.qlcnic_recv_context** %11, align 8
  store i32 65535, i32* %20, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store %struct.qlcnic_rx_buffer* null, %struct.qlcnic_rx_buffer** %5, align 8
  br label %159

37:                                               ; preds = %4
  %38 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %11, align 8
  %39 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %38, i32 0, i32 0
  %40 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %40, i64 %42
  store %struct.qlcnic_host_rds_ring* %43, %struct.qlcnic_host_rds_ring** %14, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @qlcnic_get_sts_refhandle(i32 %44)
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

54:                                               ; preds = %37
  store %struct.qlcnic_rx_buffer* null, %struct.qlcnic_rx_buffer** %5, align 8
  br label %159

55:                                               ; preds = %37
  %56 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %57 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %56, i32 0, i32 2
  %58 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.qlcnic_rx_buffer, %struct.qlcnic_rx_buffer* %58, i64 %60
  store %struct.qlcnic_rx_buffer* %61, %struct.qlcnic_rx_buffer** %12, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @qlcnic_get_sts_totallength(i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @qlcnic_get_sts_status(i32 %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @qlcnic_get_sts_pkt_offset(i32 %66)
  store i32 %67, i32* %18, align 4
  %68 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %69 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %17, align 4
  %72 = call %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter* %68, %struct.qlcnic_host_rds_ring* %69, i32 %70, i32 %71)
  store %struct.sk_buff* %72, %struct.sk_buff** %13, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %74 = icmp ne %struct.sk_buff* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %55
  %76 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %76, %struct.qlcnic_rx_buffer** %5, align 8
  br label %159

77:                                               ; preds = %55
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %79 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %77
  store i32 0, i32* %21, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @qlcnic_82xx_is_lb_pkt(i32 %83)
  store i32 %84, i32* %19, align 4
  %85 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %21, align 4
  %89 = call i32 @qlcnic_add_lb_filter(%struct.qlcnic_adapter* %85, %struct.sk_buff* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %82, %77
  %91 = load i32, i32* %16, align 4
  %92 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %93 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp sgt i32 %91, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %98 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %14, align 8
  %99 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @skb_put(%struct.sk_buff* %97, i32 %100)
  br label %106

102:                                              ; preds = %90
  %103 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @skb_put(%struct.sk_buff* %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %96
  %107 = load i32, i32* %18, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %111 = load i32, i32* %18, align 4
  %112 = call i32 @skb_pull(%struct.sk_buff* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %106
  %114 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %116 = call i32 @qlcnic_check_rx_tagging(%struct.qlcnic_adapter* %114, %struct.sk_buff* %115, i32* %20)
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %113
  %120 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %121 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %126 = call i32 @dev_kfree_skb(%struct.sk_buff* %125)
  %127 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %127, %struct.qlcnic_rx_buffer** %5, align 8
  br label %159

128:                                              ; preds = %113
  %129 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %130 = load %struct.net_device*, %struct.net_device** %10, align 8
  %131 = call i32 @eth_type_trans(%struct.sk_buff* %129, %struct.net_device* %130)
  %132 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* %20, align 4
  %135 = icmp ne i32 %134, 65535
  br i1 %135, label %136, label %142

136:                                              ; preds = %128
  %137 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %138 = load i32, i32* @ETH_P_8021Q, align 4
  %139 = call i32 @htons(i32 %138)
  %140 = load i32, i32* %20, align 4
  %141 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %137, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %136, %128
  %143 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %144 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %143, i32 0, i32 0
  %145 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %146 = call i32 @napi_gro_receive(i32* %144, %struct.sk_buff* %145)
  %147 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %148 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* %16, align 4
  %153 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %154 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, %152
  store i32 %157, i32* %155, align 4
  %158 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %12, align 8
  store %struct.qlcnic_rx_buffer* %158, %struct.qlcnic_rx_buffer** %5, align 8
  br label %159

159:                                              ; preds = %142, %119, %75, %54, %36
  %160 = load %struct.qlcnic_rx_buffer*, %struct.qlcnic_rx_buffer** %5, align 8
  ret %struct.qlcnic_rx_buffer* %160
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qlcnic_get_sts_refhandle(i32) #1

declare dso_local i32 @qlcnic_get_sts_totallength(i32) #1

declare dso_local i32 @qlcnic_get_sts_status(i32) #1

declare dso_local i32 @qlcnic_get_sts_pkt_offset(i32) #1

declare dso_local %struct.sk_buff* @qlcnic_process_rxbuf(%struct.qlcnic_adapter*, %struct.qlcnic_host_rds_ring*, i32, i32) #1

declare dso_local i32 @qlcnic_82xx_is_lb_pkt(i32) #1

declare dso_local i32 @qlcnic_add_lb_filter(%struct.qlcnic_adapter*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @qlcnic_check_rx_tagging(%struct.qlcnic_adapter*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
