; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_process_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_process_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_rx_buffer = type { i32 }
%struct.netxen_adapter = type { i32, %struct.TYPE_2__, %struct.netxen_recv_context, %struct.net_device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.netxen_recv_context = type { %struct.nx_host_rds_ring* }
%struct.nx_host_rds_ring = type { i32, i32, %struct.netxen_rx_buffer* }
%struct.net_device = type { i32 }
%struct.nx_host_sds_ring = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netxen_rx_buffer* (%struct.netxen_adapter*, %struct.nx_host_sds_ring*, i32, i32)* @netxen_process_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netxen_rx_buffer* @netxen_process_rcv(%struct.netxen_adapter* %0, %struct.nx_host_sds_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.netxen_rx_buffer*, align 8
  %6 = alloca %struct.netxen_adapter*, align 8
  %7 = alloca %struct.nx_host_sds_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.netxen_recv_context*, align 8
  %12 = alloca %struct.netxen_rx_buffer*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.nx_host_rds_ring*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %6, align 8
  store %struct.nx_host_sds_ring* %1, %struct.nx_host_sds_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %19, i32 0, i32 3
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %10, align 8
  %22 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %22, i32 0, i32 2
  store %struct.netxen_recv_context* %23, %struct.netxen_recv_context** %11, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store %struct.netxen_rx_buffer* null, %struct.netxen_rx_buffer** %5, align 8
  br label %118

33:                                               ; preds = %4
  %34 = load %struct.netxen_recv_context*, %struct.netxen_recv_context** %11, align 8
  %35 = getelementptr inbounds %struct.netxen_recv_context, %struct.netxen_recv_context* %34, i32 0, i32 0
  %36 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %36, i64 %38
  store %struct.nx_host_rds_ring* %39, %struct.nx_host_rds_ring** %14, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @netxen_get_sts_refhandle(i32 %40)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %14, align 8
  %44 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sge i32 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  store %struct.netxen_rx_buffer* null, %struct.netxen_rx_buffer** %5, align 8
  br label %118

51:                                               ; preds = %33
  %52 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %14, align 8
  %53 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %52, i32 0, i32 2
  %54 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %53, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %54, i64 %56
  store %struct.netxen_rx_buffer* %57, %struct.netxen_rx_buffer** %12, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @netxen_get_sts_totallength(i32 %58)
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @netxen_get_sts_status(i32 %60)
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @netxen_get_sts_pkt_offset(i32 %62)
  store i32 %63, i32* %18, align 4
  %64 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %65 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %14, align 8
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %17, align 4
  %68 = call %struct.sk_buff* @netxen_process_rxbuf(%struct.netxen_adapter* %64, %struct.nx_host_rds_ring* %65, i32 %66, i32 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %13, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  br i1 %70, label %73, label %71

71:                                               ; preds = %51
  %72 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %12, align 8
  store %struct.netxen_rx_buffer* %72, %struct.netxen_rx_buffer** %5, align 8
  br label %118

73:                                               ; preds = %51
  %74 = load i32, i32* %16, align 4
  %75 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %14, align 8
  %76 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %74, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %81 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %14, align 8
  %82 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @skb_put(%struct.sk_buff* %80, i32 %83)
  br label %89

85:                                               ; preds = %73
  %86 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %87 = load i32, i32* %16, align 4
  %88 = call i32 @skb_put(%struct.sk_buff* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %79
  %90 = load i32, i32* %18, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @skb_pull(%struct.sk_buff* %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %89
  %97 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %98 = load %struct.net_device*, %struct.net_device** %10, align 8
  %99 = call i32 @eth_type_trans(%struct.sk_buff* %97, %struct.net_device* %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.nx_host_sds_ring*, %struct.nx_host_sds_ring** %7, align 8
  %103 = getelementptr inbounds %struct.nx_host_sds_ring, %struct.nx_host_sds_ring* %102, i32 0, i32 0
  %104 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %105 = call i32 @napi_gro_receive(i32* %103, %struct.sk_buff* %104)
  %106 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %107 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load %struct.netxen_adapter*, %struct.netxen_adapter** %6, align 8
  %113 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %111
  store i32 %116, i32* %114, align 4
  %117 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %12, align 8
  store %struct.netxen_rx_buffer* %117, %struct.netxen_rx_buffer** %5, align 8
  br label %118

118:                                              ; preds = %96, %71, %50, %32
  %119 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %5, align 8
  ret %struct.netxen_rx_buffer* %119
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netxen_get_sts_refhandle(i32) #1

declare dso_local i32 @netxen_get_sts_totallength(i32) #1

declare dso_local i32 @netxen_get_sts_status(i32) #1

declare dso_local i32 @netxen_get_sts_pkt_offset(i32) #1

declare dso_local %struct.sk_buff* @netxen_process_rxbuf(%struct.netxen_adapter*, %struct.nx_host_rds_ring*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
