; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_connect_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_connect_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i64, i32, i32, i64, %struct.TYPE_2__*, i32, i32, i32, i32, i32, %struct.ath6kl* }
%struct.TYPE_2__ = type { i32 }
%struct.ath6kl = type { i32, i32, i32, i64, i32, i64 }

@INFRA_NETWORK = common dso_local global i64 0, align 8
@CONNECTED = common dso_local global i32 0, align 4
@CONNECT_PEND = common dso_local global i32 0, align 4
@ADHOC_NETWORK = common dso_local global i64 0, align 8
@ENDPOINT_2 = common dso_local global i32 0, align 4
@CLEAR_BSSFILTER_ON_BEACON = common dso_local global i32 0, align 4
@CURRENT_BSS_FILTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_connect_event(%struct.ath6kl_vif* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca %struct.ath6kl_vif*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca %struct.ath6kl*, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32* %2, i32** %13, align 8
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32* %9, i32** %20, align 8
  %22 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %23 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %22, i32 0, i32 10
  %24 = load %struct.ath6kl*, %struct.ath6kl** %23, align 8
  store %struct.ath6kl* %24, %struct.ath6kl** %21, align 8
  %25 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* %17, align 4
  %32 = load i32, i32* %18, align 4
  %33 = load i32, i32* %19, align 4
  %34 = load i32*, i32** %20, align 8
  %35 = call i32 @ath6kl_cfg80211_connect_event(%struct.ath6kl_vif* %25, i32 %26, i32* %27, i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 %33, i32* %34)
  %36 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %37 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @memcpy(i32 %38, i32* %39, i32 4)
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %43 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %45 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @INFRA_NETWORK, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %10
  %50 = load %struct.ath6kl*, %struct.ath6kl** %21, align 8
  %51 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %54 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %57 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @ath6kl_wmi_listeninterval_cmd(i32 %52, i32 %55, i32 %58, i32 0)
  %60 = load %struct.ath6kl*, %struct.ath6kl** %21, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @ath6kl_check_ch_switch(%struct.ath6kl* %60, i32 %61)
  br label %63

63:                                               ; preds = %49, %10
  %64 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %65 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @netif_wake_queue(i32 %66)
  %68 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %69 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %68, i32 0, i32 5
  %70 = call i32 @spin_lock_bh(i32* %69)
  %71 = load i32, i32* @CONNECTED, align 4
  %72 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %73 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %72, i32 0, i32 2
  %74 = call i32 @set_bit(i32 %71, i32* %73)
  %75 = load i32, i32* @CONNECT_PEND, align 4
  %76 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %77 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %76, i32 0, i32 2
  %78 = call i32 @clear_bit(i32 %75, i32* %77)
  %79 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %80 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @netif_carrier_on(i32 %81)
  %83 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %84 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %83, i32 0, i32 5
  %85 = call i32 @spin_unlock_bh(i32* %84)
  %86 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %87 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %86, i32 0, i32 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @aggr_reset_state(i32 %90)
  %92 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %93 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %92, i32 0, i32 3
  store i64 0, i64* %93, align 8
  %94 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %95 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ADHOC_NETWORK, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %114

99:                                               ; preds = %63
  %100 = load %struct.ath6kl*, %struct.ath6kl** %21, align 8
  %101 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load %struct.ath6kl*, %struct.ath6kl** %21, align 8
  %106 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @memset(i32 %107, i32 0, i32 4)
  %109 = load %struct.ath6kl*, %struct.ath6kl** %21, align 8
  %110 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %109, i32 0, i32 3
  store i64 0, i64* %110, align 8
  %111 = load i32, i32* @ENDPOINT_2, align 4
  %112 = load %struct.ath6kl*, %struct.ath6kl** %21, align 8
  %113 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %104, %99, %63
  %115 = load %struct.ath6kl*, %struct.ath6kl** %21, align 8
  %116 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %132, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* @CLEAR_BSSFILTER_ON_BEACON, align 4
  %121 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %122 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %121, i32 0, i32 2
  %123 = call i32 @set_bit(i32 %120, i32* %122)
  %124 = load %struct.ath6kl*, %struct.ath6kl** %21, align 8
  %125 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %11, align 8
  %128 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @CURRENT_BSS_FILTER, align 4
  %131 = call i32 @ath6kl_wmi_bssfilter_cmd(i32 %126, i32 %129, i32 %130, i32 0)
  br label %132

132:                                              ; preds = %119, %114
  ret void
}

declare dso_local i32 @ath6kl_cfg80211_connect_event(%struct.ath6kl_vif*, i32, i32*, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ath6kl_wmi_listeninterval_cmd(i32, i32, i32, i32) #1

declare dso_local i32 @ath6kl_check_ch_switch(%struct.ath6kl*, i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @aggr_reset_state(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ath6kl_wmi_bssfilter_cmd(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
