; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_htc_drv_init.c_ath9k_init_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_htc_priv = type { i32*, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ath_common = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Unable to setup BEACON xmit queue\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to setup CAB xmit queue\0A\00", align 1
@IEEE80211_AC_BE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Unable to setup xmit queue for BE traffic\0A\00", align 1
@IEEE80211_AC_BK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Unable to setup xmit queue for BK traffic\0A\00", align 1
@IEEE80211_AC_VI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Unable to setup xmit queue for VI traffic\0A\00", align 1
@IEEE80211_AC_VO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"Unable to setup xmit queue for VO traffic\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_htc_priv*)* @ath9k_init_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_init_queues(%struct.ath9k_htc_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath9k_htc_priv*, align 8
  %4 = alloca %struct.ath_common*, align 8
  %5 = alloca i32, align 4
  store %struct.ath9k_htc_priv* %0, %struct.ath9k_htc_priv** %3, align 8
  %6 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.ath_common* @ath9k_hw_common(i32 %8)
  store %struct.ath_common* %9, %struct.ath_common** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @ARRAY_SIZE(i32* %14)
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 -1, i32* %23, align 4
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %10

27:                                               ; preds = %10
  %28 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %29 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ath9k_hw_beaconq_setup(i32 %30)
  %32 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %33 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %36 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %27
  %41 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %42 = call i32 @ath_err(%struct.ath_common* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %88

43:                                               ; preds = %27
  %44 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %45 = call i32 @ath9k_htc_cabq_setup(%struct.ath9k_htc_priv* %44)
  %46 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %47 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %49 = getelementptr inbounds %struct.ath9k_htc_priv, %struct.ath9k_htc_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %54 = call i32 @ath_err(%struct.ath_common* %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %88

55:                                               ; preds = %43
  %56 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %57 = load i32, i32* @IEEE80211_AC_BE, align 4
  %58 = call i32 @ath9k_htc_txq_setup(%struct.ath9k_htc_priv* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %62 = call i32 @ath_err(%struct.ath_common* %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %88

63:                                               ; preds = %55
  %64 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %65 = load i32, i32* @IEEE80211_AC_BK, align 4
  %66 = call i32 @ath9k_htc_txq_setup(%struct.ath9k_htc_priv* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %70 = call i32 @ath_err(%struct.ath_common* %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %88

71:                                               ; preds = %63
  %72 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %73 = load i32, i32* @IEEE80211_AC_VI, align 4
  %74 = call i32 @ath9k_htc_txq_setup(%struct.ath9k_htc_priv* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %78 = call i32 @ath_err(%struct.ath_common* %77, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %88

79:                                               ; preds = %71
  %80 = load %struct.ath9k_htc_priv*, %struct.ath9k_htc_priv** %3, align 8
  %81 = load i32, i32* @IEEE80211_AC_VO, align 4
  %82 = call i32 @ath9k_htc_txq_setup(%struct.ath9k_htc_priv* %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load %struct.ath_common*, %struct.ath_common** %4, align 8
  %86 = call i32 @ath_err(%struct.ath_common* %85, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  br label %88

87:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %91

88:                                               ; preds = %84, %76, %68, %60, %52, %40
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %88, %87
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ath9k_hw_beaconq_setup(i32) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

declare dso_local i32 @ath9k_htc_cabq_setup(%struct.ath9k_htc_priv*) #1

declare dso_local i32 @ath9k_htc_txq_setup(%struct.ath9k_htc_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
