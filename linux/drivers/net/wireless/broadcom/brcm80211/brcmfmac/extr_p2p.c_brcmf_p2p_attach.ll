; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { %struct.brcmf_pub*, %struct.brcmf_p2p_info }
%struct.brcmf_pub = type { i32 }
%struct.brcmf_p2p_info = type { i32, %struct.TYPE_2__*, %struct.brcmf_cfg80211_info* }
%struct.TYPE_2__ = type { i32 }
%struct.brcmf_if = type { i32 }

@P2PAPI_BSSCFG_PRIMARY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"P2P device creation failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_p2p_attach(%struct.brcmf_cfg80211_info* %0, i32 %1) #0 {
  %3 = alloca %struct.brcmf_cfg80211_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca %struct.brcmf_p2p_info*, align 8
  %7 = alloca %struct.brcmf_if*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %11 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %10, i32 0, i32 0
  %12 = load %struct.brcmf_pub*, %struct.brcmf_pub** %11, align 8
  store %struct.brcmf_pub* %12, %struct.brcmf_pub** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %14 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %13, i32 0, i32 1
  store %struct.brcmf_p2p_info* %14, %struct.brcmf_p2p_info** %6, align 8
  %15 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %16 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %6, align 8
  %17 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %16, i32 0, i32 2
  store %struct.brcmf_cfg80211_info* %15, %struct.brcmf_cfg80211_info** %17, align 8
  %18 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %19 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %18, i32 0, i32 0
  %20 = load %struct.brcmf_pub*, %struct.brcmf_pub** %19, align 8
  %21 = call %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub* %20, i32 0)
  store %struct.brcmf_if* %21, %struct.brcmf_if** %7, align 8
  %22 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %23 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %6, align 8
  %26 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* @P2PAPI_BSSCFG_PRIMARY, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %24, i32* %30, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %2
  %34 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %6, align 8
  %35 = call i8* @brcmf_p2p_create_p2pdev(%struct.brcmf_p2p_info* %34, i32* null, i32* null)
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i64 @IS_ERR(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %41 = call i32 @bphy_err(%struct.brcmf_pub* %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @PTR_ERR(i8* %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %39, %33
  br label %48

45:                                               ; preds = %2
  %46 = load %struct.brcmf_p2p_info*, %struct.brcmf_p2p_info** %6, align 8
  %47 = getelementptr inbounds %struct.brcmf_p2p_info, %struct.brcmf_p2p_info* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %44
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local %struct.brcmf_if* @brcmf_get_ifp(%struct.brcmf_pub*, i32) #1

declare dso_local i8* @brcmf_p2p_create_p2pdev(%struct.brcmf_p2p_info*, i32*, i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
