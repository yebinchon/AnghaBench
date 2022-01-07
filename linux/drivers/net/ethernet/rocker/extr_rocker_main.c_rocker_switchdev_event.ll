; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_switchdev_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_switchdev_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32 }
%struct.rocker_switchdev_event_work = type { i64, i32, %struct.TYPE_4__, %struct.rocker_port* }
%struct.TYPE_4__ = type { i8* }
%struct.rocker_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.switchdev_notifier_fdb_info = type { i32 }

@NOTIFY_DONE = common dso_local global i32 0, align 4
@SWITCHDEV_PORT_ATTR_SET = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@rocker_switchdev_event_work = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @rocker_switchdev_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_switchdev_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.rocker_switchdev_event_work*, align 8
  %10 = alloca %struct.switchdev_notifier_fdb_info*, align 8
  %11 = alloca %struct.rocker_port*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.net_device* @switchdev_notifier_info_to_dev(i8* %12)
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.switchdev_notifier_fdb_info*
  store %struct.switchdev_notifier_fdb_info* %15, %struct.switchdev_notifier_fdb_info** %10, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call i32 @rocker_port_dev_check(%struct.net_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %20, i32* %4, align 4
  br label %105

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @SWITCHDEV_PORT_ATTR_SET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @rocker_switchdev_port_attr_set_event(%struct.net_device* %26, i8* %27)
  store i32 %28, i32* %4, align 4
  br label %105

29:                                               ; preds = %21
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = call %struct.rocker_port* @netdev_priv(%struct.net_device* %30)
  store %struct.rocker_port* %31, %struct.rocker_port** %11, align 8
  %32 = load i32, i32* @GFP_ATOMIC, align 4
  %33 = call i8* @kzalloc(i32 32, i32 %32)
  %34 = bitcast i8* %33 to %struct.rocker_switchdev_event_work*
  store %struct.rocker_switchdev_event_work* %34, %struct.rocker_switchdev_event_work** %9, align 8
  %35 = load %struct.rocker_switchdev_event_work*, %struct.rocker_switchdev_event_work** %9, align 8
  %36 = icmp ne %struct.rocker_switchdev_event_work* %35, null
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %42, i32* %4, align 4
  br label %105

43:                                               ; preds = %29
  %44 = load %struct.rocker_switchdev_event_work*, %struct.rocker_switchdev_event_work** %9, align 8
  %45 = getelementptr inbounds %struct.rocker_switchdev_event_work, %struct.rocker_switchdev_event_work* %44, i32 0, i32 1
  %46 = load i32, i32* @rocker_switchdev_event_work, align 4
  %47 = call i32 @INIT_WORK(i32* %45, i32 %46)
  %48 = load %struct.rocker_port*, %struct.rocker_port** %11, align 8
  %49 = load %struct.rocker_switchdev_event_work*, %struct.rocker_switchdev_event_work** %9, align 8
  %50 = getelementptr inbounds %struct.rocker_switchdev_event_work, %struct.rocker_switchdev_event_work* %49, i32 0, i32 3
  store %struct.rocker_port* %48, %struct.rocker_port** %50, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.rocker_switchdev_event_work*, %struct.rocker_switchdev_event_work** %9, align 8
  %53 = getelementptr inbounds %struct.rocker_switchdev_event_work, %struct.rocker_switchdev_event_work* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load i64, i64* %6, align 8
  switch i64 %54, label %91 [
    i64 129, label %55
    i64 128, label %55
  ]

55:                                               ; preds = %43, %43
  %56 = load %struct.rocker_switchdev_event_work*, %struct.rocker_switchdev_event_work** %9, align 8
  %57 = getelementptr inbounds %struct.rocker_switchdev_event_work, %struct.rocker_switchdev_event_work* %56, i32 0, i32 2
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @memcpy(%struct.TYPE_4__* %57, i8* %58, i32 8)
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = load i32, i32* @GFP_ATOMIC, align 4
  %62 = call i8* @kzalloc(i32 %60, i32 %61)
  %63 = load %struct.rocker_switchdev_event_work*, %struct.rocker_switchdev_event_work** %9, align 8
  %64 = getelementptr inbounds %struct.rocker_switchdev_event_work, %struct.rocker_switchdev_event_work* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i8* %62, i8** %65, align 8
  %66 = load %struct.rocker_switchdev_event_work*, %struct.rocker_switchdev_event_work** %9, align 8
  %67 = getelementptr inbounds %struct.rocker_switchdev_event_work, %struct.rocker_switchdev_event_work* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @unlikely(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %55
  %76 = load %struct.rocker_switchdev_event_work*, %struct.rocker_switchdev_event_work** %9, align 8
  %77 = call i32 @kfree(%struct.rocker_switchdev_event_work* %76)
  %78 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %78, i32* %4, align 4
  br label %105

79:                                               ; preds = %55
  %80 = load %struct.rocker_switchdev_event_work*, %struct.rocker_switchdev_event_work** %9, align 8
  %81 = getelementptr inbounds %struct.rocker_switchdev_event_work, %struct.rocker_switchdev_event_work* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.switchdev_notifier_fdb_info*, %struct.switchdev_notifier_fdb_info** %10, align 8
  %86 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, %struct.switchdev_notifier_fdb_info* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ether_addr_copy(i32* %84, i32 %87)
  %89 = load %struct.net_device*, %struct.net_device** %8, align 8
  %90 = call i32 @dev_hold(%struct.net_device* %89)
  br label %95

91:                                               ; preds = %43
  %92 = load %struct.rocker_switchdev_event_work*, %struct.rocker_switchdev_event_work** %9, align 8
  %93 = call i32 @kfree(%struct.rocker_switchdev_event_work* %92)
  %94 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %94, i32* %4, align 4
  br label %105

95:                                               ; preds = %79
  %96 = load %struct.rocker_port*, %struct.rocker_port** %11, align 8
  %97 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.rocker_switchdev_event_work*, %struct.rocker_switchdev_event_work** %9, align 8
  %102 = getelementptr inbounds %struct.rocker_switchdev_event_work, %struct.rocker_switchdev_event_work* %101, i32 0, i32 1
  %103 = call i32 @queue_work(i32 %100, i32* %102)
  %104 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %95, %91, %75, %41, %25, %19
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local %struct.net_device* @switchdev_notifier_info_to_dev(i8*) #1

declare dso_local i32 @rocker_port_dev_check(%struct.net_device*) #1

declare dso_local i32 @rocker_switchdev_port_attr_set_event(%struct.net_device*, i8*) #1

declare dso_local %struct.rocker_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.rocker_switchdev_event_work*) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
