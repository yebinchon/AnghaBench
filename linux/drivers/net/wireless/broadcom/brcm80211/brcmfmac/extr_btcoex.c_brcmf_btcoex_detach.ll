; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_btcoex.c_brcmf_btcoex_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_btcoex.c_brcmf_btcoex_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_btcoex_detach(%struct.brcmf_cfg80211_info* %0) #0 {
  %2 = alloca %struct.brcmf_cfg80211_info*, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %2, align 8
  %3 = load i32, i32* @TRACE, align 4
  %4 = call i32 @brcmf_dbg(i32 %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %6 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %47

10:                                               ; preds = %1
  %11 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %12 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %23 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = call i32 @del_timer_sync(i32* %25)
  br label %27

27:                                               ; preds = %17, %10
  %28 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %29 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = call i32 @cancel_work_sync(i32* %31)
  %33 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %34 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = call i32 @brcmf_btcoex_boost_wifi(%struct.TYPE_4__* %35, i32 0)
  %37 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %38 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 @brcmf_btcoex_restore_part1(%struct.TYPE_4__* %39)
  %41 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %42 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @kfree(%struct.TYPE_4__* %43)
  %45 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %2, align 8
  %46 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %45, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %46, align 8
  br label %47

47:                                               ; preds = %27, %9
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @brcmf_btcoex_boost_wifi(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @brcmf_btcoex_restore_part1(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
