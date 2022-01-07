; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_scan.c_iwl_rx_scan_start_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_scan.c_iwl_rx_scan_start_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_scanstart_notification = type { i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [69 x i8] c"Scan start: %d [802.11%s] (TSF: 0x%08X:%08X) - %d (beacon timer %u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"bg\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_rx_cmd_buffer*)* @iwl_rx_scan_start_notif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_rx_scan_start_notif(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_scanstart_notification*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %7 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %8 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %7)
  store %struct.iwl_rx_packet* %8, %struct.iwl_rx_packet** %5, align 8
  %9 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.iwl_scanstart_notification*
  store %struct.iwl_scanstart_notification* %13, %struct.iwl_scanstart_notification** %6, align 8
  %14 = load %struct.iwl_scanstart_notification*, %struct.iwl_scanstart_notification** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_scanstart_notification, %struct.iwl_scanstart_notification* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @le32_to_cpu(i32 %16)
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %21 = load %struct.iwl_scanstart_notification*, %struct.iwl_scanstart_notification** %6, align 8
  %22 = getelementptr inbounds %struct.iwl_scanstart_notification, %struct.iwl_scanstart_notification* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.iwl_scanstart_notification*, %struct.iwl_scanstart_notification** %6, align 8
  %25 = getelementptr inbounds %struct.iwl_scanstart_notification, %struct.iwl_scanstart_notification* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %30 = load %struct.iwl_scanstart_notification*, %struct.iwl_scanstart_notification** %6, align 8
  %31 = getelementptr inbounds %struct.iwl_scanstart_notification, %struct.iwl_scanstart_notification* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = load %struct.iwl_scanstart_notification*, %struct.iwl_scanstart_notification** %6, align 8
  %35 = getelementptr inbounds %struct.iwl_scanstart_notification, %struct.iwl_scanstart_notification* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @le32_to_cpu(i32 %36)
  %38 = load %struct.iwl_scanstart_notification*, %struct.iwl_scanstart_notification** %6, align 8
  %39 = getelementptr inbounds %struct.iwl_scanstart_notification, %struct.iwl_scanstart_notification* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iwl_scanstart_notification*, %struct.iwl_scanstart_notification** %6, align 8
  %42 = getelementptr inbounds %struct.iwl_scanstart_notification, %struct.iwl_scanstart_notification* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @IWL_DEBUG_SCAN(%struct.iwl_priv* %20, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %23, i8* %29, i32 %33, i32 %37, i32 %40, i32 %43)
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_priv*, i8*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
