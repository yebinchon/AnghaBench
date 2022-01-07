; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_proc_rx_ind_ll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_htt_rx.c_ath10k_htt_rx_proc_rx_ind_ll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htt = type { i32, %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.htt_rx_indication = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.htt_rx_indication_mpdu_range = type { i64 }

@HTT_RX_INDICATION_INFO1_NUM_MPDU_RANGES = common dso_local global i32 0, align 4
@HTT_RX_INDICATION_INFO0_EXT_TID = common dso_local global i32 0, align 4
@ATH10K_DBG_HTT_DUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"htt rx ind: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k_htt*, %struct.htt_rx_indication*)* @ath10k_htt_rx_proc_rx_ind_ll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_htt_rx_proc_rx_ind_ll(%struct.ath10k_htt* %0, %struct.htt_rx_indication* %1) #0 {
  %3 = alloca %struct.ath10k_htt*, align 8
  %4 = alloca %struct.htt_rx_indication*, align 8
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.htt_rx_indication_mpdu_range*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.ath10k_htt* %0, %struct.ath10k_htt** %3, align 8
  store %struct.htt_rx_indication* %1, %struct.htt_rx_indication** %4, align 8
  %12 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %12, i32 0, i32 1
  %14 = load %struct.ath10k*, %struct.ath10k** %13, align 8
  store %struct.ath10k* %14, %struct.ath10k** %5, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.htt_rx_indication*, %struct.htt_rx_indication** %4, align 8
  %16 = getelementptr inbounds %struct.htt_rx_indication, %struct.htt_rx_indication* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__le32_to_cpu(i32 %18)
  %20 = load i32, i32* @HTT_RX_INDICATION_INFO1_NUM_MPDU_RANGES, align 4
  %21 = call i8* @MS(i32 %19, i32 %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load %struct.htt_rx_indication*, %struct.htt_rx_indication** %4, align 8
  %24 = getelementptr inbounds %struct.htt_rx_indication, %struct.htt_rx_indication* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__le16_to_cpu(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.htt_rx_indication*, %struct.htt_rx_indication** %4, align 8
  %29 = getelementptr inbounds %struct.htt_rx_indication, %struct.htt_rx_indication* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @HTT_RX_INDICATION_INFO0_EXT_TID, align 4
  %33 = call i8* @MS(i32 %31, i32 %32)
  store i8* %33, i8** %11, align 8
  %34 = load %struct.htt_rx_indication*, %struct.htt_rx_indication** %4, align 8
  %35 = call %struct.htt_rx_indication_mpdu_range* @htt_rx_ind_get_mpdu_ranges(%struct.htt_rx_indication* %34)
  store %struct.htt_rx_indication_mpdu_range* %35, %struct.htt_rx_indication_mpdu_range** %6, align 8
  %36 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %37 = load i32, i32* @ATH10K_DBG_HTT_DUMP, align 4
  %38 = load %struct.htt_rx_indication*, %struct.htt_rx_indication** %4, align 8
  %39 = load %struct.htt_rx_indication*, %struct.htt_rx_indication** %4, align 8
  %40 = load %struct.htt_rx_indication_mpdu_range*, %struct.htt_rx_indication_mpdu_range** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @struct_size(%struct.htt_rx_indication* %39, %struct.htt_rx_indication_mpdu_range* %40, i32 %41)
  %43 = call i32 @ath10k_dbg_dump(%struct.ath10k* %36, i32 %37, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.htt_rx_indication* %38, i32 %42)
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %59, %2
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load %struct.htt_rx_indication_mpdu_range*, %struct.htt_rx_indication_mpdu_range** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.htt_rx_indication_mpdu_range, %struct.htt_rx_indication_mpdu_range* %49, i64 %51
  %53 = getelementptr inbounds %struct.htt_rx_indication_mpdu_range, %struct.htt_rx_indication_mpdu_range* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  br label %44

62:                                               ; preds = %44
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.ath10k_htt*, %struct.ath10k_htt** %3, align 8
  %65 = getelementptr inbounds %struct.ath10k_htt, %struct.ath10k_htt* %64, i32 0, i32 0
  %66 = call i32 @atomic_add(i32 %63, i32* %65)
  %67 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i8*, i8** %11, align 8
  %70 = load %struct.htt_rx_indication_mpdu_range*, %struct.htt_rx_indication_mpdu_range** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @ath10k_sta_update_rx_tid_stats_ampdu(%struct.ath10k* %67, i32 %68, i8* %69, %struct.htt_rx_indication_mpdu_range* %70, i32 %71)
  ret void
}

declare dso_local i8* @MS(i32, i32) #1

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @__le16_to_cpu(i32) #1

declare dso_local %struct.htt_rx_indication_mpdu_range* @htt_rx_ind_get_mpdu_ranges(%struct.htt_rx_indication*) #1

declare dso_local i32 @ath10k_dbg_dump(%struct.ath10k*, i32, i32*, i8*, %struct.htt_rx_indication*, i32) #1

declare dso_local i32 @struct_size(%struct.htt_rx_indication*, %struct.htt_rx_indication_mpdu_range*, i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @ath10k_sta_update_rx_tid_stats_ampdu(%struct.ath10k*, i32, i8*, %struct.htt_rx_indication_mpdu_range*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
