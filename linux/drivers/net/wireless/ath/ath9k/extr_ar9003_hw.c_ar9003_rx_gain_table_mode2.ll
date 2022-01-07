; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_rx_gain_table_mode2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_rx_gain_table_mode2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, i32, i32, i32 }

@ar9462_2p1_common_mixed_rx_gain = common dso_local global i32 0, align 4
@ar9462_2p1_baseband_core_mix_rxgain = common dso_local global i32 0, align 4
@ar9462_2p1_baseband_postamble_mix_rxgain = common dso_local global i32 0, align 4
@ar9462_2p1_baseband_postamble_5g_xlna = common dso_local global i32 0, align 4
@ar9462_2p0_common_mixed_rx_gain = common dso_local global i32 0, align 4
@ar9462_2p0_baseband_core_mix_rxgain = common dso_local global i32 0, align 4
@ar9462_2p0_baseband_postamble_mix_rxgain = common dso_local global i32 0, align 4
@ar9462_2p0_baseband_postamble_5g_xlna = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_rx_gain_table_mode2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_rx_gain_table_mode2(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %4 = call i64 @AR_SREV_9462_21(%struct.ath_hw* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %7, i32 0, i32 3
  %9 = load i32, i32* @ar9462_2p1_common_mixed_rx_gain, align 4
  %10 = call i32 @INIT_INI_ARRAY(i32* %8, i32 %9)
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %11, i32 0, i32 2
  %13 = load i32, i32* @ar9462_2p1_baseband_core_mix_rxgain, align 4
  %14 = call i32 @INIT_INI_ARRAY(i32* %12, i32 %13)
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %15, i32 0, i32 1
  %17 = load i32, i32* @ar9462_2p1_baseband_postamble_mix_rxgain, align 4
  %18 = call i32 @INIT_INI_ARRAY(i32* %16, i32 %17)
  %19 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %20 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %19, i32 0, i32 0
  %21 = load i32, i32* @ar9462_2p1_baseband_postamble_5g_xlna, align 4
  %22 = call i32 @INIT_INI_ARRAY(i32* %20, i32 %21)
  br label %45

23:                                               ; preds = %1
  %24 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %25 = call i64 @AR_SREV_9462_20(%struct.ath_hw* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %23
  %28 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 3
  %30 = load i32, i32* @ar9462_2p0_common_mixed_rx_gain, align 4
  %31 = call i32 @INIT_INI_ARRAY(i32* %29, i32 %30)
  %32 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 2
  %34 = load i32, i32* @ar9462_2p0_baseband_core_mix_rxgain, align 4
  %35 = call i32 @INIT_INI_ARRAY(i32* %33, i32 %34)
  %36 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %37 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %36, i32 0, i32 1
  %38 = load i32, i32* @ar9462_2p0_baseband_postamble_mix_rxgain, align 4
  %39 = call i32 @INIT_INI_ARRAY(i32* %37, i32 %38)
  %40 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %41 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %40, i32 0, i32 0
  %42 = load i32, i32* @ar9462_2p0_baseband_postamble_5g_xlna, align 4
  %43 = call i32 @INIT_INI_ARRAY(i32* %41, i32 %42)
  br label %44

44:                                               ; preds = %27, %23
  br label %45

45:                                               ; preds = %44, %6
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
