; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_config.c_rmnet_unregister_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_config.c_rmnet_unregister_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rmnet_port = type { i64, %struct.net_device*, i32 }

@RMNET_EPMODE_BRIDGE = common dso_local global i64 0, align 8
@RMNET_EPMODE_VND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rmnet_port*)* @rmnet_unregister_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmnet_unregister_bridge(%struct.net_device* %0, %struct.rmnet_port* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rmnet_port*, align 8
  %5 = alloca %struct.rmnet_port*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.rmnet_port* %1, %struct.rmnet_port** %4, align 8
  %7 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %8 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @RMNET_EPMODE_BRIDGE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %38

13:                                               ; preds = %2
  %14 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %15 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %13
  %19 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %20 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %19, i32 0, i32 1
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %6, align 8
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = call %struct.rmnet_port* @rmnet_get_port_rtnl(%struct.net_device* %22)
  store %struct.rmnet_port* %23, %struct.rmnet_port** %5, align 8
  %24 = load %struct.rmnet_port*, %struct.rmnet_port** %5, align 8
  %25 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %24, i32 0, i32 1
  store %struct.net_device* null, %struct.net_device** %25, align 8
  %26 = load i64, i64* @RMNET_EPMODE_VND, align 8
  %27 = load %struct.rmnet_port*, %struct.rmnet_port** %5, align 8
  %28 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %38

29:                                               ; preds = %13
  %30 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %31 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %30, i32 0, i32 1
  %32 = load %struct.net_device*, %struct.net_device** %31, align 8
  store %struct.net_device* %32, %struct.net_device** %6, align 8
  %33 = load %struct.net_device*, %struct.net_device** %6, align 8
  %34 = call %struct.rmnet_port* @rmnet_get_port_rtnl(%struct.net_device* %33)
  store %struct.rmnet_port* %34, %struct.rmnet_port** %5, align 8
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = load %struct.rmnet_port*, %struct.rmnet_port** %5, align 8
  %37 = call i32 @rmnet_unregister_real_device(%struct.net_device* %35, %struct.rmnet_port* %36)
  br label %38

38:                                               ; preds = %12, %29, %18
  ret void
}

declare dso_local %struct.rmnet_port* @rmnet_get_port_rtnl(%struct.net_device*) #1

declare dso_local i32 @rmnet_unregister_real_device(%struct.net_device*, %struct.rmnet_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
