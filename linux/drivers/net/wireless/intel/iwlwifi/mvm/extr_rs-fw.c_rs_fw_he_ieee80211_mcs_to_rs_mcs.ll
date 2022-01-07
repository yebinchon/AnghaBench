; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs-fw.c_rs_fw_he_ieee80211_mcs_to_rs_mcs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs-fw.c_rs_fw_he_ieee80211_mcs_to_rs_mcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IWL_TLC_MNG_HT_RATE_MCS7 = common dso_local global i32 0, align 4
@IWL_TLC_MNG_HT_RATE_MCS9 = common dso_local global i32 0, align 4
@IWL_TLC_MNG_HT_RATE_MCS11 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid HE MCS %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rs_fw_he_ieee80211_mcs_to_rs_mcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_fw_he_ieee80211_mcs_to_rs_mcs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %21 [
    i32 129, label %5
    i32 128, label %10
    i32 130, label %15
    i32 131, label %20
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @IWL_TLC_MNG_HT_RATE_MCS7, align 4
  %7 = add nsw i32 %6, 1
  %8 = call i32 @BIT(i32 %7)
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %2, align 4
  br label %24

10:                                               ; preds = %1
  %11 = load i32, i32* @IWL_TLC_MNG_HT_RATE_MCS9, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i32 @BIT(i32 %12)
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %2, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @IWL_TLC_MNG_HT_RATE_MCS11, align 4
  %17 = add nsw i32 %16, 1
  %18 = call i32 @BIT(i32 %17)
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %24

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %20, %15, %10, %5
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
