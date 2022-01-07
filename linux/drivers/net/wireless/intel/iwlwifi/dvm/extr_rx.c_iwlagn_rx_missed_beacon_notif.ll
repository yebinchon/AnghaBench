; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_rx_missed_beacon_notif.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rx.c_iwlagn_rx_missed_beacon_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_missed_beacon_notif = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"missed bcn cnsq %d totl %d rcd %d expctd %d\0A\00", align 1
@STATUS_SCANNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_rx_cmd_buffer*)* @iwlagn_rx_missed_beacon_notif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_rx_missed_beacon_notif(%struct.iwl_priv* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_missed_beacon_notif*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %7 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %8 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %7)
  store %struct.iwl_rx_packet* %8, %struct.iwl_rx_packet** %5, align 8
  %9 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct.iwl_missed_beacon_notif*
  store %struct.iwl_missed_beacon_notif* %13, %struct.iwl_missed_beacon_notif** %6, align 8
  %14 = load %struct.iwl_missed_beacon_notif*, %struct.iwl_missed_beacon_notif** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_missed_beacon_notif, %struct.iwl_missed_beacon_notif* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @le32_to_cpu(i32 %16)
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %50

22:                                               ; preds = %2
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %24 = load %struct.iwl_missed_beacon_notif*, %struct.iwl_missed_beacon_notif** %6, align 8
  %25 = getelementptr inbounds %struct.iwl_missed_beacon_notif, %struct.iwl_missed_beacon_notif* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le32_to_cpu(i32 %26)
  %28 = load %struct.iwl_missed_beacon_notif*, %struct.iwl_missed_beacon_notif** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_missed_beacon_notif, %struct.iwl_missed_beacon_notif* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le32_to_cpu(i32 %30)
  %32 = load %struct.iwl_missed_beacon_notif*, %struct.iwl_missed_beacon_notif** %6, align 8
  %33 = getelementptr inbounds %struct.iwl_missed_beacon_notif, %struct.iwl_missed_beacon_notif* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le32_to_cpu(i32 %34)
  %36 = load %struct.iwl_missed_beacon_notif*, %struct.iwl_missed_beacon_notif** %6, align 8
  %37 = getelementptr inbounds %struct.iwl_missed_beacon_notif, %struct.iwl_missed_beacon_notif* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le32_to_cpu(i32 %38)
  %40 = call i32 @IWL_DEBUG_CALIB(%struct.iwl_priv* %23, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %27, i64 %31, i64 %35, i64 %39)
  %41 = load i32, i32* @STATUS_SCANNING, align 4
  %42 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %43 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %42, i32 0, i32 1
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %22
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %48 = call i32 @iwl_init_sensitivity(%struct.iwl_priv* %47)
  br label %49

49:                                               ; preds = %46, %22
  br label %50

50:                                               ; preds = %49, %2
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @IWL_DEBUG_CALIB(%struct.iwl_priv*, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_init_sensitivity(%struct.iwl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
