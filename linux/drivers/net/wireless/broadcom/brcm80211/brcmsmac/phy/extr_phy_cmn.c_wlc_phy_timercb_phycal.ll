; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_timercb_phycal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_timercb_phycal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PHY_PERICAL_AUTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_timercb_phycal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_timercb_phycal(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  store i32 5, i32* %3, align 4
  %4 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %5 = call i64 @PHY_PERICAL_MPHASE_PENDING(%struct.brcms_phy* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %1
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %9 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %16 = call i32 @wlc_phy_cal_perical_mphase_reset(%struct.brcms_phy* %15)
  br label %38

17:                                               ; preds = %7
  %18 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %19 = call i64 @SCAN_RM_IN_PROGRESS(%struct.brcms_phy* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = call i64 @PLT_INPROG_PHY(%struct.brcms_phy* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %17
  store i32 1000, i32* %3, align 4
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %27 = call i32 @wlc_phy_cal_perical_mphase_restart(%struct.brcms_phy* %26)
  br label %32

28:                                               ; preds = %21
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %30 = load i32, i32* @PHY_PERICAL_AUTO, align 4
  %31 = call i32 @wlc_phy_cal_perical_nphy_run(%struct.brcms_phy* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %34 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @wlapi_add_timer(i32 %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %14, %32, %1
  ret void
}

declare dso_local i64 @PHY_PERICAL_MPHASE_PENDING(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_cal_perical_mphase_reset(%struct.brcms_phy*) #1

declare dso_local i64 @SCAN_RM_IN_PROGRESS(%struct.brcms_phy*) #1

declare dso_local i64 @PLT_INPROG_PHY(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_cal_perical_mphase_restart(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_phy_cal_perical_nphy_run(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlapi_add_timer(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
