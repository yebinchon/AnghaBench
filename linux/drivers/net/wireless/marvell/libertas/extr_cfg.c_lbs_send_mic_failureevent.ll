; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_send_mic_failureevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_cfg.c_lbs_send_mic_failureevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32 }

@MACREG_INT_CODE_MIC_ERR_MULTICAST = common dso_local global i64 0, align 8
@NL80211_KEYTYPE_GROUP = common dso_local global i32 0, align 4
@NL80211_KEYTYPE_PAIRWISE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lbs_send_mic_failureevent(%struct.lbs_private* %0, i64 %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i64, align 8
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %6 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %9 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @MACREG_INT_CODE_MIC_ERR_MULTICAST, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @NL80211_KEYTYPE_GROUP, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @NL80211_KEYTYPE_PAIRWISE, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @cfg80211_michael_mic_failure(i32 %7, i32 %10, i32 %19, i32 -1, i32* null, i32 %20)
  ret void
}

declare dso_local i32 @cfg80211_michael_mic_failure(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
