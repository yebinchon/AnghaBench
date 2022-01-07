; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_aic.c_ar9003_aic_start_normal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_aic.c_ar9003_aic_start_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ath9k_hw_aic }
%struct.ath9k_hw_aic = type { i64, i32*, i32 }

@AIC_CAL_STATE_DONE = common dso_local global i64 0, align 8
@AR_PHY_AIC_SRAM_ADDR_B1 = common dso_local global i32 0, align 4
@ATH_AIC_SRAM_AUTO_INCREMENT = common dso_local global i32 0, align 4
@ATH_AIC_MAX_BT_CHANNEL = common dso_local global i64 0, align 8
@AR_PHY_AIC_SRAM_DATA_B1 = common dso_local global i32 0, align 4
@AR_PHY_65NM_CH1_RXTX4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9003_aic_start_normal(%struct.ath_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca %struct.ath9k_hw_aic*, align 8
  %5 = alloca i64, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.ath9k_hw_aic* %8, %struct.ath9k_hw_aic** %4, align 8
  %9 = load %struct.ath9k_hw_aic*, %struct.ath9k_hw_aic** %4, align 8
  %10 = getelementptr inbounds %struct.ath9k_hw_aic, %struct.ath9k_hw_aic* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AIC_CAL_STATE_DONE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %61

15:                                               ; preds = %1
  %16 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %17 = call i32 @ar9003_aic_gain_table(%struct.ath_hw* %16)
  %18 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %19 = load i32, i32* @AR_PHY_AIC_SRAM_ADDR_B1, align 4
  %20 = load i32, i32* @ATH_AIC_SRAM_AUTO_INCREMENT, align 4
  %21 = call i32 @REG_WRITE(%struct.ath_hw* %18, i32 %19, i32 %20)
  store i64 0, i64* %5, align 8
  br label %22

22:                                               ; preds = %36, %15
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @ATH_AIC_MAX_BT_CHANNEL, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %22
  %27 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %28 = load i32, i32* @AR_PHY_AIC_SRAM_DATA_B1, align 4
  %29 = load %struct.ath9k_hw_aic*, %struct.ath9k_hw_aic** %4, align 8
  %30 = getelementptr inbounds %struct.ath9k_hw_aic, %struct.ath9k_hw_aic* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @REG_WRITE(%struct.ath_hw* %27, i32 %28, i32 %34)
  br label %36

36:                                               ; preds = %26
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %22

39:                                               ; preds = %22
  %40 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %41 = call i32 @REG_WRITE(%struct.ath_hw* %40, i32 42672, i32 128)
  %42 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %43 = call i32 @REG_WRITE(%struct.ath_hw* %42, i32 42676, i32 5975536)
  %44 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %45 = call i32 @REG_WRITE(%struct.ath_hw* %44, i32 42680, i32 276180168)
  %46 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %47 = call i32 @REG_WRITE(%struct.ath_hw* %46, i32 42684, i32 18979403)
  %48 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %49 = call i32 @REG_WRITE(%struct.ath_hw* %48, i32 42688, i32 7681)
  %50 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %51 = call i32 @REG_WRITE(%struct.ath_hw* %50, i32 46772, i32 240)
  %52 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %53 = call i32 @REG_WRITE(%struct.ath_hw* %52, i32 46784, i32 7681)
  %54 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %55 = call i32 @REG_WRITE(%struct.ath_hw* %54, i32 46768, i32 129)
  %56 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %57 = load i32, i32* @AR_PHY_65NM_CH1_RXTX4, align 4
  %58 = call i32 @REG_WRITE(%struct.ath_hw* %56, i32 %57, i32 1073741824)
  %59 = load %struct.ath9k_hw_aic*, %struct.ath9k_hw_aic** %4, align 8
  %60 = getelementptr inbounds %struct.ath9k_hw_aic, %struct.ath9k_hw_aic* %59, i32 0, i32 2
  store i32 1, i32* %60, align 8
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %39, %14
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @ar9003_aic_gain_table(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
