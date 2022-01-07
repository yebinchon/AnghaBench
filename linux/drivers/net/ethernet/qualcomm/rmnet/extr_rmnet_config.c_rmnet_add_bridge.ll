; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_config.c_rmnet_add_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_config.c_rmnet_add_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.rmnet_priv = type { %struct.net_device* }
%struct.rmnet_port = type { i32, %struct.net_device*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RMNET_EPMODE_BRIDGE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"registered with rmnet as slave\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rmnet_add_bridge(%struct.net_device* %0, %struct.net_device* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca %struct.rmnet_priv*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.rmnet_port*, align 8
  %11 = alloca %struct.rmnet_port*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.rmnet_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.rmnet_priv* %14, %struct.rmnet_priv** %8, align 8
  %15 = load %struct.rmnet_priv*, %struct.rmnet_priv** %8, align 8
  %16 = getelementptr inbounds %struct.rmnet_priv, %struct.rmnet_priv* %15, i32 0, i32 0
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %9, align 8
  %19 = call %struct.rmnet_port* @rmnet_get_port(%struct.net_device* %18)
  store %struct.rmnet_port* %19, %struct.rmnet_port** %10, align 8
  %20 = load %struct.rmnet_port*, %struct.rmnet_port** %10, align 8
  %21 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %59

27:                                               ; preds = %3
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = call i64 @rmnet_is_real_dev_registered(%struct.net_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %59

34:                                               ; preds = %27
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = call i32 @rmnet_register_real_device(%struct.net_device* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %59

42:                                               ; preds = %34
  %43 = load %struct.net_device*, %struct.net_device** %6, align 8
  %44 = call %struct.rmnet_port* @rmnet_get_port(%struct.net_device* %43)
  store %struct.rmnet_port* %44, %struct.rmnet_port** %11, align 8
  %45 = load i8*, i8** @RMNET_EPMODE_BRIDGE, align 8
  %46 = load %struct.rmnet_port*, %struct.rmnet_port** %11, align 8
  %47 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.net_device*, %struct.net_device** %9, align 8
  %49 = load %struct.rmnet_port*, %struct.rmnet_port** %11, align 8
  %50 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %49, i32 0, i32 1
  store %struct.net_device* %48, %struct.net_device** %50, align 8
  %51 = load i8*, i8** @RMNET_EPMODE_BRIDGE, align 8
  %52 = load %struct.rmnet_port*, %struct.rmnet_port** %10, align 8
  %53 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %52, i32 0, i32 2
  store i8* %51, i8** %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = load %struct.rmnet_port*, %struct.rmnet_port** %10, align 8
  %56 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %55, i32 0, i32 1
  store %struct.net_device* %54, %struct.net_device** %56, align 8
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = call i32 @netdev_dbg(%struct.net_device* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %42, %39, %31, %24
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.rmnet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.rmnet_port* @rmnet_get_port(%struct.net_device*) #1

declare dso_local i64 @rmnet_is_real_dev_registered(%struct.net_device*) #1

declare dso_local i32 @rmnet_register_real_device(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
