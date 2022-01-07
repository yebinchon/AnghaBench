; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_good_plcp_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_good_plcp_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.statistics_rx_phy = type { i32 }
%struct.statistics_rx_ht_phy = type { i32 }

@IWL_MAX_PLCP_ERR_THRESHOLD_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"plcp_err check disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"plcp health threshold %u delta %d msecs %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.statistics_rx_phy*, %struct.statistics_rx_ht_phy*, i32)* @iwlagn_good_plcp_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_good_plcp_health(%struct.iwl_priv* %0, %struct.statistics_rx_phy* %1, %struct.statistics_rx_ht_phy* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca %struct.statistics_rx_phy*, align 8
  %8 = alloca %struct.statistics_rx_ht_phy*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %6, align 8
  store %struct.statistics_rx_phy* %1, %struct.statistics_rx_phy** %7, align 8
  store %struct.statistics_rx_ht_phy* %2, %struct.statistics_rx_ht_phy** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %13 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @IWL_MAX_PLCP_ERR_THRESHOLD_DISABLE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %20 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RADIO(%struct.iwl_priv* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %62

21:                                               ; preds = %4
  %22 = load %struct.statistics_rx_phy*, %struct.statistics_rx_phy** %7, align 8
  %23 = getelementptr inbounds %struct.statistics_rx_phy, %struct.statistics_rx_phy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = sub nsw i32 %25, %31
  %33 = load %struct.statistics_rx_ht_phy*, %struct.statistics_rx_ht_phy** %8, align 8
  %34 = getelementptr inbounds %struct.statistics_rx_ht_phy, %struct.statistics_rx_ht_phy* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = add nsw i32 %32, %36
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = sub nsw i32 %37, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sle i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %62

48:                                               ; preds = %21
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 %49, 100
  %51 = load i32, i32* %9, align 4
  %52 = udiv i32 %50, %51
  %53 = load i32, i32* %11, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_RADIO(%struct.iwl_priv* %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58, i32 %59)
  store i32 0, i32* %5, align 4
  br label %62

61:                                               ; preds = %48
  store i32 1, i32* %5, align 4
  br label %62

62:                                               ; preds = %61, %55, %47, %18
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @IWL_DEBUG_RADIO(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
