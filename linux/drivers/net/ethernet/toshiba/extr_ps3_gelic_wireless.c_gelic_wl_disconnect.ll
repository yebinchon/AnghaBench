; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_wireless.c_gelic_wl_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_wireless.c_gelic_wl_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gelic_port = type { i32 }
%struct.gelic_wl_info = type { i64, i32 }
%struct.gelic_eurus_cmd = type { i32 }

@GELIC_WL_SCAN_STAT_SCANNING = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@GELIC_EURUS_CMD_DISASSOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @gelic_wl_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gelic_wl_disconnect(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gelic_port*, align 8
  %4 = alloca %struct.gelic_wl_info*, align 8
  %5 = alloca %struct.gelic_eurus_cmd*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.gelic_port* @netdev_priv(%struct.net_device* %6)
  store %struct.gelic_port* %7, %struct.gelic_port** %3, align 8
  %8 = load %struct.gelic_port*, %struct.gelic_port** %3, align 8
  %9 = call %struct.gelic_wl_info* @port_wl(%struct.gelic_port* %8)
  store %struct.gelic_wl_info* %9, %struct.gelic_wl_info** %4, align 8
  %10 = load %struct.gelic_wl_info*, %struct.gelic_wl_info** %4, align 8
  %11 = getelementptr inbounds %struct.gelic_wl_info, %struct.gelic_wl_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @GELIC_WL_SCAN_STAT_SCANNING, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.gelic_wl_info*, %struct.gelic_wl_info** %4, align 8
  %17 = getelementptr inbounds %struct.gelic_wl_info, %struct.gelic_wl_info* %16, i32 0, i32 1
  %18 = load i32, i32* @HZ, align 4
  %19 = call i32 @wait_for_completion_timeout(i32* %17, i32 %18)
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.gelic_wl_info*, %struct.gelic_wl_info** %4, align 8
  %22 = load i32, i32* @GELIC_EURUS_CMD_DISASSOC, align 4
  %23 = call %struct.gelic_eurus_cmd* @gelic_eurus_sync_cmd(%struct.gelic_wl_info* %21, i32 %22, i32* null, i32 0)
  store %struct.gelic_eurus_cmd* %23, %struct.gelic_eurus_cmd** %5, align 8
  %24 = load %struct.gelic_eurus_cmd*, %struct.gelic_eurus_cmd** %5, align 8
  %25 = call i32 @kfree(%struct.gelic_eurus_cmd* %24)
  %26 = load %struct.gelic_wl_info*, %struct.gelic_wl_info** %4, align 8
  %27 = call i32 @gelic_wl_send_iwap_event(%struct.gelic_wl_info* %26, i32* null)
  ret void
}

declare dso_local %struct.gelic_port* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.gelic_wl_info* @port_wl(%struct.gelic_port*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local %struct.gelic_eurus_cmd* @gelic_eurus_sync_cmd(%struct.gelic_wl_info*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.gelic_eurus_cmd*) #1

declare dso_local i32 @gelic_wl_send_iwap_event(%struct.gelic_wl_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
