; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_netback_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_netback_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32 }
%struct.netfront_info = type { %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@module_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenbus_device*, i32)* @netback_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netback_changed(%struct.xenbus_device* %0, i32 %1) #0 {
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netfront_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %8 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 1
  %9 = call %struct.netfront_info* @dev_get_drvdata(i32* %8)
  store %struct.netfront_info* %9, %struct.netfront_info** %5, align 8
  %10 = load %struct.netfront_info*, %struct.netfront_info** %5, align 8
  %11 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %14 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %13, i32 0, i32 1
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @xenbus_strstate(i32 %15)
  %17 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = call i32 @wake_up_all(i32* @module_wq)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %48 [
    i32 131, label %20
    i32 132, label %20
    i32 129, label %20
    i32 130, label %20
    i32 128, label %20
    i32 133, label %21
    i32 134, label %35
    i32 136, label %38
    i32 135, label %45
  ]

20:                                               ; preds = %2, %2, %2, %2, %2
  br label %48

21:                                               ; preds = %2
  %22 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %23 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 131
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %48

27:                                               ; preds = %21
  %28 = load %struct.net_device*, %struct.net_device** %6, align 8
  %29 = call i32 @xennet_connect(%struct.net_device* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %48

32:                                               ; preds = %27
  %33 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %34 = call i32 @xenbus_switch_state(%struct.xenbus_device* %33, i32 134)
  br label %48

35:                                               ; preds = %2
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = call i32 @netdev_notify_peers(%struct.net_device* %36)
  br label %48

38:                                               ; preds = %2
  %39 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %40 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 136
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %48

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %2, %44
  %46 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %47 = call i32 @xenbus_frontend_closed(%struct.xenbus_device* %46)
  br label %48

48:                                               ; preds = %2, %45, %43, %35, %32, %31, %26, %20
  ret void
}

declare dso_local %struct.netfront_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @xenbus_strstate(i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @xennet_connect(%struct.net_device*) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i32) #1

declare dso_local i32 @netdev_notify_peers(%struct.net_device*) #1

declare dso_local i32 @xenbus_frontend_closed(%struct.xenbus_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
