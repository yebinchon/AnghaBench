; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rocker_port = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"MTU change from %d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @rocker_port_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_port_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rocker_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.rocker_port* @netdev_priv(%struct.net_device* %9)
  store %struct.rocker_port* %10, %struct.rocker_port** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call i32 @netif_running(%struct.net_device* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @rocker_port_stop(%struct.net_device* %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @netdev_info(%struct.net_device* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rocker_port*, %struct.rocker_port** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @rocker_cmd_set_port_settings_mtu(%struct.rocker_port* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %43

35:                                               ; preds = %18
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = call i32 @rocker_port_open(%struct.net_device* %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %33
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.rocker_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @rocker_port_stop(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @rocker_cmd_set_port_settings_mtu(%struct.rocker_port*, i32) #1

declare dso_local i32 @rocker_port_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
