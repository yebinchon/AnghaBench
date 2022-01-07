; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_recalc_rtscts_prot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_recalc_rtscts_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i64, i32, %struct.ath10k* }
%struct.ath10k = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@WMI_RTSCTS_ENABLED = common dso_local global i32 0, align 4
@WMI_RTSCTS_SET = common dso_local global i32 0, align 4
@WMI_RTSCTS_ACROSS_SW_RETRIES = common dso_local global i32 0, align 4
@WMI_RTSCTS_PROFILE = common dso_local global i32 0, align 4
@WMI_RTSCTS_FOR_SECOND_RATESERIES = common dso_local global i32 0, align 4
@ATH10K_DBG_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"mac vdev %d recalc rts/cts prot %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*)* @ath10k_recalc_rtscts_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_recalc_rtscts_prot(%struct.ath10k_vif* %0) #0 {
  %2 = alloca %struct.ath10k_vif*, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %2, align 8
  %6 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %7 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %6, i32 0, i32 2
  %8 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  store %struct.ath10k* %8, %struct.ath10k** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 1
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @WMI_RTSCTS_ENABLED, align 4
  %19 = load i32, i32* @WMI_RTSCTS_SET, align 4
  %20 = call i32 @SM(i32 %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %24 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @WMI_RTSCTS_ACROSS_SW_RETRIES, align 4
  %29 = load i32, i32* @WMI_RTSCTS_PROFILE, align 4
  %30 = call i32 @SM(i32 %28, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %39

33:                                               ; preds = %1
  %34 = load i32, i32* @WMI_RTSCTS_FOR_SECOND_RATESERIES, align 4
  %35 = load i32, i32* @WMI_RTSCTS_PROFILE, align 4
  %36 = call i32 @SM(i32 %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %41 = load i32, i32* @ATH10K_DBG_MAC, align 4
  %42 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %43 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @ath10k_dbg(%struct.ath10k* %40, i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %48 = load %struct.ath10k_vif*, %struct.ath10k_vif** %2, align 8
  %49 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ath10k_wmi_vdev_set_param(%struct.ath10k* %47, i32 %50, i32 %51, i32 %52)
  ret i32 %53
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @SM(i32, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #1

declare dso_local i32 @ath10k_wmi_vdev_set_param(%struct.ath10k*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
