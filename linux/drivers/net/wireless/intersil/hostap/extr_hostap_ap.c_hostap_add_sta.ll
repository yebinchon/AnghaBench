; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_hostap_add_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_ap.c_hostap_add_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_data = type { i32 }
%struct.sta_info = type { i32, i32, i32*, i32, i32, i32, i32 }

@WLAN_STA_AUTH = common dso_local global i32 0, align 4
@WLAN_STA_ASSOC = common dso_local global i32 0, align 4
@WLAN_RATE_1M = common dso_local global i32 0, align 4
@WLAN_RATE_2M = common dso_local global i32 0, align 4
@WLAN_RATE_5M5 = common dso_local global i32 0, align 4
@WLAN_RATE_11M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostap_add_sta(%struct.ap_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ap_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ap_data* %0, %struct.ap_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %9 = icmp ne %struct.ap_data* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %79

11:                                               ; preds = %2
  %12 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %13 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.sta_info* @ap_get_sta(%struct.ap_data* %15, i32* %16)
  store %struct.sta_info* %17, %struct.sta_info** %6, align 8
  %18 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %19 = icmp ne %struct.sta_info* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %11
  %22 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %23 = getelementptr inbounds %struct.ap_data, %struct.ap_data* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %77

27:                                               ; preds = %21
  %28 = load %struct.ap_data*, %struct.ap_data** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call %struct.sta_info* @ap_add_sta(%struct.ap_data* %28, i32* %29)
  store %struct.sta_info* %30, %struct.sta_info** %6, align 8
  %31 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %32 = icmp ne %struct.sta_info* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %79

34:                                               ; preds = %27
  %35 = load i32, i32* @WLAN_STA_AUTH, align 4
  %36 = load i32, i32* @WLAN_STA_ASSOC, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %39 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %41 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  %42 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %43 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @memset(i32* %44, i32 0, i32 8)
  %46 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %47 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 130, i32* %49, align 4
  %50 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %51 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 132, i32* %53, align 4
  %54 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %55 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 11, i32* %57, align 4
  %58 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %59 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  store i32 22, i32* %61, align 4
  %62 = load i32, i32* @WLAN_RATE_1M, align 4
  %63 = load i32, i32* @WLAN_RATE_2M, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @WLAN_RATE_5M5, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @WLAN_RATE_11M, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %70 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %72 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %71, i32 0, i32 4
  store i32 110, i32* %72, align 4
  %73 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %74 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %73, i32 0, i32 6
  store i32 3, i32* %74, align 4
  %75 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %76 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %75, i32 0, i32 5
  store i32 3, i32* %76, align 8
  br label %77

77:                                               ; preds = %34, %21
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %33, %10
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.ap_data*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.sta_info* @ap_add_sta(%struct.ap_data*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
