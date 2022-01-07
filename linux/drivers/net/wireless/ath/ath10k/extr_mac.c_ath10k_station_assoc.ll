; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_station_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_station_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32, i32, i32, i32 }
%struct.ath10k_vif = type { i32, i32, i32 }
%struct.wmi_peer_assoc_complete_arg = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"failed to prepare WMI peer assoc for %pM vdev %i: %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"failed to run peer assoc for STA %pM vdev %i: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to setup peer SMPS for vdev %d: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"failed to set qos params for STA %pM for vdev %i: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"failed to recalculate rts/cts prot for vdev %d: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"failed to install peer wep keys for vdev %i: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, i32)* @ath10k_station_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_station_assoc(%struct.ath10k* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath10k_vif*, align 8
  %11 = alloca %struct.wmi_peer_assoc_complete_arg, align 4
  %12 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.ath10k_vif*
  store %struct.ath10k_vif* %17, %struct.ath10k_vif** %10, align 8
  store i32 0, i32* %12, align 4
  %18 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 0
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %22 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %23 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %24 = call i32 @ath10k_peer_assoc_prepare(%struct.ath10k* %21, %struct.ieee80211_vif* %22, %struct.ieee80211_sta* %23, %struct.wmi_peer_assoc_complete_arg* %11)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %4
  %28 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %33 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 (%struct.ath10k*, i8*, i32, i32, ...) @ath10k_warn(%struct.ath10k* %28, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34, i32 %35)
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %5, align 4
  br label %147

38:                                               ; preds = %4
  %39 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %40 = call i32 @ath10k_wmi_peer_assoc(%struct.ath10k* %39, %struct.wmi_peer_assoc_complete_arg* %11)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  %44 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %45 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %49 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 (%struct.ath10k*, i8*, i32, i32, ...) @ath10k_warn(%struct.ath10k* %44, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50, i32 %51)
  %53 = load i32, i32* %12, align 4
  store i32 %53, i32* %5, align 4
  br label %147

54:                                               ; preds = %38
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %145, label %57

57:                                               ; preds = %54
  %58 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %59 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %60 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %61 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %63, i32 0, i32 3
  %65 = call i32 @ath10k_setup_peer_smps(%struct.ath10k* %58, %struct.ath10k_vif* %59, i32 %62, i32* %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %57
  %69 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %70 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %71 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 (%struct.ath10k*, i8*, i32, i32, ...) @ath10k_warn(%struct.ath10k* %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %73)
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %5, align 4
  br label %147

76:                                               ; preds = %57
  %77 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %78 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %79 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %80 = call i32 @ath10k_peer_assoc_qos_ap(%struct.ath10k* %77, %struct.ath10k_vif* %78, %struct.ieee80211_sta* %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %76
  %84 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %85 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %86 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %89 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 (%struct.ath10k*, i8*, i32, i32, ...) @ath10k_warn(%struct.ath10k* %84, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %87, i32 %90, i32 %91)
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %5, align 4
  br label %147

94:                                               ; preds = %76
  %95 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %96 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %117, label %99

99:                                               ; preds = %94
  %100 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %101 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %105 = call i32 @ath10k_recalc_rtscts_prot(%struct.ath10k_vif* %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %116

108:                                              ; preds = %99
  %109 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %110 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %111 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 (%struct.ath10k*, i8*, i32, i32, ...) @ath10k_warn(%struct.ath10k* %109, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i32 %112, i32 %113)
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %5, align 4
  br label %147

116:                                              ; preds = %99
  br label %117

117:                                              ; preds = %116, %94
  %118 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %119 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, -1
  br i1 %121, label %122, label %144

122:                                              ; preds = %117
  %123 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %124 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %144, label %127

127:                                              ; preds = %122
  %128 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %129 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %130 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @ath10k_install_peer_wep_keys(%struct.ath10k_vif* %128, i32 %131)
  store i32 %132, i32* %12, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %127
  %136 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %137 = load %struct.ath10k_vif*, %struct.ath10k_vif** %10, align 8
  %138 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i32 (%struct.ath10k*, i8*, i32, i32, ...) @ath10k_warn(%struct.ath10k* %136, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %139, i32 %140)
  %142 = load i32, i32* %12, align 4
  store i32 %142, i32* %5, align 4
  br label %147

143:                                              ; preds = %127
  br label %144

144:                                              ; preds = %143, %122, %117
  br label %145

145:                                              ; preds = %144, %54
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %145, %135, %108, %83, %68, %43, %27
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_peer_assoc_prepare(%struct.ath10k*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.wmi_peer_assoc_complete_arg*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32, ...) #1

declare dso_local i32 @ath10k_wmi_peer_assoc(%struct.ath10k*, %struct.wmi_peer_assoc_complete_arg*) #1

declare dso_local i32 @ath10k_setup_peer_smps(%struct.ath10k*, %struct.ath10k_vif*, i32, i32*) #1

declare dso_local i32 @ath10k_peer_assoc_qos_ap(%struct.ath10k*, %struct.ath10k_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @ath10k_recalc_rtscts_prot(%struct.ath10k_vif*) #1

declare dso_local i32 @ath10k_install_peer_wep_keys(%struct.ath10k_vif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
