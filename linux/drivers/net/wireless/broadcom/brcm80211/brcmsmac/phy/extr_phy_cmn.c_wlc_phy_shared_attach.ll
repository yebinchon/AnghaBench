; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_shared_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_shared_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_phy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.shared_phy_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@PHY_SW_TIMER_FAST = common dso_local global i32 0, align 4
@PHY_SW_TIMER_SLOW = common dso_local global i32 0, align 4
@PHY_SW_TIMER_GLACIAL = common dso_local global i32 0, align 4
@RSSI_ANT_MERGE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.shared_phy* @wlc_phy_shared_attach(%struct.shared_phy_params* %0) #0 {
  %2 = alloca %struct.shared_phy*, align 8
  %3 = alloca %struct.shared_phy_params*, align 8
  %4 = alloca %struct.shared_phy*, align 8
  store %struct.shared_phy_params* %0, %struct.shared_phy_params** %3, align 8
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.shared_phy* @kzalloc(i32 68, i32 %5)
  store %struct.shared_phy* %6, %struct.shared_phy** %4, align 8
  %7 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %8 = icmp eq %struct.shared_phy* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.shared_phy* null, %struct.shared_phy** %2, align 8
  br label %89

10:                                               ; preds = %1
  %11 = load %struct.shared_phy_params*, %struct.shared_phy_params** %3, align 8
  %12 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %15 = getelementptr inbounds %struct.shared_phy, %struct.shared_phy* %14, i32 0, i32 16
  store i32 %13, i32* %15, align 4
  %16 = load %struct.shared_phy_params*, %struct.shared_phy_params** %3, align 8
  %17 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %20 = getelementptr inbounds %struct.shared_phy, %struct.shared_phy* %19, i32 0, i32 15
  store i32 %18, i32* %20, align 4
  %21 = load %struct.shared_phy_params*, %struct.shared_phy_params** %3, align 8
  %22 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %25 = getelementptr inbounds %struct.shared_phy, %struct.shared_phy* %24, i32 0, i32 14
  store i32 %23, i32* %25, align 4
  %26 = load %struct.shared_phy_params*, %struct.shared_phy_params** %3, align 8
  %27 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %26, i32 0, i32 9
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %30 = getelementptr inbounds %struct.shared_phy, %struct.shared_phy* %29, i32 0, i32 13
  store i32 %28, i32* %30, align 4
  %31 = load %struct.shared_phy_params*, %struct.shared_phy_params** %3, align 8
  %32 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %35 = getelementptr inbounds %struct.shared_phy, %struct.shared_phy* %34, i32 0, i32 12
  store i32 %33, i32* %35, align 4
  %36 = load %struct.shared_phy_params*, %struct.shared_phy_params** %3, align 8
  %37 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %40 = getelementptr inbounds %struct.shared_phy, %struct.shared_phy* %39, i32 0, i32 11
  store i32 %38, i32* %40, align 4
  %41 = load %struct.shared_phy_params*, %struct.shared_phy_params** %3, align 8
  %42 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %45 = getelementptr inbounds %struct.shared_phy, %struct.shared_phy* %44, i32 0, i32 10
  store i32 %43, i32* %45, align 4
  %46 = load %struct.shared_phy_params*, %struct.shared_phy_params** %3, align 8
  %47 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %50 = getelementptr inbounds %struct.shared_phy, %struct.shared_phy* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 4
  %51 = load %struct.shared_phy_params*, %struct.shared_phy_params** %3, align 8
  %52 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %55 = getelementptr inbounds %struct.shared_phy, %struct.shared_phy* %54, i32 0, i32 8
  store i32 %53, i32* %55, align 4
  %56 = load %struct.shared_phy_params*, %struct.shared_phy_params** %3, align 8
  %57 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %60 = getelementptr inbounds %struct.shared_phy, %struct.shared_phy* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  %61 = load %struct.shared_phy_params*, %struct.shared_phy_params** %3, align 8
  %62 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %65 = getelementptr inbounds %struct.shared_phy, %struct.shared_phy* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 4
  %66 = load %struct.shared_phy_params*, %struct.shared_phy_params** %3, align 8
  %67 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %70 = getelementptr inbounds %struct.shared_phy, %struct.shared_phy* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 4
  %71 = load %struct.shared_phy_params*, %struct.shared_phy_params** %3, align 8
  %72 = getelementptr inbounds %struct.shared_phy_params, %struct.shared_phy_params* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %75 = getelementptr inbounds %struct.shared_phy, %struct.shared_phy* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @PHY_SW_TIMER_FAST, align 4
  %77 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %78 = getelementptr inbounds %struct.shared_phy, %struct.shared_phy* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @PHY_SW_TIMER_SLOW, align 4
  %80 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %81 = getelementptr inbounds %struct.shared_phy, %struct.shared_phy* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @PHY_SW_TIMER_GLACIAL, align 4
  %83 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %84 = getelementptr inbounds %struct.shared_phy, %struct.shared_phy* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @RSSI_ANT_MERGE_MAX, align 4
  %86 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  %87 = getelementptr inbounds %struct.shared_phy, %struct.shared_phy* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.shared_phy*, %struct.shared_phy** %4, align 8
  store %struct.shared_phy* %88, %struct.shared_phy** %2, align 8
  br label %89

89:                                               ; preds = %10, %9
  %90 = load %struct.shared_phy*, %struct.shared_phy** %2, align 8
  ret %struct.shared_phy* %90
}

declare dso_local %struct.shared_phy* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
