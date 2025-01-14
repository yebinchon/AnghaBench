; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_watchdog_link_is_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_watchdog_link_is_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.TYPE_2__*, i64, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"NIC Link is Down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_adapter*)* @ixgbevf_watchdog_link_is_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_watchdog_link_is_down(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %4 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %4, i32 0, i32 2
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @netif_carrier_ok(%struct.net_device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @dev_info(i32* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i32 @netif_carrier_off(%struct.net_device* %19)
  br label %21

21:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
