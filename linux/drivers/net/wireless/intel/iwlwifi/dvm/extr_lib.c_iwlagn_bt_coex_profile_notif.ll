; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_lib.c_iwlagn_bt_coex_profile_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_lib.c_iwlagn_bt_coex_profile_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_bt_coex_profile_notif = type { i64, i64, i64, %struct.iwl_bt_uart_msg }
%struct.iwl_bt_uart_msg = type { i32 }

@IWLAGN_BT_FLAG_COEX_MODE_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"BT Coex notification:\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"    status: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"    traffic load: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"    CI compliance: %d\0A\00", align 1
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@IWL_BT_COEX_TRAFFIC_LOAD_HIGH = common dso_local global i64 0, align 8
@IWL_BT_COEX_TRAFFIC_LOAD_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_rx_cmd_buffer*)* @iwlagn_bt_coex_profile_notif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_bt_coex_profile_notif(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_bt_coex_profile_notif*, align 8
  %7 = alloca %struct.iwl_bt_uart_msg*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %8 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %9 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %8)
  store %struct.iwl_rx_packet* %9, %struct.iwl_rx_packet** %5, align 8
  %10 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.iwl_bt_coex_profile_notif*
  store %struct.iwl_bt_coex_profile_notif* %14, %struct.iwl_bt_coex_profile_notif** %6, align 8
  %15 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %15, i32 0, i32 3
  store %struct.iwl_bt_uart_msg* %16, %struct.iwl_bt_uart_msg** %7, align 8
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %18 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IWLAGN_BT_FLAG_COEX_MODE_DISABLED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %135

23:                                               ; preds = %2
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %25 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_COEX(%struct.iwl_priv* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %27 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %6, align 8
  %28 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_COEX(%struct.iwl_priv* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %32 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %6, align 8
  %33 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_COEX(%struct.iwl_priv* %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %34)
  %36 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %37 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %6, align 8
  %38 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_COEX(%struct.iwl_priv* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %39)
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %42 = load %struct.iwl_bt_uart_msg*, %struct.iwl_bt_uart_msg** %7, align 8
  %43 = call i32 @iwlagn_print_uartmsg(%struct.iwl_priv* %41, %struct.iwl_bt_uart_msg* %42)
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %45 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %48 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.iwl_bt_uart_msg*, %struct.iwl_bt_uart_msg** %7, align 8
  %50 = call i32 @iwlagn_bt_traffic_is_sco(%struct.iwl_bt_uart_msg* %49)
  %51 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %52 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %51, i32 0, i32 10
  store i32 %50, i32* %52, align 8
  %53 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %54 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %112

58:                                               ; preds = %23
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %60 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %6, align 8
  %63 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %58
  %67 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %68 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %6, align 8
  %71 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %111

74:                                               ; preds = %66, %58
  %75 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %6, align 8
  %76 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %74
  %80 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %81 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %80, i32 0, i32 9
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = load i64, i64* @IWL_BT_COEX_TRAFFIC_LOAD_HIGH, align 8
  %86 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %87 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  br label %94

88:                                               ; preds = %79
  %89 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %6, align 8
  %90 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %93 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %88, %84
  br label %99

95:                                               ; preds = %74
  %96 = load i64, i64* @IWL_BT_COEX_TRAFFIC_LOAD_NONE, align 8
  %97 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %98 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  br label %99

99:                                               ; preds = %95, %94
  %100 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %6, align 8
  %101 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %104 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %103, i32 0, i32 4
  store i64 %102, i64* %104, align 8
  %105 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %106 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %109 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %108, i32 0, i32 8
  %110 = call i32 @queue_work(i32 %107, i32* %109)
  br label %111

111:                                              ; preds = %99, %66
  br label %112

112:                                              ; preds = %111, %23
  %113 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %114 = load %struct.iwl_bt_uart_msg*, %struct.iwl_bt_uart_msg** %7, align 8
  %115 = call i64 @iwlagn_fill_txpower_mode(%struct.iwl_priv* %113, %struct.iwl_bt_uart_msg* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %112
  %118 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %119 = load %struct.iwl_bt_uart_msg*, %struct.iwl_bt_uart_msg** %7, align 8
  %120 = call i64 @iwlagn_set_kill_msk(%struct.iwl_priv* %118, %struct.iwl_bt_uart_msg* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %117, %112
  %123 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %124 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %127 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %126, i32 0, i32 6
  %128 = call i32 @queue_work(i32 %125, i32* %127)
  br label %129

129:                                              ; preds = %122, %117
  %130 = load %struct.iwl_bt_coex_profile_notif*, %struct.iwl_bt_coex_profile_notif** %6, align 8
  %131 = getelementptr inbounds %struct.iwl_bt_coex_profile_notif, %struct.iwl_bt_coex_profile_notif* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %134 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %133, i32 0, i32 5
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %129, %22
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @IWL_DEBUG_COEX(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @iwlagn_print_uartmsg(%struct.iwl_priv*, %struct.iwl_bt_uart_msg*) #1

declare dso_local i32 @iwlagn_bt_traffic_is_sco(%struct.iwl_bt_uart_msg*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @iwlagn_fill_txpower_mode(%struct.iwl_priv*, %struct.iwl_bt_uart_msg*) #1

declare dso_local i64 @iwlagn_set_kill_msk(%struct.iwl_priv*, %struct.iwl_bt_uart_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
