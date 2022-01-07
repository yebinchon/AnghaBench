; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_wlan_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_wlan_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_qmi_wlan_enable_cfg = type { i32 }

@ATH10K_DBG_QMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"qmi mode %d config %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to send qmi config: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to send qmi mode: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_qmi_wlan_enable(%struct.ath10k* %0, %struct.ath10k_qmi_wlan_enable_cfg* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.ath10k_qmi_wlan_enable_cfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %6, align 8
  store %struct.ath10k_qmi_wlan_enable_cfg* %1, %struct.ath10k_qmi_wlan_enable_cfg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %12 = load i32, i32* @ATH10K_DBG_QMI, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.ath10k_qmi_wlan_enable_cfg*, %struct.ath10k_qmi_wlan_enable_cfg** %7, align 8
  %15 = call i32 @ath10k_dbg(%struct.ath10k* %11, i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13, %struct.ath10k_qmi_wlan_enable_cfg* %14)
  %16 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %17 = load %struct.ath10k_qmi_wlan_enable_cfg*, %struct.ath10k_qmi_wlan_enable_cfg** %7, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @ath10k_qmi_cfg_send_sync_msg(%struct.ath10k* %16, %struct.ath10k_qmi_wlan_enable_cfg* %17, i8* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @ath10k_err(%struct.ath10k* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %39

27:                                               ; preds = %4
  %28 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @ath10k_qmi_mode_send_sync_msg(%struct.ath10k* %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @ath10k_err(%struct.ath10k* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %5, align 4
  br label %39

38:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %33, %22
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, %struct.ath10k_qmi_wlan_enable_cfg*) #1

declare dso_local i32 @ath10k_qmi_cfg_send_sync_msg(%struct.ath10k*, %struct.ath10k_qmi_wlan_enable_cfg*, i8*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_qmi_mode_send_sync_msg(%struct.ath10k*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
