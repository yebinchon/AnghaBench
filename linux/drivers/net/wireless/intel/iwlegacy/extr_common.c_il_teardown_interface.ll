; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_teardown_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_teardown_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.ieee80211_vif*, i32 }
%struct.ieee80211_vif = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, %struct.ieee80211_vif*)* @il_teardown_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il_teardown_interface(%struct.il_priv* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %5 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %6 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %5, i32 0, i32 1
  %7 = call i32 @lockdep_assert_held(i32* %6)
  %8 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %9, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %12 = icmp eq %struct.ieee80211_vif* %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %15 = call i32 @il_scan_cancel_timeout(%struct.il_priv* %14, i32 200)
  %16 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %17 = call i32 @il_force_scan_end(%struct.il_priv* %16)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %20 = call i32 @il_set_mode(%struct.il_priv* %19)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @il_scan_cancel_timeout(%struct.il_priv*, i32) #1

declare dso_local i32 @il_force_scan_end(%struct.il_priv*) #1

declare dso_local i32 @il_set_mode(%struct.il_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
