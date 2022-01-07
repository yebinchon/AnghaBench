; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_tgt_stats_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_tgt_stats_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i64, %struct.ath6kl* }
%struct.ath6kl = type { %struct.wmi_ap_mode_stat }
%struct.wmi_ap_mode_stat = type { %struct.wmi_per_sta_stat* }
%struct.wmi_per_sta_stat = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@AP_NETWORK = common dso_local global i64 0, align 8
@AP_MAX_NUM_STA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_tgt_stats_event(%struct.ath6kl_vif* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.ath6kl_vif*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi_ap_mode_stat*, align 8
  %8 = alloca %struct.ath6kl*, align 8
  %9 = alloca %struct.wmi_ap_mode_stat*, align 8
  %10 = alloca %struct.wmi_per_sta_stat*, align 8
  %11 = alloca %struct.wmi_per_sta_stat*, align 8
  %12 = alloca i64, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i64*, i64** %5, align 8
  %14 = bitcast i64* %13 to %struct.wmi_ap_mode_stat*
  store %struct.wmi_ap_mode_stat* %14, %struct.wmi_ap_mode_stat** %7, align 8
  %15 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %16 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %15, i32 0, i32 1
  %17 = load %struct.ath6kl*, %struct.ath6kl** %16, align 8
  store %struct.ath6kl* %17, %struct.ath6kl** %8, align 8
  %18 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %19 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %18, i32 0, i32 0
  store %struct.wmi_ap_mode_stat* %19, %struct.wmi_ap_mode_stat** %9, align 8
  %20 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %21 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AP_NETWORK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %98

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 8
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %103

30:                                               ; preds = %25
  store i64 0, i64* %12, align 8
  br label %31

31:                                               ; preds = %94, %30
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @AP_MAX_NUM_STA, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %97

35:                                               ; preds = %31
  %36 = load %struct.wmi_ap_mode_stat*, %struct.wmi_ap_mode_stat** %9, align 8
  %37 = getelementptr inbounds %struct.wmi_ap_mode_stat, %struct.wmi_ap_mode_stat* %36, i32 0, i32 0
  %38 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %38, i64 %39
  store %struct.wmi_per_sta_stat* %40, %struct.wmi_per_sta_stat** %10, align 8
  %41 = load %struct.wmi_ap_mode_stat*, %struct.wmi_ap_mode_stat** %7, align 8
  %42 = getelementptr inbounds %struct.wmi_ap_mode_stat, %struct.wmi_ap_mode_stat* %41, i32 0, i32 0
  %43 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %42, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %43, i64 %44
  store %struct.wmi_per_sta_stat* %45, %struct.wmi_per_sta_stat** %11, align 8
  %46 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %10, align 8
  %47 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %46, i32 0, i32 7
  %48 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %11, align 8
  %49 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ath6kl_add_le32(i32* %47, i32 %50)
  %52 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %10, align 8
  %53 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %52, i32 0, i32 6
  %54 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %11, align 8
  %55 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ath6kl_add_le32(i32* %53, i32 %56)
  %58 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %10, align 8
  %59 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %58, i32 0, i32 5
  %60 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %11, align 8
  %61 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ath6kl_add_le32(i32* %59, i32 %62)
  %64 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %10, align 8
  %65 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %64, i32 0, i32 4
  %66 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %11, align 8
  %67 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ath6kl_add_le32(i32* %65, i32 %68)
  %70 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %10, align 8
  %71 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %70, i32 0, i32 3
  %72 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %11, align 8
  %73 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ath6kl_add_le32(i32* %71, i32 %74)
  %76 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %10, align 8
  %77 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %76, i32 0, i32 2
  %78 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %11, align 8
  %79 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ath6kl_add_le32(i32* %77, i32 %80)
  %82 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %10, align 8
  %83 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %82, i32 0, i32 1
  %84 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %11, align 8
  %85 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ath6kl_add_le32(i32* %83, i32 %86)
  %88 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %10, align 8
  %89 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %88, i32 0, i32 0
  %90 = load %struct.wmi_per_sta_stat*, %struct.wmi_per_sta_stat** %11, align 8
  %91 = getelementptr inbounds %struct.wmi_per_sta_stat, %struct.wmi_per_sta_stat* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ath6kl_add_le32(i32* %89, i32 %92)
  br label %94

94:                                               ; preds = %35
  %95 = load i64, i64* %12, align 8
  %96 = add i64 %95, 1
  store i64 %96, i64* %12, align 8
  br label %31

97:                                               ; preds = %31
  br label %103

98:                                               ; preds = %3
  %99 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %100 = load i64*, i64** %5, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @ath6kl_update_target_stats(%struct.ath6kl_vif* %99, i64* %100, i32 %101)
  br label %103

103:                                              ; preds = %29, %98, %97
  ret void
}

declare dso_local i32 @ath6kl_add_le32(i32*, i32) #1

declare dso_local i32 @ath6kl_update_target_stats(%struct.ath6kl_vif*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
