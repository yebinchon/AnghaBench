; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wow.c_ath10k_vif_wow_clean_nlo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wow.c_ath10k_vif_wow_clean_nlo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32, i32, %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.wmi_pno_scan_req = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_vif*)* @ath10k_vif_wow_clean_nlo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_vif_wow_clean_nlo(%struct.ath10k_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k_vif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.wmi_pno_scan_req*, align 8
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %8 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %7, i32 0, i32 2
  %9 = load %struct.ath10k*, %struct.ath10k** %8, align 8
  store %struct.ath10k* %9, %struct.ath10k** %5, align 8
  %10 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %11 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %40 [
    i32 128, label %13
  ]

13:                                               ; preds = %1
  %14 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %15 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.wmi_pno_scan_req* @kzalloc(i32 4, i32 %19)
  store %struct.wmi_pno_scan_req* %20, %struct.wmi_pno_scan_req** %6, align 8
  %21 = load %struct.wmi_pno_scan_req*, %struct.wmi_pno_scan_req** %6, align 8
  %22 = icmp ne %struct.wmi_pno_scan_req* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %43

26:                                               ; preds = %18
  %27 = load %struct.wmi_pno_scan_req*, %struct.wmi_pno_scan_req** %6, align 8
  %28 = getelementptr inbounds %struct.wmi_pno_scan_req, %struct.wmi_pno_scan_req* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %30 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  %31 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %32 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %33 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wmi_pno_scan_req*, %struct.wmi_pno_scan_req** %6, align 8
  %36 = call i32 @ath10k_wmi_wow_config_pno(%struct.ath10k* %31, i32 %34, %struct.wmi_pno_scan_req* %35)
  store i32 %36, i32* %4, align 4
  %37 = load %struct.wmi_pno_scan_req*, %struct.wmi_pno_scan_req** %6, align 8
  %38 = call i32 @kfree(%struct.wmi_pno_scan_req* %37)
  br label %39

39:                                               ; preds = %26, %13
  br label %41

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %41, %23
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.wmi_pno_scan_req* @kzalloc(i32, i32) #1

declare dso_local i32 @ath10k_wmi_wow_config_pno(%struct.ath10k*, i32, %struct.wmi_pno_scan_req*) #1

declare dso_local i32 @kfree(%struct.wmi_pno_scan_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
