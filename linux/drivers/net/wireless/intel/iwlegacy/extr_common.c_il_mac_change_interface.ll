; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_mac_change_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_mac_change_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.il_priv* }
%struct.il_priv = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"enter: type %d, addr %pM newtype %d newp2p %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"leave err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_mac_change_interface(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.il_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.il_priv*, %struct.il_priv** %12, align 8
  store %struct.il_priv* %13, %struct.il_priv** %9, align 8
  %14 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %15 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 (i8*, i32, ...) @D_MAC80211(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %10, align 4
  br label %55

31:                                               ; preds = %4
  %32 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %33 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %38 = call i32 @il_is_ready_rf(%struct.il_priv* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %55

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %51 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %53 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %54 = call i32 @il_teardown_interface(%struct.il_priv* %52, %struct.ieee80211_vif* %53)
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %43, %40, %28
  %56 = load i32, i32* %10, align 4
  %57 = call i32 (i8*, i32, ...) @D_MAC80211(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.il_priv*, %struct.il_priv** %9, align 8
  %59 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load i32, i32* %10, align 4
  ret i32 %61
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @D_MAC80211(i8*, i32, ...) #1

declare dso_local i32 @il_is_ready_rf(%struct.il_priv*) #1

declare dso_local i32 @il_teardown_interface(%struct.il_priv*, %struct.ieee80211_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
