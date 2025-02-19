; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_txe_notify_event_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_txe_notify_event_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i32 }
%struct.ath6kl_vif = type { i64, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wmi_txe_notify_event = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@INFRA_NETWORK = common dso_local global i64 0, align 8
@ATH6KL_FW_CAPABILITY_TX_ERR_NOTIFY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SME_CONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@ATH6KL_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"TXE notify event: peer %pM rate %d%% pkts %d intvl %ds\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wmi*, i32*, i32, %struct.ath6kl_vif*)* @ath6kl_wmi_txe_notify_event_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wmi_txe_notify_event_rx(%struct.wmi* %0, i32* %1, i32 %2, %struct.ath6kl_vif* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wmi*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ath6kl_vif*, align 8
  %10 = alloca %struct.wmi_txe_notify_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ath6kl_vif* %3, %struct.ath6kl_vif** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 8
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %80

19:                                               ; preds = %4
  %20 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %21 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @INFRA_NETWORK, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @ATH6KL_FW_CAPABILITY_TX_ERR_NOTIFY, align 4
  %27 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %28 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %27, i32 0, i32 5
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @test_bit(i32 %26, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25, %19
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %80

37:                                               ; preds = %25
  %38 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %39 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SME_CONNECTED, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @ENOTCONN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %80

46:                                               ; preds = %37
  %47 = load i32*, i32** %7, align 8
  %48 = bitcast i32* %47 to %struct.wmi_txe_notify_event*
  store %struct.wmi_txe_notify_event* %48, %struct.wmi_txe_notify_event** %10, align 8
  %49 = load %struct.wmi_txe_notify_event*, %struct.wmi_txe_notify_event** %10, align 8
  %50 = getelementptr inbounds %struct.wmi_txe_notify_event, %struct.wmi_txe_notify_event* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le32_to_cpu(i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.wmi_txe_notify_event*, %struct.wmi_txe_notify_event** %10, align 8
  %54 = getelementptr inbounds %struct.wmi_txe_notify_event, %struct.wmi_txe_notify_event* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* @ATH6KL_DBG_WMI, align 4
  %58 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %59 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %64 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ath6kl_dbg(i32 %57, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32 %62, i32 %65)
  %67 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %68 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %71 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %9, align 8
  %76 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32 @cfg80211_cqm_txe_notify(i32 %69, i32 %72, i32 %73, i32 %74, i32 %77, i32 %78)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %46, %43, %34, %16
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cfg80211_cqm_txe_notify(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
