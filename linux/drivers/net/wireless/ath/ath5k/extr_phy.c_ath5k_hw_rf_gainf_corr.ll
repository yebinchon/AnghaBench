; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf_gainf_corr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_phy.c_ath5k_hw_rf_gainf_corr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_gain_opt = type { %struct.ath5k_gain_opt_step* }
%struct.ath5k_gain_opt_step = type { i32* }
%struct.ath5k_rf_reg = type { i32 }
%struct.ath5k_hw = type { i64, i64, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@AR5K_RF5112 = common dso_local global i64 0, align 8
@AR5K_SREV_RAD_5112A = common dso_local global i64 0, align 8
@rfgain_opt_5112 = common dso_local global %struct.ath5k_gain_opt zeroinitializer, align 8
@rf_regs_5112a = common dso_local global %struct.ath5k_rf_reg* null, align 8
@AR5K_RF_MIXVGA_OVR = common dso_local global i32 0, align 4
@AR5K_RF_MIXGAIN_STEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*)* @ath5k_hw_rf_gainf_corr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_rf_gainf_corr(%struct.ath5k_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath5k_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath5k_gain_opt*, align 8
  %7 = alloca %struct.ath5k_gain_opt_step*, align 8
  %8 = alloca %struct.ath5k_rf_reg*, align 8
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %3, align 8
  %9 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AR5K_RF5112, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %16 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AR5K_SREV_RAD_5112A, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %1
  store i32 0, i32* %2, align 4
  br label %88

21:                                               ; preds = %14
  store %struct.ath5k_gain_opt* @rfgain_opt_5112, %struct.ath5k_gain_opt** %6, align 8
  %22 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** @rf_regs_5112a, align 8
  store %struct.ath5k_rf_reg* %22, %struct.ath5k_rf_reg** %8, align 8
  %23 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** @rf_regs_5112a, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.ath5k_rf_reg* %23)
  %25 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %26 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ath5k_gain_opt*, %struct.ath5k_gain_opt** %6, align 8
  %28 = getelementptr inbounds %struct.ath5k_gain_opt, %struct.ath5k_gain_opt* %27, i32 0, i32 0
  %29 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %28, align 8
  %30 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %31 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %29, i64 %33
  store %struct.ath5k_gain_opt_step* %34, %struct.ath5k_gain_opt_step** %7, align 8
  %35 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %36 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %88

40:                                               ; preds = %21
  %41 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %42 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32 0, i32* %43, align 8
  %44 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %45 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %46 = load i32, i32* @AR5K_RF_MIXVGA_OVR, align 4
  %47 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %44, %struct.ath5k_rf_reg* %45, i32 0, i32 %46, i32 0)
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %88

50:                                               ; preds = %40
  %51 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %52 = load %struct.ath5k_rf_reg*, %struct.ath5k_rf_reg** %8, align 8
  %53 = load i32, i32* @AR5K_RF_MIXGAIN_STEP, align 4
  %54 = call i32 @ath5k_hw_rfb_op(%struct.ath5k_hw* %51, %struct.ath5k_rf_reg* %52, i32 0, i32 %53, i32 0)
  store i32 %54, i32* %5, align 4
  %55 = load %struct.ath5k_gain_opt_step*, %struct.ath5k_gain_opt_step** %7, align 8
  %56 = getelementptr inbounds %struct.ath5k_gain_opt_step, %struct.ath5k_gain_opt_step* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  switch i32 %60, label %79 [
    i32 3, label %61
    i32 2, label %67
    i32 1, label %74
  ]

61:                                               ; preds = %50
  %62 = load i32, i32* %5, align 4
  %63 = mul nsw i32 %62, 2
  %64 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %65 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 %63, i32* %66, align 8
  br label %83

67:                                               ; preds = %50
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %68, 5
  %70 = mul nsw i32 %69, 2
  %71 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %72 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  br label %83

74:                                               ; preds = %50
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %77 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 8
  br label %83

79:                                               ; preds = %50
  %80 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %81 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %74, %67, %61
  %84 = load %struct.ath5k_hw*, %struct.ath5k_hw** %3, align 8
  %85 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %83, %49, %39, %20
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @ARRAY_SIZE(%struct.ath5k_rf_reg*) #1

declare dso_local i32 @ath5k_hw_rfb_op(%struct.ath5k_hw*, %struct.ath5k_rf_reg*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
