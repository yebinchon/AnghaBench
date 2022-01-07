; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_netdevice_port_lower_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_netdevice_port_lower_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_notifier_changelowerstate_info = type { i32 }
%struct.mlxsw_sp_port = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"Failed to reflect link aggregation lower state change\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64, i8*)* @mlxsw_sp_netdevice_port_lower_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_netdevice_port_lower_event(%struct.net_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.netdev_notifier_changelowerstate_info*, align 8
  %8 = alloca %struct.mlxsw_sp_port*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %10)
  store %struct.mlxsw_sp_port* %11, %struct.mlxsw_sp_port** %8, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.netdev_notifier_changelowerstate_info*
  store %struct.netdev_notifier_changelowerstate_info* %13, %struct.netdev_notifier_changelowerstate_info** %7, align 8
  %14 = load i64, i64* %5, align 8
  switch i64 %14, label %37 [
    i64 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @netif_is_lag_port(%struct.net_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %19
  %25 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %8, align 8
  %26 = load %struct.netdev_notifier_changelowerstate_info*, %struct.netdev_notifier_changelowerstate_info** %7, align 8
  %27 = getelementptr inbounds %struct.netdev_notifier_changelowerstate_info, %struct.netdev_notifier_changelowerstate_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mlxsw_sp_port_lag_changed(%struct.mlxsw_sp_port* %25, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i32 @netdev_err(%struct.net_device* %33, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %24
  br label %36

36:                                               ; preds = %35, %19, %15
  br label %37

37:                                               ; preds = %3, %36
  ret i32 0
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_is_lag_port(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_port_lag_changed(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
