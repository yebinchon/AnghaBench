; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_op_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_op_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32, i32 }
%struct.b43legacy_wl = type { i32, i32, i32, i32, i32, %struct.ieee80211_vif*, %struct.b43legacy_wldev* }
%struct.b43legacy_wldev = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_WDS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Adding Interface type %d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @b43legacy_op_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_op_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.b43legacy_wl*, align 8
  %7 = alloca %struct.b43legacy_wldev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw* %10)
  store %struct.b43legacy_wl* %11, %struct.b43legacy_wl** %6, align 8
  %12 = load i32, i32* @EOPNOTSUPP, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %2
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @NL80211_IFTYPE_WDS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %33 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %97

40:                                               ; preds = %31, %25, %19, %2
  %41 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %6, align 8
  %42 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %6, align 8
  %45 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %92

49:                                               ; preds = %40
  %50 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %6, align 8
  %51 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @b43legacydbg(%struct.b43legacy_wl* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %6, align 8
  %56 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %55, i32 0, i32 6
  %57 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %56, align 8
  store %struct.b43legacy_wldev* %57, %struct.b43legacy_wldev** %7, align 8
  %58 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %6, align 8
  %59 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %61 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %6, align 8
  %62 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %61, i32 0, i32 5
  store %struct.ieee80211_vif* %60, %struct.ieee80211_vif** %62, align 8
  %63 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %64 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %6, align 8
  %67 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %6, align 8
  %69 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %72 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @ETH_ALEN, align 4
  %75 = call i32 @memcpy(i32 %70, i32 %73, i32 %74)
  %76 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %6, align 8
  %77 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %76, i32 0, i32 2
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @spin_lock_irqsave(i32* %77, i64 %78)
  %80 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %7, align 8
  %81 = call i32 @b43legacy_adjust_opmode(%struct.b43legacy_wldev* %80)
  %82 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %7, align 8
  %83 = call i32 @b43legacy_set_pretbtt(%struct.b43legacy_wldev* %82)
  %84 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %7, align 8
  %85 = call i32 @b43legacy_set_synth_pu_delay(%struct.b43legacy_wldev* %84, i32 0)
  %86 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %7, align 8
  %87 = call i32 @b43legacy_upload_card_macaddress(%struct.b43legacy_wldev* %86)
  %88 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %6, align 8
  %89 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %88, i32 0, i32 2
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %49, %48
  %93 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %6, align 8
  %94 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %92, %37
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.b43legacy_wl* @hw_to_b43legacy_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @b43legacydbg(%struct.b43legacy_wl*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @b43legacy_adjust_opmode(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_set_pretbtt(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_set_synth_pu_delay(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_upload_card_macaddress(%struct.b43legacy_wldev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
