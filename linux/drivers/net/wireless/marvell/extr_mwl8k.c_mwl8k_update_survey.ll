; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_update_survey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_update_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl8k_priv = type { %struct.TYPE_4__*, i64, i64, %struct.survey_info*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.survey_info = type { i64, i32, %struct.ieee80211_channel*, i32, i8*, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_channel = type { i32 }

@MWL8K_NUM_CHANS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Failed to update survey\0A\00", align 1
@NOK_CCA_CNT_REG = common dso_local global i64 0, align 8
@BBU_RXRDY_CNT_REG = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@BBU_AVG_NOISE_VAL = common dso_local global i32 0, align 4
@SURVEY_INFO_NOISE_DBM = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_BUSY = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwl8k_priv*, %struct.ieee80211_channel*)* @mwl8k_update_survey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_update_survey(%struct.mwl8k_priv* %0, %struct.ieee80211_channel* %1) #0 {
  %3 = alloca %struct.mwl8k_priv*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.survey_info*, align 8
  store %struct.mwl8k_priv* %0, %struct.mwl8k_priv** %3, align 8
  store %struct.ieee80211_channel* %1, %struct.ieee80211_channel** %4, align 8
  store i64 0, i64* %7, align 8
  %10 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %11 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %11, i32 0, i32 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @freq_to_idx(%struct.mwl8k_priv* %10, i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @MWL8K_NUM_CHANS, align 8
  %19 = icmp uge i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %22 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @wiphy_err(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %93

27:                                               ; preds = %2
  %28 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %29 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %28, i32 0, i32 3
  %30 = load %struct.survey_info*, %struct.survey_info** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %30, i64 %31
  store %struct.survey_info* %32, %struct.survey_info** %9, align 8
  %33 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %34 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NOK_CCA_CNT_REG, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @ioread32(i64 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sdiv i32 %39, 1000
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.survey_info*, %struct.survey_info** %9, align 8
  %45 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %47 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @BBU_RXRDY_CNT_REG, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @ioread32(i64 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sdiv i32 %52, 1000
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.survey_info*, %struct.survey_info** %9, align 8
  %58 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load i64, i64* @jiffies, align 8
  %60 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %61 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %65 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %67 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @jiffies_to_msecs(i64 %68)
  %70 = load %struct.survey_info*, %struct.survey_info** %9, align 8
  %71 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %73 = load %struct.survey_info*, %struct.survey_info** %9, align 8
  %74 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %73, i32 0, i32 2
  store %struct.ieee80211_channel* %72, %struct.ieee80211_channel** %74, align 8
  %75 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %3, align 8
  %76 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = load i32, i32* @BBU_AVG_NOISE_VAL, align 4
  %79 = call i32 @mwl8k_cmd_bbp_reg_access(%struct.TYPE_4__* %77, i32 0, i32 %78, i64* %7)
  %80 = load i64, i64* %7, align 8
  %81 = mul i64 %80, -1
  %82 = load %struct.survey_info*, %struct.survey_info** %9, align 8
  %83 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load i32, i32* @SURVEY_INFO_NOISE_DBM, align 4
  %85 = load i32, i32* @SURVEY_INFO_TIME, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @SURVEY_INFO_TIME_BUSY, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @SURVEY_INFO_TIME_RX, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.survey_info*, %struct.survey_info** %9, align 8
  %92 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %27, %20
  ret void
}

declare dso_local i64 @freq_to_idx(%struct.mwl8k_priv*, i32) #1

declare dso_local i32 @wiphy_err(i32, i8*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @mwl8k_cmd_bbp_reg_access(%struct.TYPE_4__*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
