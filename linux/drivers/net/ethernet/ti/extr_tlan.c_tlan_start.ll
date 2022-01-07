; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@TLAN_IGNORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tlan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_start(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = call i32 @tlan_reset_lists(%struct.net_device* %3)
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = load i32, i32* @TLAN_IGNORE, align 4
  %7 = call i32 @tlan_read_and_clear_stats(%struct.net_device* %5, i32 %6)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @tlan_reset_adapter(%struct.net_device* %8)
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @netif_wake_queue(%struct.net_device* %10)
  ret void
}

declare dso_local i32 @tlan_reset_lists(%struct.net_device*) #1

declare dso_local i32 @tlan_read_and_clear_stats(%struct.net_device*, i32) #1

declare dso_local i32 @tlan_reset_adapter(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
