; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_netfront_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_netfront_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32 }
%struct.xenbus_device_id = type { i32 }
%struct.net_device = type { i32 }
%struct.netfront_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32** }

@.str = private unnamed_addr constant [16 x i8] c"creating netdev\00", align 1
@xennet_dev_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*, %struct.xenbus_device_id*)* @netfront_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netfront_probe(%struct.xenbus_device* %0, %struct.xenbus_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenbus_device*, align 8
  %5 = alloca %struct.xenbus_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.netfront_info*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %4, align 8
  store %struct.xenbus_device_id* %1, %struct.xenbus_device_id** %5, align 8
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %10 = call %struct.net_device* @xennet_create_dev(%struct.xenbus_device* %9)
  store %struct.net_device* %10, %struct.net_device** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = call i64 @IS_ERR(%struct.net_device* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.net_device*, %struct.net_device** %7, align 8
  %16 = call i32 @PTR_ERR(%struct.net_device* %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @xenbus_dev_fatal(%struct.xenbus_device* %17, i32 %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %28

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %7, align 8
  %23 = call %struct.netfront_info* @netdev_priv(%struct.net_device* %22)
  store %struct.netfront_info* %23, %struct.netfront_info** %8, align 8
  %24 = load %struct.xenbus_device*, %struct.xenbus_device** %4, align 8
  %25 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %24, i32 0, i32 0
  %26 = load %struct.netfront_info*, %struct.netfront_info** %8, align 8
  %27 = call i32 @dev_set_drvdata(i32* %25, %struct.netfront_info* %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %21, %14
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.net_device* @xennet_create_dev(%struct.xenbus_device*) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @PTR_ERR(%struct.net_device*) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.xenbus_device*, i32, i8*) #1

declare dso_local %struct.netfront_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.netfront_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
