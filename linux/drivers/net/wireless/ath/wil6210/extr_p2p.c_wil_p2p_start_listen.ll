; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_p2p.c_wil_p2p_start_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_p2p.c_wil_p2p_start_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { %struct.wil_p2p_info }
%struct.wil_p2p_info = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.wil6210_priv = type { i32 }

@P2P_DEFAULT_BI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"wmi_p2p_cfg failed\0A\00", align 1
@P2P_WILDCARD_SSID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"wmi_set_ssid failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"wmi_start_listen failed\0A\00", align 1
@wil_p2p_listen_expired = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_vif*)* @wil_p2p_start_listen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_p2p_start_listen(%struct.wil6210_vif* %0) #0 {
  %2 = alloca %struct.wil6210_vif*, align 8
  %3 = alloca %struct.wil6210_priv*, align 8
  %4 = alloca %struct.wil_p2p_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %2, align 8
  %7 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %8 = call %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif* %7)
  store %struct.wil6210_priv* %8, %struct.wil6210_priv** %3, align 8
  %9 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %10 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %9, i32 0, i32 0
  store %struct.wil_p2p_info* %10, %struct.wil_p2p_info** %4, align 8
  %11 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %4, align 8
  %12 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %16 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %15, i32 0, i32 0
  %17 = call i32 @lockdep_assert_held(i32* %16)
  %18 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @P2P_DEFAULT_BI, align 4
  %21 = call i32 @wmi_p2p_cfg(%struct.wil6210_vif* %18, i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %26 = call i32 @wil_err(%struct.wil6210_priv* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %67

27:                                               ; preds = %1
  %28 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %29 = load i32, i32* @P2P_WILDCARD_SSID, align 4
  %30 = call i32 @strlen(i32 %29)
  %31 = load i32, i32* @P2P_WILDCARD_SSID, align 4
  %32 = call i32 @wmi_set_ssid(%struct.wil6210_vif* %28, i32 %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %37 = call i32 @wil_err(%struct.wil6210_priv* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %60

38:                                               ; preds = %27
  %39 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %40 = call i32 @wmi_start_listen(%struct.wil6210_vif* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %45 = call i32 @wil_err(%struct.wil6210_priv* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %60

46:                                               ; preds = %38
  %47 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %4, align 8
  %48 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %47, i32 0, i32 2
  %49 = load i32, i32* @wil_p2p_listen_expired, align 4
  %50 = call i32 @INIT_WORK(i32* %48, i32 %49)
  %51 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %4, align 8
  %52 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %51, i32 0, i32 1
  %53 = load i64, i64* @jiffies, align 8
  %54 = load %struct.wil_p2p_info*, %struct.wil_p2p_info** %4, align 8
  %55 = getelementptr inbounds %struct.wil_p2p_info, %struct.wil_p2p_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @msecs_to_jiffies(i32 %56)
  %58 = add nsw i64 %53, %57
  %59 = call i32 @mod_timer(i32* %52, i64 %58)
  br label %60

60:                                               ; preds = %46, %43, %35
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %65 = call i32 @wmi_stop_discovery(%struct.wil6210_vif* %64)
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %66, %24
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.wil6210_priv* @vif_to_wil(%struct.wil6210_vif*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @wmi_p2p_cfg(%struct.wil6210_vif*, i32, i32) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @wmi_set_ssid(%struct.wil6210_vif*, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @wmi_start_listen(%struct.wil6210_vif*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @wmi_stop_discovery(%struct.wil6210_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
