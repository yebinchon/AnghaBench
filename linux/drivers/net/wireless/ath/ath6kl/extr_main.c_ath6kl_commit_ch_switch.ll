; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_commit_ch_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_commit_ch_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32, %struct.TYPE_2__, i32, i32, %struct.ath6kl* }
%struct.TYPE_2__ = type { i32 }
%struct.ath6kl = type { i32, i32 }

@ATH6KL_FW_CAPABILITY_RSN_CAP_OVERRIDE = common dso_local global i32 0, align 4
@WLAN_EID_RSN = common dso_local global i32 0, align 4
@WMI_RSN_IE_CAPB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"won't switch channels nw_type=%d\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_vif*, i32)* @ath6kl_commit_ch_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_commit_ch_switch(%struct.ath6kl_vif* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath6kl_vif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath6kl*, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %8 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %7, i32 0, i32 4
  %9 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  store %struct.ath6kl* %9, %struct.ath6kl** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @cpu_to_le16(i32 %10)
  %12 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %13 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %16 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %52 [
    i32 128, label %18
  ]

18:                                               ; preds = %2
  %19 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %20 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = load i32, i32* @ATH6KL_FW_CAPABILITY_RSN_CAP_OVERRIDE, align 4
  %25 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %26 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @test_bit(i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %32 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %35 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @WLAN_EID_RSN, align 4
  %38 = load i32, i32* @WMI_RSN_IE_CAPB, align 4
  %39 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %40 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %39, i32 0, i32 3
  %41 = call i32 @ath6kl_wmi_set_ie_cmd(i32 %33, i32 %36, i32 %37, i32 %38, i32* %40, i32 4)
  br label %42

42:                                               ; preds = %30, %23, %18
  %43 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %44 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %47 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %50 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %49, i32 0, i32 1
  %51 = call i32 @ath6kl_wmi_ap_profile_commit(i32 %45, i32 %48, %struct.TYPE_2__* %50)
  store i32 %51, i32* %3, align 4
  br label %59

52:                                               ; preds = %2
  %53 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %54 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ath6kl_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @ENOTSUPP, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %52, %42
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ath6kl_wmi_set_ie_cmd(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_ap_profile_commit(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @ath6kl_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
