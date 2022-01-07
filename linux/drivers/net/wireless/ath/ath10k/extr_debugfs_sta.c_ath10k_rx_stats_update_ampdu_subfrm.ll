; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_debugfs_sta.c_ath10k_rx_stats_update_ampdu_subfrm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_debugfs_sta.c_ath10k_rx_stats_update_ampdu_subfrm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sta_tid_stats = type { i32* }

@ATH10K_AMPDU_SUBFRM_NUM_10 = common dso_local global i64 0, align 8
@ATH10K_AMPDU_SUBFRM_NUM_20 = common dso_local global i64 0, align 8
@ATH10K_AMPDU_SUBFRM_NUM_30 = common dso_local global i64 0, align 8
@ATH10K_AMPDU_SUBFRM_NUM_40 = common dso_local global i64 0, align 8
@ATH10K_AMPDU_SUBFRM_NUM_50 = common dso_local global i64 0, align 8
@ATH10K_AMPDU_SUBFRM_NUM_60 = common dso_local global i64 0, align 8
@ATH10K_AMPDU_SUBFRM_NUM_MORE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ath10k_sta_tid_stats*, i32)* @ath10k_rx_stats_update_ampdu_subfrm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_rx_stats_update_ampdu_subfrm(%struct.ath10k* %0, %struct.ath10k_sta_tid_stats* %1, i32 %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ath10k_sta_tid_stats*, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.ath10k_sta_tid_stats* %1, %struct.ath10k_sta_tid_stats** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp sle i32 %7, 10
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load %struct.ath10k_sta_tid_stats*, %struct.ath10k_sta_tid_stats** %5, align 8
  %11 = getelementptr inbounds %struct.ath10k_sta_tid_stats, %struct.ath10k_sta_tid_stats* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @ATH10K_AMPDU_SUBFRM_NUM_10, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  br label %89

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %18, 20
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load %struct.ath10k_sta_tid_stats*, %struct.ath10k_sta_tid_stats** %5, align 8
  %22 = getelementptr inbounds %struct.ath10k_sta_tid_stats, %struct.ath10k_sta_tid_stats* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @ATH10K_AMPDU_SUBFRM_NUM_20, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %88

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = icmp sle i32 %29, 30
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load %struct.ath10k_sta_tid_stats*, %struct.ath10k_sta_tid_stats** %5, align 8
  %33 = getelementptr inbounds %struct.ath10k_sta_tid_stats, %struct.ath10k_sta_tid_stats* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @ATH10K_AMPDU_SUBFRM_NUM_30, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %87

39:                                               ; preds = %28
  %40 = load i32, i32* %6, align 4
  %41 = icmp sle i32 %40, 40
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load %struct.ath10k_sta_tid_stats*, %struct.ath10k_sta_tid_stats** %5, align 8
  %44 = getelementptr inbounds %struct.ath10k_sta_tid_stats, %struct.ath10k_sta_tid_stats* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* @ATH10K_AMPDU_SUBFRM_NUM_40, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %86

50:                                               ; preds = %39
  %51 = load i32, i32* %6, align 4
  %52 = icmp sle i32 %51, 50
  br i1 %52, label %53, label %61

53:                                               ; preds = %50
  %54 = load %struct.ath10k_sta_tid_stats*, %struct.ath10k_sta_tid_stats** %5, align 8
  %55 = getelementptr inbounds %struct.ath10k_sta_tid_stats, %struct.ath10k_sta_tid_stats* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @ATH10K_AMPDU_SUBFRM_NUM_50, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %85

61:                                               ; preds = %50
  %62 = load i32, i32* %6, align 4
  %63 = icmp sle i32 %62, 60
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.ath10k_sta_tid_stats*, %struct.ath10k_sta_tid_stats** %5, align 8
  %66 = getelementptr inbounds %struct.ath10k_sta_tid_stats, %struct.ath10k_sta_tid_stats* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @ATH10K_AMPDU_SUBFRM_NUM_60, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %84

72:                                               ; preds = %61
  %73 = load i32, i32* %6, align 4
  %74 = icmp sgt i32 %73, 60
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.ath10k_sta_tid_stats*, %struct.ath10k_sta_tid_stats** %5, align 8
  %77 = getelementptr inbounds %struct.ath10k_sta_tid_stats, %struct.ath10k_sta_tid_stats* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @ATH10K_AMPDU_SUBFRM_NUM_MORE, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %75, %72
  br label %84

84:                                               ; preds = %83, %64
  br label %85

85:                                               ; preds = %84, %53
  br label %86

86:                                               ; preds = %85, %42
  br label %87

87:                                               ; preds = %86, %31
  br label %88

88:                                               ; preds = %87, %20
  br label %89

89:                                               ; preds = %88, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
