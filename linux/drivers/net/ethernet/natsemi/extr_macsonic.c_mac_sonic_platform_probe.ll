; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_macsonic.c_mac_sonic_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_macsonic.c_mac_sonic_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.sonic_local = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mac_sonic_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_sonic_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sonic_local*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = call %struct.net_device* @alloc_etherdev(i32 8)
  store %struct.net_device* %7, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.sonic_local* @netdev_priv(%struct.net_device* %14)
  store %struct.sonic_local* %15, %struct.sonic_local** %5, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load %struct.sonic_local*, %struct.sonic_local** %5, align 8
  %19 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @SET_NETDEV_DEV(%struct.net_device* %20, i32* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.net_device* %25)
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i32 @mac_onboard_sonic_probe(%struct.net_device* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %13
  br label %41

32:                                               ; preds = %13
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i32 @sonic_msg_init(%struct.net_device* %33)
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i32 @register_netdev(%struct.net_device* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %41

40:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %45

41:                                               ; preds = %39, %31
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = call i32 @free_netdev(%struct.net_device* %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %40, %10
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.sonic_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @mac_onboard_sonic_probe(%struct.net_device*) #1

declare dso_local i32 @sonic_msg_init(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
