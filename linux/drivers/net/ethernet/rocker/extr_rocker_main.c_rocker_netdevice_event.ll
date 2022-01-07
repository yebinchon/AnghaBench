; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_netdevice_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_netdevice_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.netdev_notifier_changeupper_info = type { i32, i32, i32 }
%struct.rocker_port = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"failed to reflect master linked (err %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"failed to reflect master unlinked (err %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @rocker_netdevice_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_netdevice_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.netdev_notifier_changeupper_info*, align 8
  %10 = alloca %struct.rocker_port*, align 8
  %11 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %12)
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = call i32 @rocker_port_dev_check(%struct.net_device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %18, i32* %4, align 4
  br label %66

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  switch i64 %20, label %63 [
    i64 128, label %21
  ]

21:                                               ; preds = %19
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.netdev_notifier_changeupper_info*
  store %struct.netdev_notifier_changeupper_info* %23, %struct.netdev_notifier_changeupper_info** %9, align 8
  %24 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %9, align 8
  %25 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  br label %64

29:                                               ; preds = %21
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = call %struct.rocker_port* @netdev_priv(%struct.net_device* %30)
  store %struct.rocker_port* %31, %struct.rocker_port** %10, align 8
  %32 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %9, align 8
  %33 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load %struct.rocker_port*, %struct.rocker_port** %10, align 8
  %38 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %9, align 8
  %39 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rocker_world_port_master_linked(%struct.rocker_port* %37, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load %struct.net_device*, %struct.net_device** %8, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @netdev_warn(%struct.net_device* %45, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %36
  br label %62

49:                                               ; preds = %29
  %50 = load %struct.rocker_port*, %struct.rocker_port** %10, align 8
  %51 = load %struct.netdev_notifier_changeupper_info*, %struct.netdev_notifier_changeupper_info** %9, align 8
  %52 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, %struct.netdev_notifier_changeupper_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @rocker_world_port_master_unlinked(%struct.rocker_port* %50, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %49
  %58 = load %struct.net_device*, %struct.net_device** %8, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @netdev_warn(%struct.net_device* %58, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %49
  br label %62

62:                                               ; preds = %61, %48
  br label %63

63:                                               ; preds = %62, %19
  br label %64

64:                                               ; preds = %63, %28
  %65 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %17
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @rocker_port_dev_check(%struct.net_device*) #1

declare dso_local %struct.rocker_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rocker_world_port_master_linked(%struct.rocker_port*, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @rocker_world_port_master_unlinked(%struct.rocker_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
