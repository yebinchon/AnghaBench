; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_btcoex.c_brcmf_btcoex_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_btcoex.c_brcmf_btcoex_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { %struct.brcmf_btcoex_info* }
%struct.brcmf_btcoex_info = type { i32, i32, i32, i32, %struct.brcmf_cfg80211_info*, i32, i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BRCMF_BT_DHCP_IDLE = common dso_local global i32 0, align 4
@BRCMF_BTCOEX_OPPR_WIN_TIME = common dso_local global i32 0, align 4
@brcmf_btcoex_timerfunc = common dso_local global i32 0, align 4
@brcmf_btcoex_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_btcoex_attach(%struct.brcmf_cfg80211_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_cfg80211_info*, align 8
  %4 = alloca %struct.brcmf_btcoex_info*, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %3, align 8
  store %struct.brcmf_btcoex_info* null, %struct.brcmf_btcoex_info** %4, align 8
  %5 = load i32, i32* @TRACE, align 4
  %6 = call i32 @brcmf_dbg(i32 %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.brcmf_btcoex_info* @kmalloc(i32 40, i32 %7)
  store %struct.brcmf_btcoex_info* %8, %struct.brcmf_btcoex_info** %4, align 8
  %9 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %4, align 8
  %10 = icmp ne %struct.brcmf_btcoex_info* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  %15 = load i32, i32* @BRCMF_BT_DHCP_IDLE, align 4
  %16 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %4, align 8
  %17 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 8
  %18 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %4, align 8
  %19 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load i32, i32* @BRCMF_BTCOEX_OPPR_WIN_TIME, align 4
  %21 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %4, align 8
  %22 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %4, align 8
  %24 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %23, i32 0, i32 5
  %25 = load i32, i32* @brcmf_btcoex_timerfunc, align 4
  %26 = call i32 @timer_setup(i32* %24, i32 %25, i32 0)
  %27 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %28 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %4, align 8
  %29 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %28, i32 0, i32 4
  store %struct.brcmf_cfg80211_info* %27, %struct.brcmf_cfg80211_info** %29, align 8
  %30 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %4, align 8
  %31 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %4, align 8
  %33 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %32, i32 0, i32 2
  store i32 0, i32* %33, align 8
  %34 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %4, align 8
  %35 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %34, i32 0, i32 3
  %36 = load i32, i32* @brcmf_btcoex_handler, align 4
  %37 = call i32 @INIT_WORK(i32* %35, i32 %36)
  %38 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %4, align 8
  %39 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %40 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %39, i32 0, i32 0
  store %struct.brcmf_btcoex_info* %38, %struct.brcmf_btcoex_info** %40, align 8
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %14, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local %struct.brcmf_btcoex_info* @kmalloc(i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
