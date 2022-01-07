; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_wow_resume_vif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_wow_resume_vif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i64, i32, i32, %struct.ath6kl*, i32, i32, i32 }
%struct.ath6kl = type { i32, i32* }

@AP_NETWORK = common dso_local global i64 0, align 8
@NETDEV_MCAST_ALL_OFF = common dso_local global i32 0, align 4
@ATH6KL_FW_CAPABILITY_WOW_MULTICAST_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl_vif*)* @ath6kl_wow_resume_vif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_wow_resume_vif(%struct.ath6kl_vif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl_vif*, align 8
  %4 = alloca %struct.ath6kl*, align 8
  %5 = alloca i32, align 4
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %3, align 8
  %6 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %7 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %6, i32 0, i32 3
  %8 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  store %struct.ath6kl* %8, %struct.ath6kl** %4, align 8
  %9 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %10 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AP_NETWORK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %57

14:                                               ; preds = %1
  %15 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %16 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %19 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ath6kl_wmi_scanparams_cmd(i32 %17, i32 %20, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %90

26:                                               ; preds = %14
  %27 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %28 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %31 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %34 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ath6kl_wmi_listeninterval_cmd(i32 %29, i32 %32, i32 %35, i32 0)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %90

41:                                               ; preds = %26
  %42 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %43 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %46 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %49 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ath6kl_wmi_bmisstime_cmd(i32 %44, i32 %47, i32 %50, i32 0)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %90

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %1
  %58 = load i32, i32* @NETDEV_MCAST_ALL_OFF, align 4
  %59 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %60 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %59, i32 0, i32 4
  %61 = call i64 @test_bit(i32 %58, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %85, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ATH6KL_FW_CAPABILITY_WOW_MULTICAST_FILTER, align 4
  %65 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %66 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i64 @test_bit(i32 %64, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %63
  %71 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %72 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %71, i32 0, i32 3
  %73 = load %struct.ath6kl*, %struct.ath6kl** %72, align 8
  %74 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %77 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ath6kl_wmi_mcast_filter_cmd(i32 %75, i32 %78, i32 1)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %90

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84, %63, %57
  %86 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %87 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @netif_wake_queue(i32 %88)
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %85, %82, %54, %39, %24
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @ath6kl_wmi_scanparams_cmd(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ath6kl_wmi_listeninterval_cmd(i32, i32, i32, i32) #1

declare dso_local i32 @ath6kl_wmi_bmisstime_cmd(i32, i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ath6kl_wmi_mcast_filter_cmd(i32, i32, i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
