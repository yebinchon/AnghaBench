; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_process_rxbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_process_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netxen_adapter = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.nx_host_rds_ring = type { i32, %struct.netxen_rx_buffer* }
%struct.netxen_rx_buffer = type { i32, %struct.sk_buff*, i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@STATUS_CKSUM_OK = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@NETXEN_BUFFER_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.netxen_adapter*, %struct.nx_host_rds_ring*, i64, i64)* @netxen_process_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @netxen_process_rxbuf(%struct.netxen_adapter* %0, %struct.nx_host_rds_ring* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.netxen_adapter*, align 8
  %6 = alloca %struct.nx_host_rds_ring*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.netxen_rx_buffer*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %5, align 8
  store %struct.nx_host_rds_ring* %1, %struct.nx_host_rds_ring** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %6, align 8
  %12 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %11, i32 0, i32 1
  %13 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %12, align 8
  %14 = load i64, i64* %7, align 8
  %15 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %13, i64 %14
  store %struct.netxen_rx_buffer* %15, %struct.netxen_rx_buffer** %9, align 8
  %16 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %9, align 8
  %20 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.nx_host_rds_ring*, %struct.nx_host_rds_ring** %6, align 8
  %23 = getelementptr inbounds %struct.nx_host_rds_ring, %struct.nx_host_rds_ring* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %26 = call i32 @pci_unmap_single(i32 %18, i32 %21, i32 %24, i32 %25)
  %27 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %9, align 8
  %28 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %27, i32 0, i32 1
  %29 = load %struct.sk_buff*, %struct.sk_buff** %28, align 8
  store %struct.sk_buff* %29, %struct.sk_buff** %10, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  br label %67

33:                                               ; preds = %4
  %34 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @STATUS_CKSUM_OK, align 8
  %45 = icmp eq i64 %43, %44
  br label %46

46:                                               ; preds = %42, %33
  %47 = phi i1 [ false, %33 ], [ %45, %42 ]
  %48 = zext i1 %47 to i32
  %49 = call i64 @likely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.netxen_adapter*, %struct.netxen_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %64

60:                                               ; preds = %46
  %61 = load i32, i32* @CHECKSUM_NONE, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %63 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %51
  %65 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %9, align 8
  %66 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %65, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %66, align 8
  br label %67

67:                                               ; preds = %64, %32
  %68 = load i32, i32* @NETXEN_BUFFER_FREE, align 4
  %69 = load %struct.netxen_rx_buffer*, %struct.netxen_rx_buffer** %9, align 8
  %70 = getelementptr inbounds %struct.netxen_rx_buffer, %struct.netxen_rx_buffer* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  ret %struct.sk_buff* %71
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
