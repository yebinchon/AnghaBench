; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_cqe_sdq_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_pci.c_mlxsw_pci_cqe_sdq_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_pci = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.mlxsw_pci_queue = type { i32, i32 }
%struct.mlxsw_pci_queue_elem_info = type { i8*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.mlxsw_tx_info = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.mlxsw_tx_info }
%struct.TYPE_7__ = type { i32 }

@MLXSW_PCI_WQE_SG_ENTRIES = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@SKBTX_HW_TSTAMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Consumer counter does not match limit in SDQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_pci*, %struct.mlxsw_pci_queue*, i64, i8*)* @mlxsw_pci_cqe_sdq_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_pci_cqe_sdq_handle(%struct.mlxsw_pci* %0, %struct.mlxsw_pci_queue* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.mlxsw_pci*, align 8
  %6 = alloca %struct.mlxsw_pci_queue*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.mlxsw_pci_queue_elem_info*, align 8
  %11 = alloca %struct.mlxsw_tx_info, align 4
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  store %struct.mlxsw_pci* %0, %struct.mlxsw_pci** %5, align 8
  store %struct.mlxsw_pci_queue* %1, %struct.mlxsw_pci_queue** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %15, i32 0, i32 1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %9, align 8
  %18 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %6, align 8
  %19 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %6, align 8
  %22 = call %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_consumer_get(%struct.mlxsw_pci_queue* %21)
  store %struct.mlxsw_pci_queue_elem_info* %22, %struct.mlxsw_pci_queue_elem_info** %10, align 8
  %23 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %10, align 8
  %24 = getelementptr inbounds %struct.mlxsw_pci_queue_elem_info, %struct.mlxsw_pci_queue_elem_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.sk_buff*, %struct.sk_buff** %26, align 8
  %28 = call %struct.TYPE_8__* @mlxsw_skb_cb(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = bitcast %struct.mlxsw_tx_info* %11 to i8*
  %31 = bitcast %struct.mlxsw_tx_info* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 %31, i64 8, i1 false)
  %32 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %10, align 8
  %33 = getelementptr inbounds %struct.mlxsw_pci_queue_elem_info, %struct.mlxsw_pci_queue_elem_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %13, align 8
  %37 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %10, align 8
  %38 = getelementptr inbounds %struct.mlxsw_pci_queue_elem_info, %struct.mlxsw_pci_queue_elem_info* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %12, align 8
  store i32 0, i32* %14, align 4
  br label %40

40:                                               ; preds = %50, %4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @MLXSW_PCI_WQE_SG_ENTRIES, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @DMA_TO_DEVICE, align 4
  %49 = call i32 @mlxsw_pci_wqe_frag_unmap(%struct.mlxsw_pci* %45, i8* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  br label %40

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.mlxsw_tx_info, %struct.mlxsw_tx_info* %11, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %59 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %58)
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SKBTX_HW_TSTAMP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %57, %53
  %66 = phi i1 [ false, %53 ], [ %64, %57 ]
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load %struct.mlxsw_pci*, %struct.mlxsw_pci** %5, align 8
  %72 = getelementptr inbounds %struct.mlxsw_pci, %struct.mlxsw_pci* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %75 = getelementptr inbounds %struct.mlxsw_tx_info, %struct.mlxsw_tx_info* %11, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @mlxsw_core_ptp_transmitted(i32 %73, %struct.sk_buff* %74, i32 %76)
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  br label %78

78:                                               ; preds = %70, %65
  %79 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %83 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.mlxsw_pci_queue_elem_info*, %struct.mlxsw_pci_queue_elem_info** %10, align 8
  %86 = getelementptr inbounds %struct.mlxsw_pci_queue_elem_info, %struct.mlxsw_pci_queue_elem_info* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %88, align 8
  %89 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %6, align 8
  %90 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = sext i32 %91 to i64
  %94 = load i64, i64* %7, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %84
  %97 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %98 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %97, i32 0, i32 0
  %99 = call i32 @dev_dbg_ratelimited(i32* %98, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %96, %84
  %101 = load %struct.mlxsw_pci_queue*, %struct.mlxsw_pci_queue** %6, align 8
  %102 = getelementptr inbounds %struct.mlxsw_pci_queue, %struct.mlxsw_pci_queue* %101, i32 0, i32 0
  %103 = call i32 @spin_unlock(i32* %102)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mlxsw_pci_queue_elem_info* @mlxsw_pci_queue_elem_info_consumer_get(%struct.mlxsw_pci_queue*) #1

declare dso_local %struct.TYPE_8__* @mlxsw_skb_cb(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlxsw_pci_wqe_frag_unmap(%struct.mlxsw_pci*, i8*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @mlxsw_core_ptp_transmitted(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @dev_dbg_ratelimited(i32*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
