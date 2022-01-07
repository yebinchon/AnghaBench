; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_hostap_is_sta_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_hostap_is_sta_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_data = type { i32 }
%struct.sta_info = type { i32, i32 }

@WLAN_STA_ASSOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostap_is_sta_assoc(%struct.ap_data* %0, i32* %1) #0 {
  %3 = alloca %struct.ap_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ap_data* %0, %struct.ap_data** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %8 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %11 = load i32*, i32** %4, align 8
  %12 = call %struct.sta_info* @ap_get_sta(%struct.ap_data* %10, i32* %11)
  store %struct.sta_info* %12, %struct.sta_info** %5, align 8
  %13 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %14 = icmp ne %struct.sta_info* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %17 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %24 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 1, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %22, %15, %2
  %29 = load %struct.ap_data*, %struct.ap_data** %3, align 8
  %30 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock(i32* %30)
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.ap_data*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
