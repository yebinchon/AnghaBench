; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_wait_init_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_wait_init_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_notif_wait_data = type { i32 }
%struct.iwl_rx_packet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@INIT_COMPLETE_NOTIF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_notif_wait_data*, %struct.iwl_rx_packet*, i8*)* @iwl_wait_init_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_wait_init_complete(%struct.iwl_notif_wait_data* %0, %struct.iwl_rx_packet* %1, i8* %2) #0 {
  %4 = alloca %struct.iwl_notif_wait_data*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca i8*, align 8
  store %struct.iwl_notif_wait_data* %0, %struct.iwl_notif_wait_data** %4, align 8
  store %struct.iwl_rx_packet* %1, %struct.iwl_rx_packet** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %8 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @INIT_COMPLETE_NOTIF, align 8
  %12 = icmp ne i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  ret i32 1
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
