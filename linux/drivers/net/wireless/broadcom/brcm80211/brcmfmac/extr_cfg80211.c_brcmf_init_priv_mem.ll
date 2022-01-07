; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_init_priv_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_init_priv_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_cfg80211_info = type { %struct.TYPE_4__, %struct.TYPE_3__, i8*, i8* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@WL_EXTRA_BUF_MAX = common dso_local global i32 0, align 4
@BRCMF_ESCAN_BUF_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_cfg80211_info*)* @brcmf_init_priv_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_init_priv_mem(%struct.brcmf_cfg80211_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_cfg80211_info*, align 8
  store %struct.brcmf_cfg80211_info* %0, %struct.brcmf_cfg80211_info** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call i8* @kzalloc(i32 1, i32 %4)
  %6 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %7 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %6, i32 0, i32 3
  store i8* %5, i8** %7, align 8
  %8 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %9 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %8, i32 0, i32 3
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %62

13:                                               ; preds = %1
  %14 = load i32, i32* @WL_EXTRA_BUF_MAX, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kzalloc(i32 %14, i32 %15)
  %17 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %18 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %20 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %62

24:                                               ; preds = %13
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 5, i32 %25)
  %27 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %28 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i8* %26, i8** %29, align 8
  %30 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %31 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  br label %62

36:                                               ; preds = %24
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kzalloc(i32 9, i32 %37)
  %39 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %40 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i8* %38, i8** %41, align 8
  %42 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %43 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  br label %62

48:                                               ; preds = %36
  %49 = load i32, i32* @BRCMF_ESCAN_BUF_SIZE, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i8* @kzalloc(i32 %49, i32 %50)
  %52 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %53 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i8* %51, i8** %54, align 8
  %55 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %56 = getelementptr inbounds %struct.brcmf_cfg80211_info, %struct.brcmf_cfg80211_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %48
  br label %62

61:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %67

62:                                               ; preds = %60, %47, %35, %23, %12
  %63 = load %struct.brcmf_cfg80211_info*, %struct.brcmf_cfg80211_info** %3, align 8
  %64 = call i32 @brcmf_deinit_priv_mem(%struct.brcmf_cfg80211_info* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %62, %61
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @brcmf_deinit_priv_mem(%struct.brcmf_cfg80211_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
