; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_add_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_op_add_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32, i32, i32 }
%struct.b43_wl = type { i32, i32, i32, i32, %struct.ieee80211_vif*, %struct.b43_wldev* }
%struct.b43_wldev = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_WDS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Adding Interface type %d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @b43_op_add_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_op_add_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.b43_wl*, align 8
  %7 = alloca %struct.b43_wldev*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw* %9)
  store %struct.b43_wl* %10, %struct.b43_wl** %6, align 8
  %11 = load i32, i32* @EOPNOTSUPP, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %18
  %25 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NL80211_IFTYPE_WDS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %103

45:                                               ; preds = %36, %30, %24, %18, %2
  %46 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %47 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %46, i32 0, i32 1
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %50 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %89

54:                                               ; preds = %45
  %55 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %56 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @b43dbg(%struct.b43_wl* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %61 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %60, i32 0, i32 5
  %62 = load %struct.b43_wldev*, %struct.b43_wldev** %61, align 8
  store %struct.b43_wldev* %62, %struct.b43_wldev** %7, align 8
  %63 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %64 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %66 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %67 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %66, i32 0, i32 4
  store %struct.ieee80211_vif* %65, %struct.ieee80211_vif** %67, align 8
  %68 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %69 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %72 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %74 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @ETH_ALEN, align 4
  %80 = call i32 @memcpy(i32 %75, i32 %78, i32 %79)
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %82 = call i32 @b43_adjust_opmode(%struct.b43_wldev* %81)
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %84 = call i32 @b43_set_pretbtt(%struct.b43_wldev* %83)
  %85 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %86 = call i32 @b43_set_synth_pu_delay(%struct.b43_wldev* %85, i32 0)
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %7, align 8
  %88 = call i32 @b43_upload_card_macaddress(%struct.b43_wldev* %87)
  store i32 0, i32* %8, align 4
  br label %89

89:                                               ; preds = %54, %53
  %90 = load %struct.b43_wl*, %struct.b43_wl** %6, align 8
  %91 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %97 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %98 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %99 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %98, i32 0, i32 0
  %100 = call i32 @b43_op_bss_info_changed(%struct.ieee80211_hw* %96, %struct.ieee80211_vif* %97, i32* %99, i32 -1)
  br label %101

101:                                              ; preds = %95, %89
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %42
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.b43_wl* @hw_to_b43_wl(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @b43dbg(%struct.b43_wl*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @b43_adjust_opmode(%struct.b43_wldev*) #1

declare dso_local i32 @b43_set_pretbtt(%struct.b43_wldev*) #1

declare dso_local i32 @b43_set_synth_pu_delay(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_upload_card_macaddress(%struct.b43_wldev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @b43_op_bss_info_changed(%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
