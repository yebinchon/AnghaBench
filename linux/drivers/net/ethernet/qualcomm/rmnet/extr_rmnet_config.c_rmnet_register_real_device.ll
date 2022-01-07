; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_config.c_rmnet_register_real_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/rmnet/extr_rmnet_config.c_rmnet_register_real_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rmnet_port = type { i32*, %struct.net_device* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rmnet_rx_handler = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RMNET_MAX_LOGICAL_EP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"registered with rmnet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rmnet_register_real_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmnet_register_real_device(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.rmnet_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = call i32 (...) @ASSERT_RTNL()
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i64 @rmnet_is_real_dev_registered(%struct.net_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %56

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.rmnet_port* @kzalloc(i32 16, i32 %13)
  store %struct.rmnet_port* %14, %struct.rmnet_port** %4, align 8
  %15 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %16 = icmp ne %struct.rmnet_port* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %56

20:                                               ; preds = %12
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %23 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %22, i32 0, i32 1
  store %struct.net_device* %21, %struct.net_device** %23, align 8
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = load i32, i32* @rmnet_rx_handler, align 4
  %26 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %27 = call i32 @netdev_rx_handler_register(%struct.net_device* %24, i32 %25, %struct.rmnet_port* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %32 = call i32 @kfree(%struct.rmnet_port* %31)
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %56

35:                                               ; preds = %20
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @dev_hold(%struct.net_device* %36)
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %50, %35
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @RMNET_MAX_LOGICAL_EP, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.rmnet_port*, %struct.rmnet_port** %4, align 8
  %44 = getelementptr inbounds %struct.rmnet_port, %struct.rmnet_port* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @INIT_HLIST_HEAD(i32* %48)
  br label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %38

53:                                               ; preds = %38
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = call i32 @netdev_dbg(%struct.net_device* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %30, %17, %11
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i64 @rmnet_is_real_dev_registered(%struct.net_device*) #1

declare dso_local %struct.rmnet_port* @kzalloc(i32, i32) #1

declare dso_local i32 @netdev_rx_handler_register(%struct.net_device*, i32, %struct.rmnet_port*) #1

declare dso_local i32 @kfree(%struct.rmnet_port*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
