; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_recover_from_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_recover_from_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i32 }
%struct.statistics_rx_phy = type { i32 }
%struct.statistics_rx_ht_phy = type { i32 }
%struct.statistics_tx = type { i32 }

@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.statistics_rx_phy*, %struct.statistics_rx_ht_phy*, %struct.statistics_tx*, i64)* @iwlagn_recover_from_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_recover_from_statistics(%struct.iwl_priv* %0, %struct.statistics_rx_phy* %1, %struct.statistics_rx_ht_phy* %2, %struct.statistics_tx* %3, i64 %4) #0 {
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca %struct.statistics_rx_phy*, align 8
  %8 = alloca %struct.statistics_rx_ht_phy*, align 8
  %9 = alloca %struct.statistics_tx*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %6, align 8
  store %struct.statistics_rx_phy* %1, %struct.statistics_rx_phy** %7, align 8
  store %struct.statistics_rx_ht_phy* %2, %struct.statistics_rx_ht_phy** %8, align 8
  store %struct.statistics_tx* %3, %struct.statistics_tx** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %14 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %13, i32 0, i32 1
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %43

18:                                               ; preds = %5
  %19 = load i64, i64* %10, align 8
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %19, %22
  %24 = call i32 @jiffies_to_msecs(i64 %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %26 = call i32 @iwl_is_any_associated(%struct.iwl_priv* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %43

29:                                               ; preds = %18
  %30 = load i32, i32* %11, align 4
  %31 = icmp ult i32 %30, 99
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %43

33:                                               ; preds = %29
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %35 = load %struct.statistics_rx_phy*, %struct.statistics_rx_phy** %7, align 8
  %36 = load %struct.statistics_rx_ht_phy*, %struct.statistics_rx_ht_phy** %8, align 8
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @iwlagn_good_plcp_health(%struct.iwl_priv* %34, %struct.statistics_rx_phy* %35, %struct.statistics_rx_ht_phy* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %33
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %42 = call i32 @iwl_force_rf_reset(%struct.iwl_priv* %41, i32 0)
  br label %43

43:                                               ; preds = %17, %28, %32, %40, %33
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @iwl_is_any_associated(%struct.iwl_priv*) #1

declare dso_local i32 @iwlagn_good_plcp_health(%struct.iwl_priv*, %struct.statistics_rx_phy*, %struct.statistics_rx_ht_phy*, i32) #1

declare dso_local i32 @iwl_force_rf_reset(%struct.iwl_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
