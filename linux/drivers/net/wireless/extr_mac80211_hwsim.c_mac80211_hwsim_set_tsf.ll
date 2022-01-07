; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_set_tsf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_set_tsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mac80211_hwsim_data* }
%struct.mac80211_hwsim_data = type { i64, i32, i32 }
%struct.ieee80211_vif = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i64)* @mac80211_hwsim_set_tsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac80211_hwsim_set_tsf(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mac80211_hwsim_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %12, align 8
  store %struct.mac80211_hwsim_data* %13, %struct.mac80211_hwsim_data** %7, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %16 = call i64 @mac80211_hwsim_get_tsf(%struct.ieee80211_hw* %14, %struct.ieee80211_vif* %15)
  store i64 %16, i64* %8, align 8
  %17 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %18 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %8, align 8
  %22 = sub nsw i64 %20, %21
  %23 = call i64 @abs(i64 %22)
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load i64, i64* %10, align 8
  %29 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %30 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @do_div(i64 %35, i32 %36)
  %38 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %39 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %54

40:                                               ; preds = %3
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %43 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = sub nsw i64 %45, %41
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i64 @do_div(i64 %48, i32 %49)
  %51 = sub nsw i64 0, %50
  %52 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %53 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %40, %27
  ret void
}

declare dso_local i64 @mac80211_hwsim_get_tsf(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i64 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
