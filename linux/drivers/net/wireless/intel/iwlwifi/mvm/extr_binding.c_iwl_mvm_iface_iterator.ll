; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_binding.c_iwl_mvm_iface_iterator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_binding.c_iwl_mvm_iface_iterator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.iwl_mvm_iface_iterator_data = type { i64, i64, i32*, i32*, %struct.ieee80211_vif* }
%struct.iwl_mvm_vif = type { i64, i32, i32 }

@MAX_MACS_IN_BINDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @iwl_mvm_iface_iterator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_iface_iterator(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_mvm_iface_iterator_data*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iwl_mvm_iface_iterator_data*
  store %struct.iwl_mvm_iface_iterator_data* %10, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %12 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %11)
  store %struct.iwl_mvm_vif* %12, %struct.iwl_mvm_vif** %8, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %14 = load %struct.iwl_mvm_iface_iterator_data*, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %14, i32 0, i32 4
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %15, align 8
  %17 = icmp eq %struct.ieee80211_vif* %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %63

19:                                               ; preds = %3
  %20 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.iwl_mvm_iface_iterator_data*, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %63

28:                                               ; preds = %19
  %29 = load %struct.iwl_mvm_iface_iterator_data*, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %30 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MAX_MACS_IN_BINDING, align 8
  %33 = icmp uge i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON_ONCE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %63

38:                                               ; preds = %28
  %39 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %40 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iwl_mvm_iface_iterator_data*, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.iwl_mvm_iface_iterator_data*, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %46 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  store i32 %41, i32* %48, align 4
  %49 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %50 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.iwl_mvm_iface_iterator_data*, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.iwl_mvm_iface_iterator_data*, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %56 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  store i32 %51, i32* %58, align 4
  %59 = load %struct.iwl_mvm_iface_iterator_data*, %struct.iwl_mvm_iface_iterator_data** %7, align 8
  %60 = getelementptr inbounds %struct.iwl_mvm_iface_iterator_data, %struct.iwl_mvm_iface_iterator_data* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %38, %37, %27, %18
  ret void
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
