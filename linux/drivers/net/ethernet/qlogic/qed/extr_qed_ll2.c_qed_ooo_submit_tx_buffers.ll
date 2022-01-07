; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ooo_submit_tx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ooo_submit_tx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ll2_info = type { i32, i32 }
%struct.qed_ll2_tx_pkt_info = type { i32, %struct.qed_ooo_buffer*, i32, i64, i32, i64, i64, i32 }
%struct.qed_ooo_buffer = type { i32, i32, i64, i64 }

@CORE_TX_BD_DATA_FORCE_VLAN_MODE = common dso_local global i32 0, align 4
@CORE_TX_BD_DATA_L4_PROTOCOL = common dso_local global i32 0, align 4
@QED_LL2_TX_DEST_NW = common dso_local global i32 0, align 4
@QED_LL2_TX_DEST_LB = common dso_local global i32 0, align 4
@QED_LL2_TX_DEST_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ll2_info*)* @qed_ooo_submit_tx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_ooo_submit_tx_buffers(%struct.qed_hwfn* %0, %struct.qed_ll2_info* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ll2_info*, align 8
  %5 = alloca %struct.qed_ll2_tx_pkt_info, align 8
  %6 = alloca %struct.qed_ooo_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_ll2_info* %1, %struct.qed_ll2_info** %4, align 8
  br label %11

11:                                               ; preds = %78, %2
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.qed_ooo_buffer* @qed_ooo_get_ready_buffer(%struct.qed_hwfn* %12, i32 %15)
  store %struct.qed_ooo_buffer* %16, %struct.qed_ooo_buffer** %6, align 8
  %17 = icmp ne %struct.qed_ooo_buffer* %16, null
  br i1 %17, label %18, label %79

18:                                               ; preds = %11
  store i64 0, i64* %7, align 8
  store i64 0, i64* %9, align 8
  %19 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %6, align 8
  %23 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i32, i32* @CORE_TX_BD_DATA_FORCE_VLAN_MODE, align 4
  %28 = call i32 @SET_FIELD(i64 %26, i32 %27, i32 1)
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* @CORE_TX_BD_DATA_L4_PROTOCOL, align 4
  %31 = call i32 @SET_FIELD(i64 %29, i32 %30, i32 1)
  %32 = call i32 @memset(%struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 64)
  %33 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 7
  store i32 %36, i32* %37, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 6
  store i64 %38, i64* %39, align 8
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 5
  store i64 %40, i64* %41, align 8
  %42 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %43 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %52 [
    i32 128, label %45
    i32 129, label %48
    i32 130, label %51
  ]

45:                                               ; preds = %18
  %46 = load i32, i32* @QED_LL2_TX_DEST_NW, align 4
  %47 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 4
  store i32 %46, i32* %47, align 8
  br label %55

48:                                               ; preds = %18
  %49 = load i32, i32* @QED_LL2_TX_DEST_LB, align 4
  %50 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 4
  store i32 %49, i32* %50, align 8
  br label %55

51:                                               ; preds = %18
  br label %52

52:                                               ; preds = %18, %51
  %53 = load i32, i32* @QED_LL2_TX_DEST_DROP, align 4
  %54 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 4
  store i32 %53, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %48, %45
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 3
  store i64 %56, i64* %57, align 8
  %58 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %6, align 8
  %59 = getelementptr inbounds %struct.qed_ooo_buffer, %struct.qed_ooo_buffer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  %62 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %6, align 8
  %63 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %5, i32 0, i32 1
  store %struct.qed_ooo_buffer* %62, %struct.qed_ooo_buffer** %63, align 8
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %65 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %4, align 8
  %66 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @qed_ll2_prepare_tx_packet(%struct.qed_hwfn* %64, i32 %67, %struct.qed_ll2_tx_pkt_info* %5, i32 1)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %55
  %72 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %73 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %74 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qed_ooo_buffer*, %struct.qed_ooo_buffer** %6, align 8
  %77 = call i32 @qed_ooo_put_ready_buffer(%struct.qed_hwfn* %72, i32 %75, %struct.qed_ooo_buffer* %76, i32 0)
  br label %79

78:                                               ; preds = %55
  br label %11

79:                                               ; preds = %71, %11
  ret void
}

declare dso_local %struct.qed_ooo_buffer* @qed_ooo_get_ready_buffer(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @SET_FIELD(i64, i32, i32) #1

declare dso_local i32 @memset(%struct.qed_ll2_tx_pkt_info*, i32, i32) #1

declare dso_local i32 @qed_ll2_prepare_tx_packet(%struct.qed_hwfn*, i32, %struct.qed_ll2_tx_pkt_info*, i32) #1

declare dso_local i32 @qed_ooo_put_ready_buffer(%struct.qed_hwfn*, i32, %struct.qed_ooo_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
