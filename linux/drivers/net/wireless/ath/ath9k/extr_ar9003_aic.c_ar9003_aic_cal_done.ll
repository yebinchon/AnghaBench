; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_aic.c_ar9003_aic_cal_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_aic.c_ar9003_aic_cal_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_aic }
%struct.ath9k_hw_aic = type { i32 }

@ATH_AIC_BT_JUPITER_CTRL = common dso_local global i32 0, align 4
@ATH_AIC_BT_AIC_ENABLE = common dso_local global i32 0, align 4
@AIC_CAL_STATE_DONE = common dso_local global i32 0, align 4
@AIC_CAL_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ar9003_aic_cal_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_aic_cal_done(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath9k_hw_aic*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.ath9k_hw_aic* %6, %struct.ath9k_hw_aic** %3, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = load i32, i32* @ATH_AIC_BT_JUPITER_CTRL, align 4
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = load i32, i32* @ATH_AIC_BT_JUPITER_CTRL, align 4
  %11 = call i32 @REG_READ(%struct.ath_hw* %9, i32 %10)
  %12 = load i32, i32* @ATH_AIC_BT_AIC_ENABLE, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = call i32 @REG_WRITE(%struct.ath_hw* %7, i32 %8, i32 %14)
  %16 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %17 = call i64 @ar9003_aic_cal_post_process(%struct.ath_hw* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @AIC_CAL_STATE_DONE, align 4
  %21 = load %struct.ath9k_hw_aic*, %struct.ath9k_hw_aic** %3, align 8
  %22 = getelementptr inbounds %struct.ath9k_hw_aic, %struct.ath9k_hw_aic* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @AIC_CAL_STATE_ERROR, align 4
  %25 = load %struct.ath9k_hw_aic*, %struct.ath9k_hw_aic** %3, align 8
  %26 = getelementptr inbounds %struct.ath9k_hw_aic, %struct.ath9k_hw_aic* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %19
  ret void
}

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i64 @ar9003_aic_cal_post_process(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
