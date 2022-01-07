; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_tx_status_event_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_tx_status_event_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32, i32* }
%struct.ath6kl_vif = type { i32 }
%struct.wmi_tx_status_event = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"tx_status: id=%x ack_status=%u\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32*, i32, %struct.ath6kl_vif*)* @ath6kl_wmi_tx_status_event_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_tx_status_event_rx(%struct.wmi* %0, i32* %1, i32 %2, %struct.ath6kl_vif* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath6kl_vif*, align 8
  %10 = alloca %struct.wmi_tx_status_event*, align 8
  %11 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ath6kl_vif* %3, %struct.ath6kl_vif** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 8
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %63

18:                                               ; preds = %4
  %19 = load i32*, i32** %7, align 8
  %20 = bitcast i32* %19 to %struct.wmi_tx_status_event*
  store %struct.wmi_tx_status_event* %20, %struct.wmi_tx_status_event** %10, align 8
  %21 = load %struct.wmi_tx_status_event*, %struct.wmi_tx_status_event** %10, align 8
  %22 = getelementptr inbounds %struct.wmi_tx_status_event, %struct.wmi_tx_status_event* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.wmi_tx_status_event*, %struct.wmi_tx_status_event** %10, align 8
  %28 = getelementptr inbounds %struct.wmi_tx_status_event, %struct.wmi_tx_status_event* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ath6kl_dbg(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.wmi*, %struct.wmi** %6, align 8
  %32 = getelementptr inbounds %struct.wmi, %struct.wmi* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %62

35:                                               ; preds = %18
  %36 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %37 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %36, i32 0, i32 0
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.wmi*, %struct.wmi** %6, align 8
  %40 = getelementptr inbounds %struct.wmi, %struct.wmi* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.wmi*, %struct.wmi** %6, align 8
  %43 = getelementptr inbounds %struct.wmi, %struct.wmi* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.wmi_tx_status_event*, %struct.wmi_tx_status_event** %10, align 8
  %46 = getelementptr inbounds %struct.wmi_tx_status_event, %struct.wmi_tx_status_event* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* @GFP_ATOMIC, align 4
  %53 = call i32 @cfg80211_mgmt_tx_status(i32* %37, i32 %38, i32* %41, i32 %44, i32 %51, i32 %52)
  %54 = load %struct.wmi*, %struct.wmi** %6, align 8
  %55 = getelementptr inbounds %struct.wmi, %struct.wmi* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @kfree(i32* %56)
  %58 = load %struct.wmi*, %struct.wmi** %6, align 8
  %59 = getelementptr inbounds %struct.wmi, %struct.wmi* %58, i32 0, i32 1
  store i32* null, i32** %59, align 8
  %60 = load %struct.wmi*, %struct.wmi** %6, align 8
  %61 = getelementptr inbounds %struct.wmi, %struct.wmi* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  br label %62

62:                                               ; preds = %35, %18
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %15
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @cfg80211_mgmt_tx_status(i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
