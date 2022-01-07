; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_cqe_rdq_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_cqe_rdq_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.mlxsw_pci_queue = type { i32, i32, i32 }
%struct.mlxsw_pci_queue_elem_info = type { i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.mlxsw_rx_info = type { i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Consumer counter does not match limit in RDQ\0A\00", align 1
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to alloc skb for RDQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_pci*, %struct.mlxsw_pci_queue*, i64, i32, i8*)* @mlxsw_pci_cqe_rdq_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_pci_cqe_rdq_handle(%struct.mlxsw_pci* %0, %struct.mlxsw_pci_queue* %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.mlxsw_pci*, align 8
  %7 = alloca %struct.mlxsw_pci_queue*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca %struct.mlxsw_pci_queue_elem_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.mlxsw_rx_info, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %6, align 8
  store %struct.mlxsw_pci_queue* %1, %struct.mlxsw_pci_queue** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %18 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %6, align 8
  %19 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %18, i32 0, i32 1
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %11, align 8
  %21 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %22 = call %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_consumer_get(%struct.mlxsw_pci_queue* %21)
  store %struct.mlxsw_pci_queue_elem_info* %22, %struct.mlxsw_pci_queue_elem_info** %12, align 8
  %23 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %12, align 8
  %24 = getelementptr inbounds %struct.mlxsw_pci_queue_elem_info, %struct.mlxsw_pci_queue_elem_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  store %struct.sk_buff* %27, %struct.sk_buff** %14, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  br label %117

31:                                               ; preds = %5
  %32 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %12, align 8
  %33 = getelementptr inbounds %struct.mlxsw_pci_queue_elem_info, %struct.mlxsw_pci_queue_elem_info* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %13, align 8
  %35 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %6, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %38 = call i32 @mlxsw_pci_wqe_frag_unmap(%struct.mlxsw_pci* %35, i8* %36, i32 0, i32 %37)
  %39 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %40 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = sext i32 %41 to i64
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 @dev_dbg_ratelimited(i32* %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %31
  %51 = load i32, i32* %9, align 4
  %52 = load i8*, i8** %10, align 8
  %53 = call i64 @mlxsw_pci_cqe_lag_get(i32 %51, i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.mlxsw_rx_info, %struct.mlxsw_rx_info* %15, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 @mlxsw_pci_cqe_lag_id_get(i32 %57, i8* %58)
  %60 = getelementptr inbounds %struct.mlxsw_rx_info, %struct.mlxsw_rx_info* %15, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 @mlxsw_pci_cqe_lag_subport_get(i32 %62, i8* %63)
  %65 = getelementptr inbounds %struct.mlxsw_rx_info, %struct.mlxsw_rx_info* %15, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  br label %72

66:                                               ; preds = %50
  %67 = getelementptr inbounds %struct.mlxsw_rx_info, %struct.mlxsw_rx_info* %15, i32 0, i32 0
  store i32 0, i32* %67, align 4
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @mlxsw_pci_cqe_system_port_get(i8* %68)
  %70 = getelementptr inbounds %struct.mlxsw_rx_info, %struct.mlxsw_rx_info* %15, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %66, %55
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @mlxsw_pci_cqe_trap_id_get(i8* %73)
  %75 = getelementptr inbounds %struct.mlxsw_rx_info, %struct.mlxsw_rx_info* %15, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load i8*, i8** %10, align 8
  %77 = call i64 @mlxsw_pci_cqe_byte_count_get(i8* %76)
  store i64 %77, i64* %16, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = call i64 @mlxsw_pci_cqe_crc_get(i32 %78, i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %72
  %83 = load i64, i64* @ETH_FCS_LEN, align 8
  %84 = load i64, i64* %16, align 8
  %85 = sub nsw i64 %84, %83
  store i64 %85, i64* %16, align 8
  br label %86

86:                                               ; preds = %82, %72
  %87 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %88 = load i64, i64* %16, align 8
  %89 = call i32 @skb_put(%struct.sk_buff* %87, i64 %88)
  %90 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %6, align 8
  %91 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %94 = call i32 @mlxsw_core_skb_receive(i32 %92, %struct.sk_buff* %93, %struct.mlxsw_rx_info* %15)
  %95 = load i8*, i8** %13, align 8
  %96 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %97 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @memset(i8* %95, i32 0, i32 %98)
  %100 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %6, align 8
  %101 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %12, align 8
  %102 = call i32 @mlxsw_pci_rdq_skb_alloc(%struct.mlxsw_pci* %100, %struct.mlxsw_pci_queue_elem_info* %101)
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %17, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %86
  %106 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %107 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %106, i32 0, i32 0
  %108 = call i32 @dev_dbg_ratelimited(i32* %107, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %109

109:                                              ; preds = %105, %86
  %110 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %111 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %6, align 8
  %115 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %7, align 8
  %116 = call i32 @mlxsw_pci_queue_doorbell_producer_ring(%struct.mlxsw_pci* %114, %struct.mlxsw_pci_queue* %115)
  br label %117

117:                                              ; preds = %109, %30
  ret void
}

declare dso_local %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_consumer_get(%struct.mlxsw_pci_queue*) #1

declare dso_local i32 @mlxsw_pci_wqe_frag_unmap(%struct.mlxsw_pci*, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg_ratelimited(i32*, i8*) #1

declare dso_local i64 @mlxsw_pci_cqe_lag_get(i32, i8*) #1

declare dso_local i32 @mlxsw_pci_cqe_lag_id_get(i32, i8*) #1

declare dso_local i32 @mlxsw_pci_cqe_lag_subport_get(i32, i8*) #1

declare dso_local i32 @mlxsw_pci_cqe_system_port_get(i8*) #1

declare dso_local i32 @mlxsw_pci_cqe_trap_id_get(i8*) #1

declare dso_local i64 @mlxsw_pci_cqe_byte_count_get(i8*) #1

declare dso_local i64 @mlxsw_pci_cqe_crc_get(i32, i8*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @mlxsw_core_skb_receive(i32, %struct.sk_buff*, %struct.mlxsw_rx_info*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_pci_rdq_skb_alloc(%struct.mlxsw_pci*, %struct.mlxsw_pci_queue_elem_info*) #1

declare dso_local i32 @mlxsw_pci_queue_doorbell_producer_ring(%struct.mlxsw_pci*, %struct.mlxsw_pci_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
