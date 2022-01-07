; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_txq_start_ramrod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_txq_start_ramrod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_queue_cid = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.tx_queue_start_ramrod_data = type { i8*, i32, i8*, i8*, i8*, i32, i32, i8*, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.tx_queue_start_ramrod_data }
%struct.qed_sp_init_data = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ETH_RAMROD_TX_QUEUE_START = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_eth_txq_start_ramrod(%struct.qed_hwfn* %0, %struct.qed_queue_cid* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_queue_cid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tx_queue_start_ramrod_data*, align 8
  %13 = alloca %struct.qed_spq_entry*, align 8
  %14 = alloca %struct.qed_sp_init_data, align 4
  %15 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_queue_cid* %1, %struct.qed_queue_cid** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.tx_queue_start_ramrod_data* null, %struct.tx_queue_start_ramrod_data** %12, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %13, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %15, align 4
  %18 = call i32 @memset(%struct.qed_sp_init_data* %14, i32 0, i32 12)
  %19 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %20 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %14, i32 0, i32 2
  store i32 %21, i32* %22, align 4
  %23 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %24 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %14, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %28 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %14, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %30 = load i32, i32* @ETH_RAMROD_TX_QUEUE_START, align 4
  %31 = load i32, i32* @PROTOCOLID_ETH, align 4
  %32 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %29, %struct.qed_spq_entry** %13, i32 %30, i32 %31, %struct.qed_sp_init_data* %14)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* %15, align 4
  store i32 %36, i32* %6, align 4
  br label %94

37:                                               ; preds = %5
  %38 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %39 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store %struct.tx_queue_start_ramrod_data* %40, %struct.tx_queue_start_ramrod_data** %12, align 8
  %41 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %42 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %46 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 8
  %47 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %48 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %52 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %51, i32 0, i32 7
  store i8* %50, i8** %52, align 8
  %53 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %54 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %57 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %59 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %63 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 8
  %64 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %65 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @cpu_to_le16(i32 %67)
  %69 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %70 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %8, align 8
  %72 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @cpu_to_le16(i32 %74)
  %76 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %77 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i8* @cpu_to_le16(i32 %78)
  %80 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %81 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  %82 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %83 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @DMA_REGPAIR_LE(i32 %84, i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = call i8* @cpu_to_le16(i32 %87)
  %89 = load %struct.tx_queue_start_ramrod_data*, %struct.tx_queue_start_ramrod_data** %12, align 8
  %90 = getelementptr inbounds %struct.tx_queue_start_ramrod_data, %struct.tx_queue_start_ramrod_data* %89, i32 0, i32 0
  store i8* %88, i8** %90, align 8
  %91 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %92 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %13, align 8
  %93 = call i32 @qed_spq_post(%struct.qed_hwfn* %91, %struct.qed_spq_entry* %92, i32* null)
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %37, %35
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
