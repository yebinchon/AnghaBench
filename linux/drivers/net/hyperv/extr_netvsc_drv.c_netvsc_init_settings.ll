; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_init_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_init_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_device_context = type { i32, i32, i32 }

@HV_DEFAULT_L4HASH = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @netvsc_init_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netvsc_init_settings(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device_context*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %4)
  store %struct.net_device_context* %5, %struct.net_device_context** %3, align 8
  %6 = load i32, i32* @HV_DEFAULT_L4HASH, align 4
  %7 = load %struct.net_device_context*, %struct.net_device_context** %3, align 8
  %8 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @SPEED_UNKNOWN, align 4
  %10 = load %struct.net_device_context*, %struct.net_device_context** %3, align 8
  %11 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @DUPLEX_FULL, align 4
  %13 = load %struct.net_device_context*, %struct.net_device_context** %3, align 8
  %14 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @NETIF_F_LRO, align 4
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  ret void
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
