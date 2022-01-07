; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_netevent_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_netevent_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.rocker_port = type { i32 }
%struct.net_device = type { i32 }
%struct.neighbour = type { %struct.net_device*, i32* }

@arp_tbl = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to handle neigh update (err %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @rocker_netevent_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_netevent_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rocker_port*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.neighbour*, align 8
  %11 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.neighbour*
  store %struct.neighbour* %13, %struct.neighbour** %10, align 8
  %14 = load i64, i64* %6, align 8
  switch i64 %14, label %44 [
    i64 128, label %15
  ]

15:                                               ; preds = %3
  %16 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %17 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, @arp_tbl
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %21, i32* %4, align 4
  br label %46

22:                                               ; preds = %15
  %23 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %24 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %23, i32 0, i32 0
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %9, align 8
  %26 = load %struct.net_device*, %struct.net_device** %9, align 8
  %27 = call i32 @rocker_port_dev_check(%struct.net_device* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %30, i32* %4, align 4
  br label %46

31:                                               ; preds = %22
  %32 = load %struct.net_device*, %struct.net_device** %9, align 8
  %33 = call %struct.rocker_port* @netdev_priv(%struct.net_device* %32)
  store %struct.rocker_port* %33, %struct.rocker_port** %8, align 8
  %34 = load %struct.rocker_port*, %struct.rocker_port** %8, align 8
  %35 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %36 = call i32 @rocker_world_port_neigh_update(%struct.rocker_port* %34, %struct.neighbour* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load %struct.net_device*, %struct.net_device** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @netdev_warn(%struct.net_device* %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %39, %31
  br label %44

44:                                               ; preds = %3, %43
  %45 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %29, %20
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @rocker_port_dev_check(%struct.net_device*) #1

declare dso_local %struct.rocker_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rocker_world_port_neigh_update(%struct.rocker_port*, %struct.neighbour*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
