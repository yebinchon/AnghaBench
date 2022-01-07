; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_terminate_connection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_terminate_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.qed_ll2_info = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.qed_ptt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@QED_LL2_TYPE_OOO = common dso_local global i64 0, align 8
@QED_LL2_TYPE_FCOE = common dso_local global i64 0, align 8
@QED_MF_UFP_SPECIFIC = common dso_local global i32 0, align 4
@QED_LLH_FILTER_ETHERTYPE = common dso_local global i32 0, align 4
@ETH_P_FCOE = common dso_local global i32 0, align 4
@ETH_P_FIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_ll2_terminate_connection(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ll2_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_ptt*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %11, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ll2_info* null, %struct.qed_ll2_info** %7, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %15 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %14)
  store %struct.qed_ptt* %15, %struct.qed_ptt** %9, align 8
  %16 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %17 = icmp ne %struct.qed_ptt* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %128

21:                                               ; preds = %2
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.qed_ll2_info* @qed_ll2_handle_sanity_lock(%struct.qed_hwfn* %22, i32 %23)
  store %struct.qed_ll2_info* %24, %struct.qed_ll2_info** %7, align 8
  %25 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %7, align 8
  %26 = icmp ne %struct.qed_ll2_info* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %123

30:                                               ; preds = %21
  %31 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %7, align 8
  %32 = call i64 @QED_LL2_TX_REGISTERED(%struct.qed_ll2_info* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %30
  %35 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %7, align 8
  %36 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = call i32 (...) @smp_wmb()
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %40 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %7, align 8
  %41 = call i32 @qed_sp_ll2_tx_queue_stop(%struct.qed_hwfn* %39, %struct.qed_ll2_info* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %123

45:                                               ; preds = %34
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @qed_ll2_txq_flush(%struct.qed_hwfn* %46, i32 %47)
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %50 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %7, align 8
  %51 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @qed_int_unregister_cb(%struct.qed_hwfn* %49, i32 %53)
  br label %55

55:                                               ; preds = %45, %30
  %56 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %7, align 8
  %57 = call i64 @QED_LL2_RX_REGISTERED(%struct.qed_ll2_info* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %7, align 8
  %61 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = call i32 (...) @smp_wmb()
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %65 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %7, align 8
  %66 = call i32 @qed_sp_ll2_rx_queue_stop(%struct.qed_hwfn* %64, %struct.qed_ll2_info* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %123

70:                                               ; preds = %59
  %71 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @qed_ll2_rxq_flush(%struct.qed_hwfn* %71, i32 %72)
  %74 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %75 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %7, align 8
  %76 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @qed_int_unregister_cb(%struct.qed_hwfn* %74, i32 %78)
  br label %80

80:                                               ; preds = %70, %55
  %81 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %7, align 8
  %82 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @QED_LL2_TYPE_OOO, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %89 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %90 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @qed_ooo_release_all_isles(%struct.qed_hwfn* %88, i32 %91)
  br label %93

93:                                               ; preds = %87, %80
  %94 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %7, align 8
  %95 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @QED_LL2_TYPE_FCOE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %93
  %101 = load i32, i32* @QED_MF_UFP_SPECIFIC, align 4
  %102 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %103 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %102, i32 0, i32 0
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = call i32 @test_bit(i32 %101, i32* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %100
  %109 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %110 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %109, i32 0, i32 0
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = load i32, i32* @QED_LLH_FILTER_ETHERTYPE, align 4
  %113 = load i32, i32* @ETH_P_FCOE, align 4
  %114 = call i32 @qed_llh_remove_protocol_filter(%struct.TYPE_8__* %111, i32 0, i32 %112, i32 %113, i32 0)
  br label %115

115:                                              ; preds = %108, %100
  %116 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %117 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load i32, i32* @QED_LLH_FILTER_ETHERTYPE, align 4
  %120 = load i32, i32* @ETH_P_FIP, align 4
  %121 = call i32 @qed_llh_remove_protocol_filter(%struct.TYPE_8__* %118, i32 0, i32 %119, i32 %120, i32 0)
  br label %122

122:                                              ; preds = %115, %93
  br label %123

123:                                              ; preds = %122, %69, %44, %27
  %124 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %125 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %126 = call i32 @qed_ptt_release(%struct.qed_hwfn* %124, %struct.qed_ptt* %125)
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %123, %18
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local %struct.qed_ll2_info* @qed_ll2_handle_sanity_lock(%struct.qed_hwfn*, i32) #1

declare dso_local i64 @QED_LL2_TX_REGISTERED(%struct.qed_ll2_info*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @qed_sp_ll2_tx_queue_stop(%struct.qed_hwfn*, %struct.qed_ll2_info*) #1

declare dso_local i32 @qed_ll2_txq_flush(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_int_unregister_cb(%struct.qed_hwfn*, i32) #1

declare dso_local i64 @QED_LL2_RX_REGISTERED(%struct.qed_ll2_info*) #1

declare dso_local i32 @qed_sp_ll2_rx_queue_stop(%struct.qed_hwfn*, %struct.qed_ll2_info*) #1

declare dso_local i32 @qed_ll2_rxq_flush(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_ooo_release_all_isles(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qed_llh_remove_protocol_filter(%struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
