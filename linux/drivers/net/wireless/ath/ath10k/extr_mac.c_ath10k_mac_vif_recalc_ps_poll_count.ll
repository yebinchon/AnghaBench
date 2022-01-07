; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_recalc_ps_poll_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_recalc_ps_poll_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32, %struct.TYPE_4__, %struct.ath10k* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ath10k = type { i32 }

@WMI_STA_PS_PSPOLL_COUNT_UAPSD = common dso_local global i32 0, align 4
@WMI_STA_PS_PSPOLL_COUNT_NO_MAX = common dso_local global i32 0, align 4
@WMI_STA_PS_PARAM_PSPOLL_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"failed to submit ps poll count %u on vdev %i: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*)* @ath10k_mac_vif_recalc_ps_poll_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_vif_recalc_ps_poll_count(%struct.ath10k_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_vif*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %3, align 8
  %8 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %8, i32 0, i32 2
  %10 = load %struct.ath10k*, %struct.ath10k** %9, align 8
  store %struct.ath10k* %10, %struct.ath10k** %4, align 8
  %11 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %12 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %11, i32 0, i32 2
  %13 = load %struct.ath10k*, %struct.ath10k** %12, align 8
  %14 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %13, i32 0, i32 0
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @WMI_STA_PS_PSPOLL_COUNT_UAPSD, align 4
  store i32 %23, i32* %6, align 4
  br label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @WMI_STA_PS_PSPOLL_COUNT_NO_MAX, align 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = load i32, i32* @WMI_STA_PS_PARAM_PSPOLL_COUNT, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %29 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %30 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ath10k_wmi_set_sta_ps_param(%struct.ath10k* %28, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %26
  %38 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %41 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ath10k_warn(%struct.ath10k* %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %37
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @ath10k_wmi_set_sta_ps_param(%struct.ath10k*, i32, i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
