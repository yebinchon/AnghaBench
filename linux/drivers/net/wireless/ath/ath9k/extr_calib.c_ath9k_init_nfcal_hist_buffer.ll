; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_init_nfcal_hist_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_calib.c_ath9k_init_nfcal_hist_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ath9k_nfcal_hist*, i32, i32 }
%struct.ath9k_nfcal_hist = type { i32, i32*, i32, i64 }
%struct.ath9k_channel = type { i32, i32 }

@NUM_NF_READINGS = common dso_local global i32 0, align 4
@AR_PHY_CCA_FILTERWINDOW_LENGTH = common dso_local global i32 0, align 4
@ATH9K_NF_CAL_HIST_MAX = common dso_local global i32 0, align 4
@AR5416_MAX_CHAINS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath9k_init_nfcal_hist_buffer(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_channel*, align 8
  %5 = alloca %struct.ath9k_nfcal_hist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %10 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 %11, i32* %15, align 4
  %16 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %17 = getelementptr inbounds %struct.ath9k_channel, %struct.ath9k_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %18, i32* %22, align 8
  %23 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %24 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %26, align 8
  store %struct.ath9k_nfcal_hist* %27, %struct.ath9k_nfcal_hist** %5, align 8
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %83, %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @NUM_NF_READINGS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %86

32:                                               ; preds = %28
  %33 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %33, i64 %35
  %37 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %39 = load %struct.ath9k_channel*, %struct.ath9k_channel** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ath9k_hw_get_default_nf(%struct.ath_hw* %38, %struct.ath9k_channel* %39, i32 %40)
  %42 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %42, i64 %44
  %46 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %45, i32 0, i32 0
  store i32 %41, i32* %46, align 8
  %47 = load i32, i32* @AR_PHY_CCA_FILTERWINDOW_LENGTH, align 4
  %48 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %48, i64 %50
  %52 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %51, i32 0, i32 2
  store i32 %47, i32* %52, align 8
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %73, %32
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @ATH9K_NF_CAL_HIST_MAX, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %58, i64 %60
  %62 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ath9k_nfcal_hist*, %struct.ath9k_nfcal_hist** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %64, i64 %66
  %68 = getelementptr inbounds %struct.ath9k_nfcal_hist, %struct.ath9k_nfcal_hist* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %63, i32* %72, align 4
  br label %73

73:                                               ; preds = %57
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %53

76:                                               ; preds = %53
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* @AR5416_MAX_CHAINS, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %81, %76
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %28

86:                                               ; preds = %28
  ret void
}

declare dso_local i32 @ath9k_hw_get_default_nf(%struct.ath_hw*, %struct.ath9k_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
