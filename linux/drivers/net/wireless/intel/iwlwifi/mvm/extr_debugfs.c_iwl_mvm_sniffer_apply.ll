; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_mvm_sniffer_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_mvm_sniffer_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_notif_wait_data = type { i32 }
%struct.iwl_rx_packet = type { i32 }
%struct.iwl_mvm_sniffer_apply = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_notif_wait_data*, %struct.iwl_rx_packet*, i8*)* @iwl_mvm_sniffer_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_sniffer_apply(%struct.iwl_notif_wait_data* %0, %struct.iwl_rx_packet* %1, i8* %2) #0 {
  %4 = alloca %struct.iwl_notif_wait_data*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iwl_mvm_sniffer_apply*, align 8
  store %struct.iwl_notif_wait_data* %0, %struct.iwl_notif_wait_data** %4, align 8
  store %struct.iwl_rx_packet* %1, %struct.iwl_rx_packet** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.iwl_mvm_sniffer_apply*
  store %struct.iwl_mvm_sniffer_apply* %9, %struct.iwl_mvm_sniffer_apply** %7, align 8
  %10 = load %struct.iwl_mvm_sniffer_apply*, %struct.iwl_mvm_sniffer_apply** %7, align 8
  %11 = getelementptr inbounds %struct.iwl_mvm_sniffer_apply, %struct.iwl_mvm_sniffer_apply* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @cpu_to_le16(i32 %12)
  %14 = load %struct.iwl_mvm_sniffer_apply*, %struct.iwl_mvm_sniffer_apply** %7, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm_sniffer_apply, %struct.iwl_mvm_sniffer_apply* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %13, i32* %17, align 4
  %18 = load %struct.iwl_mvm_sniffer_apply*, %struct.iwl_mvm_sniffer_apply** %7, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_sniffer_apply, %struct.iwl_mvm_sniffer_apply* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iwl_mvm_sniffer_apply*, %struct.iwl_mvm_sniffer_apply** %7, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm_sniffer_apply, %struct.iwl_mvm_sniffer_apply* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @memcpy(i32 %22, i32 %25, i32 4)
  ret i32 1
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
