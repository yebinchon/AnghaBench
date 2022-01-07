; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_prism2_hostapd_sta_clear_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_prism2_hostapd_sta_clear_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_data = type { i32 }
%struct.prism2_hostapd_param = type { i32 }
%struct.sta_info = type { i64*, i64*, i64, i64, i64, i64 }

@WLAN_RATE_COUNT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ap_data*, %struct.prism2_hostapd_param*)* @prism2_hostapd_sta_clear_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_hostapd_sta_clear_stats(%struct.ap_data* %0, %struct.prism2_hostapd_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ap_data*, align 8
  %5 = alloca %struct.prism2_hostapd_param*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ap_data* %0, %struct.ap_data** %4, align 8
  store %struct.prism2_hostapd_param* %1, %struct.prism2_hostapd_param** %5, align 8
  %8 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %9 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %12 = load %struct.prism2_hostapd_param*, %struct.prism2_hostapd_param** %5, align 8
  %13 = getelementptr inbounds %struct.prism2_hostapd_param, %struct.prism2_hostapd_param* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.sta_info* @ap_get_sta(%struct.ap_data* %11, i32 %14)
  store %struct.sta_info* %15, %struct.sta_info** %6, align 8
  %16 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %17 = icmp ne %struct.sta_info* %16, null
  br i1 %17, label %18, label %48

18:                                               ; preds = %2
  %19 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %20 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %19, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %24 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %26 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %44, %18
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @WLAN_RATE_COUNT, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %33 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  store i64 0, i64* %37, align 8
  %38 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %27

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %50 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %53 = icmp ne %struct.sta_info* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @ENOENT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %58

57:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.ap_data*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
