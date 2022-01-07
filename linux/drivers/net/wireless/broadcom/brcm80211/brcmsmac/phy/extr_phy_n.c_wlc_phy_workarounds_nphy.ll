; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_workarounds_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_workarounds_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@NPHY_ClassifierCtrl_cck_en = common dso_local global i32 0, align 4
@NPHY_IQFlip_ADC1 = common dso_local global i32 0, align 4
@NPHY_IQFlip_ADC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_workarounds_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_workarounds_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %3 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %4 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @CHSPEC_IS5G(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %10 = load i32, i32* @NPHY_ClassifierCtrl_cck_en, align 4
  %11 = call i32 @wlc_phy_classifier_nphy(%struct.brcms_phy* %9, i32 %10, i32 0)
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = load i32, i32* @NPHY_ClassifierCtrl_cck_en, align 4
  %15 = call i32 @wlc_phy_classifier_nphy(%struct.brcms_phy* %13, i32 %14, i32 1)
  br label %16

16:                                               ; preds = %12, %8
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %18 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %22, i32 1)
  br label %24

24:                                               ; preds = %21, %16
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %26 = load i32, i32* @NPHY_IQFlip_ADC1, align 4
  %27 = load i32, i32* @NPHY_IQFlip_ADC2, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @or_phy_reg(%struct.brcms_phy* %25, i32 177, i32 %28)
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @NREV_GE(i32 %33, i32 7)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %38 = call i32 @wlc_phy_workarounds_nphy_rev7(%struct.brcms_phy* %37)
  br label %53

39:                                               ; preds = %24
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %41 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @NREV_GE(i32 %43, i32 3)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %48 = call i32 @wlc_phy_workarounds_nphy_rev3(%struct.brcms_phy* %47)
  br label %52

49:                                               ; preds = %39
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %51 = call i32 @wlc_phy_workarounds_nphy_rev1(%struct.brcms_phy* %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %36
  %54 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %55 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %60 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %59, i32 0)
  br label %61

61:                                               ; preds = %58, %53
  ret void
}

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i32 @wlc_phy_classifier_nphy(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @wlc_phy_workarounds_nphy_rev7(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_workarounds_nphy_rev3(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_workarounds_nphy_rev1(%struct.brcms_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
