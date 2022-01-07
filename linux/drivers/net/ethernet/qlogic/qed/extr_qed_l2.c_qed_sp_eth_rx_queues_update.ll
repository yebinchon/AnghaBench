; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_sp_eth_rx_queues_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_sp_eth_rx_queues_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_spq_comp_cb = type { i32 }
%struct.rx_queue_update_ramrod_data = type { i64, i64, i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rx_queue_update_ramrod_data }
%struct.qed_sp_init_data = type { i32, i32, i32, %struct.qed_spq_comp_cb* }
%struct.qed_queue_cid = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ETH_RAMROD_RX_QUEUE_UPDATE = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_sp_eth_rx_queues_update(%struct.qed_hwfn* %0, i8** %1, i64 %2, i64 %3, i64 %4, i32 %5, %struct.qed_spq_comp_cb* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_hwfn*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.qed_spq_comp_cb*, align 8
  %16 = alloca %struct.rx_queue_update_ramrod_data*, align 8
  %17 = alloca %struct.qed_spq_entry*, align 8
  %18 = alloca %struct.qed_sp_init_data, align 8
  %19 = alloca %struct.qed_queue_cid*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.qed_spq_comp_cb* %6, %struct.qed_spq_comp_cb** %15, align 8
  store %struct.rx_queue_update_ramrod_data* null, %struct.rx_queue_update_ramrod_data** %16, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %17, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %20, align 4
  %24 = call i32 @memset(%struct.qed_sp_init_data* %18, i32 0, i32 24)
  %25 = load i32, i32* %14, align 4
  %26 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %18, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  %27 = load %struct.qed_spq_comp_cb*, %struct.qed_spq_comp_cb** %15, align 8
  %28 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %18, i32 0, i32 3
  store %struct.qed_spq_comp_cb* %27, %struct.qed_spq_comp_cb** %28, align 8
  store i64 0, i64* %21, align 8
  br label %29

29:                                               ; preds = %86, %7
  %30 = load i64, i64* %21, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %89

33:                                               ; preds = %29
  %34 = load i8**, i8*** %10, align 8
  %35 = bitcast i8** %34 to %struct.qed_queue_cid**
  %36 = load i64, i64* %21, align 8
  %37 = getelementptr inbounds %struct.qed_queue_cid*, %struct.qed_queue_cid** %35, i64 %36
  %38 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %37, align 8
  store %struct.qed_queue_cid* %38, %struct.qed_queue_cid** %19, align 8
  %39 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %19, align 8
  %40 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %18, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %19, align 8
  %44 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %18, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %48 = load i32, i32* @ETH_RAMROD_RX_QUEUE_UPDATE, align 4
  %49 = load i32, i32* @PROTOCOLID_ETH, align 4
  %50 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %47, %struct.qed_spq_entry** %17, i32 %48, i32 %49, %struct.qed_sp_init_data* %18)
  store i32 %50, i32* %20, align 4
  %51 = load i32, i32* %20, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %33
  %54 = load i32, i32* %20, align 4
  store i32 %54, i32* %8, align 4
  br label %91

55:                                               ; preds = %33
  %56 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %17, align 8
  %57 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store %struct.rx_queue_update_ramrod_data* %58, %struct.rx_queue_update_ramrod_data** %16, align 8
  %59 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %19, align 8
  %60 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rx_queue_update_ramrod_data*, %struct.rx_queue_update_ramrod_data** %16, align 8
  %64 = getelementptr inbounds %struct.rx_queue_update_ramrod_data, %struct.rx_queue_update_ramrod_data* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %19, align 8
  %66 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @cpu_to_le16(i32 %68)
  %70 = load %struct.rx_queue_update_ramrod_data*, %struct.rx_queue_update_ramrod_data** %16, align 8
  %71 = getelementptr inbounds %struct.rx_queue_update_ramrod_data, %struct.rx_queue_update_ramrod_data* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.rx_queue_update_ramrod_data*, %struct.rx_queue_update_ramrod_data** %16, align 8
  %74 = getelementptr inbounds %struct.rx_queue_update_ramrod_data, %struct.rx_queue_update_ramrod_data* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %13, align 8
  %76 = load %struct.rx_queue_update_ramrod_data*, %struct.rx_queue_update_ramrod_data** %16, align 8
  %77 = getelementptr inbounds %struct.rx_queue_update_ramrod_data, %struct.rx_queue_update_ramrod_data* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %79 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %17, align 8
  %80 = call i32 @qed_spq_post(%struct.qed_hwfn* %78, %struct.qed_spq_entry* %79, i32* null)
  store i32 %80, i32* %20, align 4
  %81 = load i32, i32* %20, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %55
  %84 = load i32, i32* %20, align 4
  store i32 %84, i32* %8, align 4
  br label %91

85:                                               ; preds = %55
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %21, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %21, align 8
  br label %29

89:                                               ; preds = %29
  %90 = load i32, i32* %20, align 4
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %89, %83, %53
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local i32 @memset(%struct.qed_sp_init_data*, i32, i32) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
