; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_addr_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_addr_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac80211_hwsim_data = type { i32, i32, i64 }
%struct.mac80211_hwsim_addr_match_data = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_IFACE_ITER_NORMAL = common dso_local global i32 0, align 4
@mac80211_hwsim_addr_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mac80211_hwsim_data*, i32*)* @mac80211_hwsim_addr_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac80211_hwsim_addr_match(%struct.mac80211_hwsim_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac80211_hwsim_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mac80211_hwsim_addr_match_data, align 4
  store %struct.mac80211_hwsim_data* %0, %struct.mac80211_hwsim_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = bitcast %struct.mac80211_hwsim_addr_match_data* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 8, i1 false)
  %8 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %4, align 8
  %9 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32*, i32** %5, align 8
  %14 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %4, align 8
  %15 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = call i64 @memcmp(i32* %13, i32 %16, i32 %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %35

21:                                               ; preds = %12, %2
  %22 = getelementptr inbounds %struct.mac80211_hwsim_addr_match_data, %struct.mac80211_hwsim_addr_match_data* %6, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @ETH_ALEN, align 4
  %26 = call i32 @memcpy(i32 %23, i32* %24, i32 %25)
  %27 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %4, align 8
  %28 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @IEEE80211_IFACE_ITER_NORMAL, align 4
  %31 = load i32, i32* @mac80211_hwsim_addr_iter, align 4
  %32 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %29, i32 %30, i32 %31, %struct.mac80211_hwsim_addr_match_data* %6)
  %33 = getelementptr inbounds %struct.mac80211_hwsim_addr_match_data, %struct.mac80211_hwsim_addr_match_data* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %21, %20
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.mac80211_hwsim_addr_match_data*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
