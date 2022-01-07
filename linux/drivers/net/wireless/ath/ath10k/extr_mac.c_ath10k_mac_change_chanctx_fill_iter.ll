; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_change_chanctx_fill_iter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_change_chanctx_fill_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_vif = type { i32 }
%struct.ath10k_mac_change_chanctx_arg = type { i64, i64, %struct.TYPE_2__*, %struct.ieee80211_chanctx_conf* }
%struct.TYPE_2__ = type { %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf*, %struct.ieee80211_vif* }
%struct.ieee80211_chanctx_conf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, %struct.ieee80211_vif*)* @ath10k_mac_change_chanctx_fill_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_mac_change_chanctx_fill_iter(i8* %0, i32* %1, %struct.ieee80211_vif* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ath10k_mac_change_chanctx_arg*, align 8
  %8 = alloca %struct.ieee80211_chanctx_conf*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ath10k_mac_change_chanctx_arg*
  store %struct.ath10k_mac_change_chanctx_arg* %10, %struct.ath10k_mac_change_chanctx_arg** %7, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %12 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ieee80211_chanctx_conf* @rcu_access_pointer(i32 %13)
  store %struct.ieee80211_chanctx_conf* %14, %struct.ieee80211_chanctx_conf** %8, align 8
  %15 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %8, align 8
  %16 = load %struct.ath10k_mac_change_chanctx_arg*, %struct.ath10k_mac_change_chanctx_arg** %7, align 8
  %17 = getelementptr inbounds %struct.ath10k_mac_change_chanctx_arg, %struct.ath10k_mac_change_chanctx_arg* %16, i32 0, i32 3
  %18 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %17, align 8
  %19 = icmp ne %struct.ieee80211_chanctx_conf* %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %65

21:                                               ; preds = %3
  %22 = load %struct.ath10k_mac_change_chanctx_arg*, %struct.ath10k_mac_change_chanctx_arg** %7, align 8
  %23 = getelementptr inbounds %struct.ath10k_mac_change_chanctx_arg, %struct.ath10k_mac_change_chanctx_arg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ath10k_mac_change_chanctx_arg*, %struct.ath10k_mac_change_chanctx_arg** %7, align 8
  %26 = getelementptr inbounds %struct.ath10k_mac_change_chanctx_arg, %struct.ath10k_mac_change_chanctx_arg* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %65

33:                                               ; preds = %21
  %34 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %35 = load %struct.ath10k_mac_change_chanctx_arg*, %struct.ath10k_mac_change_chanctx_arg** %7, align 8
  %36 = getelementptr inbounds %struct.ath10k_mac_change_chanctx_arg, %struct.ath10k_mac_change_chanctx_arg* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.ath10k_mac_change_chanctx_arg*, %struct.ath10k_mac_change_chanctx_arg** %7, align 8
  %39 = getelementptr inbounds %struct.ath10k_mac_change_chanctx_arg, %struct.ath10k_mac_change_chanctx_arg* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store %struct.ieee80211_vif* %34, %struct.ieee80211_vif** %42, align 8
  %43 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %8, align 8
  %44 = load %struct.ath10k_mac_change_chanctx_arg*, %struct.ath10k_mac_change_chanctx_arg** %7, align 8
  %45 = getelementptr inbounds %struct.ath10k_mac_change_chanctx_arg, %struct.ath10k_mac_change_chanctx_arg* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load %struct.ath10k_mac_change_chanctx_arg*, %struct.ath10k_mac_change_chanctx_arg** %7, align 8
  %48 = getelementptr inbounds %struct.ath10k_mac_change_chanctx_arg, %struct.ath10k_mac_change_chanctx_arg* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store %struct.ieee80211_chanctx_conf* %43, %struct.ieee80211_chanctx_conf** %51, align 8
  %52 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %8, align 8
  %53 = load %struct.ath10k_mac_change_chanctx_arg*, %struct.ath10k_mac_change_chanctx_arg** %7, align 8
  %54 = getelementptr inbounds %struct.ath10k_mac_change_chanctx_arg, %struct.ath10k_mac_change_chanctx_arg* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load %struct.ath10k_mac_change_chanctx_arg*, %struct.ath10k_mac_change_chanctx_arg** %7, align 8
  %57 = getelementptr inbounds %struct.ath10k_mac_change_chanctx_arg, %struct.ath10k_mac_change_chanctx_arg* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store %struct.ieee80211_chanctx_conf* %52, %struct.ieee80211_chanctx_conf** %60, align 8
  %61 = load %struct.ath10k_mac_change_chanctx_arg*, %struct.ath10k_mac_change_chanctx_arg** %7, align 8
  %62 = getelementptr inbounds %struct.ath10k_mac_change_chanctx_arg, %struct.ath10k_mac_change_chanctx_arg* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %62, align 8
  br label %65

65:                                               ; preds = %33, %32, %20
  ret void
}

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_access_pointer(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
