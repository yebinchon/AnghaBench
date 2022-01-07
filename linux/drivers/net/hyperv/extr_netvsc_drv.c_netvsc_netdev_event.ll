; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_netdev_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_netdev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i64, i32, i32, i32* }

@device_ops = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i64 0, align 8
@IFF_BONDING = common dso_local global i32 0, align 4
@IFF_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @netvsc_netdev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_netdev_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %9)
  store %struct.net_device* %10, %struct.net_device** %8, align 8
  %11 = load %struct.net_device*, %struct.net_device** %8, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, @device_ops
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %16, i32* %4, align 4
  br label %60

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ARPHRD_ETHER, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %24, i32* %4, align 4
  br label %60

25:                                               ; preds = %17
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = call i64 @is_vlan_dev(%struct.net_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %30, i32* %4, align 4
  br label %60

31:                                               ; preds = %25
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IFF_BONDING, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load %struct.net_device*, %struct.net_device** %8, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IFF_MASTER, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %46, i32* %4, align 4
  br label %60

47:                                               ; preds = %38, %31
  %48 = load i64, i64* %6, align 8
  switch i64 %48, label %58 [
    i64 130, label %49
    i64 129, label %52
    i64 128, label %55
    i64 131, label %55
  ]

49:                                               ; preds = %47
  %50 = load %struct.net_device*, %struct.net_device** %8, align 8
  %51 = call i32 @netvsc_register_vf(%struct.net_device* %50)
  store i32 %51, i32* %4, align 4
  br label %60

52:                                               ; preds = %47
  %53 = load %struct.net_device*, %struct.net_device** %8, align 8
  %54 = call i32 @netvsc_unregister_vf(%struct.net_device* %53)
  store i32 %54, i32* %4, align 4
  br label %60

55:                                               ; preds = %47, %47
  %56 = load %struct.net_device*, %struct.net_device** %8, align 8
  %57 = call i32 @netvsc_vf_changed(%struct.net_device* %56)
  store i32 %57, i32* %4, align 4
  br label %60

58:                                               ; preds = %47
  %59 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %58, %55, %52, %49, %45, %29, %23, %15
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local i32 @netvsc_register_vf(%struct.net_device*) #1

declare dso_local i32 @netvsc_unregister_vf(%struct.net_device*) #1

declare dso_local i32 @netvsc_vf_changed(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
