; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_pf_rx_queue_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c_qed_eth_pf_rx_queue_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_queue_cid = type { i64, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.rx_queue_stop_ramrod_data = type { i32, i32, i32, i32 }
%struct.qed_spq_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rx_queue_stop_ramrod_data }
%struct.qed_sp_init_data = type { i32, i32, i32 }

@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@ETH_RAMROD_RX_QUEUE_STOP = common dso_local global i32 0, align 4
@PROTOCOLID_ETH = common dso_local global i32 0, align 4
@QED_QUEUE_CID_SELF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_queue_cid*, i32, i32)* @qed_eth_pf_rx_queue_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_eth_pf_rx_queue_stop(%struct.qed_hwfn* %0, %struct.qed_queue_cid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_queue_cid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rx_queue_stop_ramrod_data*, align 8
  %11 = alloca %struct.qed_spq_entry*, align 8
  %12 = alloca %struct.qed_sp_init_data, align 4
  %13 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_queue_cid* %1, %struct.qed_queue_cid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.rx_queue_stop_ramrod_data* null, %struct.rx_queue_stop_ramrod_data** %10, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %11, align 8
  %14 = call i32 @memset(%struct.qed_sp_init_data* %12, i32 0, i32 12)
  %15 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %7, align 8
  %16 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 2
  store i32 %17, i32* %18, align 4
  %19 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %7, align 8
  %20 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %24 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %12, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %26 = load i32, i32* @ETH_RAMROD_RX_QUEUE_STOP, align 4
  %27 = load i32, i32* @PROTOCOLID_ETH, align 4
  %28 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %25, %struct.qed_spq_entry** %11, i32 %26, i32 %27, %struct.qed_sp_init_data* %12)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %5, align 4
  br label %82

33:                                               ; preds = %4
  %34 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %11, align 8
  %35 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store %struct.rx_queue_stop_ramrod_data* %36, %struct.rx_queue_stop_ramrod_data** %10, align 8
  %37 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %7, align 8
  %38 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rx_queue_stop_ramrod_data*, %struct.rx_queue_stop_ramrod_data** %10, align 8
  %42 = getelementptr inbounds %struct.rx_queue_stop_ramrod_data, %struct.rx_queue_stop_ramrod_data* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %7, align 8
  %44 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @cpu_to_le16(i32 %46)
  %48 = load %struct.rx_queue_stop_ramrod_data*, %struct.rx_queue_stop_ramrod_data** %10, align 8
  %49 = getelementptr inbounds %struct.rx_queue_stop_ramrod_data, %struct.rx_queue_stop_ramrod_data* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %7, align 8
  %51 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @QED_QUEUE_CID_SELF, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %33
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55, %33
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br label %61

61:                                               ; preds = %58, %55
  %62 = phi i1 [ true, %55 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  %64 = load %struct.rx_queue_stop_ramrod_data*, %struct.rx_queue_stop_ramrod_data** %10, align 8
  %65 = getelementptr inbounds %struct.rx_queue_stop_ramrod_data, %struct.rx_queue_stop_ramrod_data* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %7, align 8
  %67 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @QED_QUEUE_CID_SELF, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %71, %61
  %75 = phi i1 [ true, %61 ], [ %73, %71 ]
  %76 = zext i1 %75 to i32
  %77 = load %struct.rx_queue_stop_ramrod_data*, %struct.rx_queue_stop_ramrod_data** %10, align 8
  %78 = getelementptr inbounds %struct.rx_queue_stop_ramrod_data, %struct.rx_queue_stop_ramrod_data* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %80 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %11, align 8
  %81 = call i32 @qed_spq_post(%struct.qed_hwfn* %79, %struct.qed_spq_entry* %80, i32* null)
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %74, %31
  %83 = load i32, i32* %5, align 4
  ret i32 %83
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
