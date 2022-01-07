; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_set_nf_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_set_nf_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@AR_PHY_CCA_MAX_GOOD_VAL_5416_2GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_MIN_GOOD_VAL_5416_2GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_NOM_VAL_5416_2GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_MAX_GOOD_VAL_5416_5GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_MIN_GOOD_VAL_5416_5GHZ = common dso_local global i32 0, align 4
@AR_PHY_CCA_NOM_VAL_5416_5GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar5008_hw_set_nf_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5008_hw_set_nf_limits(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %3 = load i32, i32* @AR_PHY_CCA_MAX_GOOD_VAL_5416_2GHZ, align 4
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store i32 %3, i32* %6, align 4
  %7 = load i32, i32* @AR_PHY_CCA_MIN_GOOD_VAL_5416_2GHZ, align 4
  %8 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @AR_PHY_CCA_NOM_VAL_5416_2GHZ, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @AR_PHY_CCA_MAX_GOOD_VAL_5416_5GHZ, align 4
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @AR_PHY_CCA_MIN_GOOD_VAL_5416_5GHZ, align 4
  %20 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %21 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @AR_PHY_CCA_NOM_VAL_5416_5GHZ, align 4
  %24 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
