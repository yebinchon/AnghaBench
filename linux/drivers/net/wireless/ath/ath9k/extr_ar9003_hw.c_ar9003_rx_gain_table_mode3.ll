; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_rx_gain_table_mode3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_rx_gain_table_mode3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32 }

@ar9462_2p1_common_5g_xlna_only_rxgain = common dso_local global i32 0, align 4
@ar9462_2p1_baseband_postamble_5g_xlna = common dso_local global i32 0, align 4
@ar9462_2p0_common_5g_xlna_only_rxgain = common dso_local global i32 0, align 4
@ar9462_2p0_baseband_postamble_5g_xlna = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_rx_gain_table_mode3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_rx_gain_table_mode3(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = call i64 @AR_SREV_9462_21(%struct.ath_hw* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 1
  %9 = load i32, i32* @ar9462_2p1_common_5g_xlna_only_rxgain, align 4
  %10 = call i32 @INIT_INI_ARRAY(i32* %8, i32 %9)
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 0
  %13 = load i32, i32* @ar9462_2p1_baseband_postamble_5g_xlna, align 4
  %14 = call i32 @INIT_INI_ARRAY(i32* %12, i32 %13)
  br label %29

15:                                               ; preds = %1
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = call i64 @AR_SREV_9462_20(%struct.ath_hw* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 1
  %22 = load i32, i32* @ar9462_2p0_common_5g_xlna_only_rxgain, align 4
  %23 = call i32 @INIT_INI_ARRAY(i32* %21, i32 %22)
  %24 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %24, i32 0, i32 0
  %26 = load i32, i32* @ar9462_2p0_baseband_postamble_5g_xlna, align 4
  %27 = call i32 @INIT_INI_ARRAY(i32* %25, i32 %26)
  br label %28

28:                                               ; preds = %19, %15
  br label %29

29:                                               ; preds = %28, %6
  ret void
}

declare dso_local i64 @AR_SREV_9462_21(%struct.ath_hw*) #1

declare dso_local i32 @INIT_INI_ARRAY(i32*, i32) #1

declare dso_local i64 @AR_SREV_9462_20(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
