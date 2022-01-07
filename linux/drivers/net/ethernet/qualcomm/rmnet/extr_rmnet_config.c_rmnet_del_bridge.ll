; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_config.c_rmnet_del_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_config.c_rmnet_del_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rmnet_priv = type { %struct.net_device* }
%struct.rmnet_port = type { i32*, i32 }

@RMNET_EPMODE_VND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"removed from rmnet as slave\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmnet_del_bridge(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.rmnet_priv*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.rmnet_port*, align 8
  %8 = alloca %struct.rmnet_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.rmnet_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.rmnet_priv* %10, %struct.rmnet_priv** %5, align 8
  %11 = load %struct.rmnet_priv*, %struct.rmnet_priv** %5, align 8
  %12 = getelementptr inbounds %struct.rmnet_priv, %struct.rmnet_priv* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.rmnet_port* @rmnet_get_port(%struct.net_device* %14)
  store %struct.rmnet_port* %15, %struct.rmnet_port** %7, align 8
  %16 = load i32, i32* @RMNET_EPMODE_VND, align 4
  %17 = load %struct.rmnet_port*, %struct.rmnet_port** %7, align 8
  %18 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.rmnet_port*, %struct.rmnet_port** %7, align 8
  %20 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call %struct.rmnet_port* @rmnet_get_port(%struct.net_device* %21)
  store %struct.rmnet_port* %22, %struct.rmnet_port** %8, align 8
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = load %struct.rmnet_port*, %struct.rmnet_port** %8, align 8
  %25 = call i32 @rmnet_unregister_real_device(%struct.net_device* %23, %struct.rmnet_port* %24)
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netdev_dbg(%struct.net_device* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.rmnet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.rmnet_port* @rmnet_get_port(%struct.net_device*) #1

declare dso_local i32 @rmnet_unregister_real_device(%struct.net_device*, %struct.rmnet_port*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
