; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_scan.c_iwl_rx_scan_complete_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_scan.c_iwl_rx_scan_complete_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, i64 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_scancomplete_notification = type { i64, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"Scan complete: %d channels (TSF 0x%08X:%08X) - %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Scan on %sGHz took %dms\0A\00", align 1
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"2.4\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"5.2\00", align 1
@jiffies = common dso_local global i64 0, align 8
@STATUS_SCAN_COMPLETE = common dso_local global i32 0, align 4
@STATUS_SCAN_HW = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IWL_BT_COEX_TRAFFIC_LOAD_HIGH = common dso_local global i32 0, align 4
@IWL_BT_COEX_TRAFFIC_LOAD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_rx_cmd_buffer*)* @iwl_rx_scan_complete_notif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_rx_scan_complete_notif(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_scancomplete_notification*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %7 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %8 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %7)
  store %struct.iwl_rx_packet* %8, %struct.iwl_rx_packet** %5, align 8
  %9 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.iwl_scancomplete_notification*
  store %struct.iwl_scancomplete_notification* %13, %struct.iwl_scancomplete_notification** %6, align 8
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %15 = load %struct.iwl_scancomplete_notification*, %struct.iwl_scancomplete_notification** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_scancomplete_notification, %struct.iwl_scancomplete_notification* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.iwl_scancomplete_notification*, %struct.iwl_scancomplete_notification** %6, align 8
  %21 = getelementptr inbounds %struct.iwl_scancomplete_notification, %struct.iwl_scancomplete_notification* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.iwl_scancomplete_notification*, %struct.iwl_scancomplete_notification** %6, align 8
  %24 = getelementptr inbounds %struct.iwl_scancomplete_notification, %struct.iwl_scancomplete_notification* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iwl_scancomplete_notification*, %struct.iwl_scancomplete_notification** %6, align 8
  %27 = getelementptr inbounds %struct.iwl_scancomplete_notification, %struct.iwl_scancomplete_notification* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (%struct.iwl_priv*, i8*, i8*, i32, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %14, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %32 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %38 = load i64, i64* @jiffies, align 8
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %40 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %39, i32 0, i32 9
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = call i32 @jiffies_to_msecs(i64 %42)
  %44 = call i32 (%struct.iwl_priv*, i8*, i8*, i32, ...) @IWL_DEBUG_SCAN(%struct.iwl_priv* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %43)
  %45 = load i32, i32* @STATUS_SCAN_COMPLETE, align 4
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %47 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %46, i32 0, i32 8
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  %49 = load i32, i32* @STATUS_SCAN_HW, align 4
  %50 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %51 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %50, i32 0, i32 8
  %52 = call i32 @clear_bit(i32 %49, i32* %51)
  %53 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %54 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %57 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %56, i32 0, i32 7
  %58 = call i32 @queue_work(i32 %55, i32* %57)
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %60 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %107

64:                                               ; preds = %2
  %65 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %66 = call i64 @iwl_advanced_bt_coexist(%struct.iwl_priv* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %107

68:                                               ; preds = %64
  %69 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %70 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.iwl_scancomplete_notification*, %struct.iwl_scancomplete_notification** %6, align 8
  %73 = getelementptr inbounds %struct.iwl_scancomplete_notification, %struct.iwl_scancomplete_notification* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %107

76:                                               ; preds = %68
  %77 = load %struct.iwl_scancomplete_notification*, %struct.iwl_scancomplete_notification** %6, align 8
  %78 = getelementptr inbounds %struct.iwl_scancomplete_notification, %struct.iwl_scancomplete_notification* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %76
  %82 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %83 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @IWL_BT_COEX_TRAFFIC_LOAD_HIGH, align 4
  %88 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %89 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %81
  br label %95

91:                                               ; preds = %76
  %92 = load i32, i32* @IWL_BT_COEX_TRAFFIC_LOAD_NONE, align 4
  %93 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %94 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  br label %95

95:                                               ; preds = %91, %90
  %96 = load %struct.iwl_scancomplete_notification*, %struct.iwl_scancomplete_notification** %6, align 8
  %97 = getelementptr inbounds %struct.iwl_scancomplete_notification, %struct.iwl_scancomplete_notification* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %100 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  %101 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %102 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %105 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %104, i32 0, i32 3
  %106 = call i32 @queue_work(i32 %103, i32* %105)
  br label %107

107:                                              ; preds = %95, %68, %64, %2
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_priv*, i8*, i8*, i32, ...) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @iwl_advanced_bt_coexist(%struct.iwl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
