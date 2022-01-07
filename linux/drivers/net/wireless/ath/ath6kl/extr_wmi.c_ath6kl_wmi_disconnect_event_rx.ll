; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_disconnect_event_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_disconnect_event_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32, i32 }
%struct.ath6kl_vif = type { i32 }
%struct.wmi_disconnect_event = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"wmi event disconnect proto_reason %d bssid %pM wmi_reason %d assoc_resp_len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32*, i32, %struct.ath6kl_vif*)* @ath6kl_wmi_disconnect_event_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_disconnect_event_rx(%struct.wmi* %0, i32* %1, i32 %2, %struct.ath6kl_vif* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath6kl_vif*, align 8
  %10 = alloca %struct.wmi_disconnect_event*, align 8
  store %struct.wmi* %0, %struct.wmi** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ath6kl_vif* %3, %struct.ath6kl_vif** %9, align 8
  %11 = load %struct.wmi*, %struct.wmi** %6, align 8
  %12 = getelementptr inbounds %struct.wmi, %struct.wmi* %11, i32 0, i32 0
  store i32 100, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 20
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %57

19:                                               ; preds = %4
  %20 = load i32*, i32** %7, align 8
  %21 = bitcast i32* %20 to %struct.wmi_disconnect_event*
  store %struct.wmi_disconnect_event* %21, %struct.wmi_disconnect_event** %10, align 8
  %22 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %23 = load %struct.wmi_disconnect_event*, %struct.wmi_disconnect_event** %10, align 8
  %24 = getelementptr inbounds %struct.wmi_disconnect_event, %struct.wmi_disconnect_event* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = load %struct.wmi_disconnect_event*, %struct.wmi_disconnect_event** %10, align 8
  %28 = getelementptr inbounds %struct.wmi_disconnect_event, %struct.wmi_disconnect_event* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.wmi_disconnect_event*, %struct.wmi_disconnect_event** %10, align 8
  %31 = getelementptr inbounds %struct.wmi_disconnect_event, %struct.wmi_disconnect_event* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wmi_disconnect_event*, %struct.wmi_disconnect_event** %10, align 8
  %34 = getelementptr inbounds %struct.wmi_disconnect_event, %struct.wmi_disconnect_event* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ath6kl_dbg(i32 %22, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32, i32 %35)
  %37 = load %struct.wmi*, %struct.wmi** %6, align 8
  %38 = getelementptr inbounds %struct.wmi, %struct.wmi* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %40 = load %struct.wmi_disconnect_event*, %struct.wmi_disconnect_event** %10, align 8
  %41 = getelementptr inbounds %struct.wmi_disconnect_event, %struct.wmi_disconnect_event* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.wmi_disconnect_event*, %struct.wmi_disconnect_event** %10, align 8
  %44 = getelementptr inbounds %struct.wmi_disconnect_event, %struct.wmi_disconnect_event* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wmi_disconnect_event*, %struct.wmi_disconnect_event** %10, align 8
  %47 = getelementptr inbounds %struct.wmi_disconnect_event, %struct.wmi_disconnect_event* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.wmi_disconnect_event*, %struct.wmi_disconnect_event** %10, align 8
  %50 = getelementptr inbounds %struct.wmi_disconnect_event, %struct.wmi_disconnect_event* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.wmi_disconnect_event*, %struct.wmi_disconnect_event** %10, align 8
  %53 = getelementptr inbounds %struct.wmi_disconnect_event, %struct.wmi_disconnect_event* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le16_to_cpu(i32 %54)
  %56 = call i32 @ath6kl_disconnect_event(%struct.ath6kl_vif* %39, i32 %42, i32 %45, i32 %48, i32 %51, i32 %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %19, %16
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ath6kl_disconnect_event(%struct.ath6kl_vif*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
