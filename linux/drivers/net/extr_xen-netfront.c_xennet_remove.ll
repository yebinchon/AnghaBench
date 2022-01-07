; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32, i32 }
%struct.netfront_info = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@XenbusStateClosed = common dso_local global i64 0, align 8
@XenbusStateClosing = common dso_local global i64 0, align 8
@module_wq = common dso_local global i32 0, align 4
@XenbusStateUnknown = common dso_local global i64 0, align 8
@NETREG_REGISTERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*)* @xennet_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xennet_remove(%struct.xenbus_device* %0) #0 {
  %2 = alloca %struct.xenbus_device*, align 8
  %3 = alloca %struct.netfront_info*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %2, align 8
  %4 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %5 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %4, i32 0, i32 2
  %6 = call %struct.netfront_info* @dev_get_drvdata(i32* %5)
  store %struct.netfront_info* %6, %struct.netfront_info** %3, align 8
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %8 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 2
  %9 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %10 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %14 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @xenbus_read_driver_state(i32 %15)
  %17 = load i64, i64* @XenbusStateClosed, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %1
  %20 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %21 = load i64, i64* @XenbusStateClosing, align 8
  %22 = call i32 @xenbus_switch_state(%struct.xenbus_device* %20, i64 %21)
  %23 = load i32, i32* @module_wq, align 4
  %24 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %25 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @xenbus_read_driver_state(i32 %26)
  %28 = load i64, i64* @XenbusStateClosing, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %19
  %31 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %32 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @xenbus_read_driver_state(i32 %33)
  %35 = load i64, i64* @XenbusStateUnknown, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %30, %19
  %38 = phi i1 [ true, %19 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @wait_event(i32 %23, i32 %39)
  %41 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %42 = load i64, i64* @XenbusStateClosed, align 8
  %43 = call i32 @xenbus_switch_state(%struct.xenbus_device* %41, i64 %42)
  %44 = load i32, i32* @module_wq, align 4
  %45 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %46 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @xenbus_read_driver_state(i32 %47)
  %49 = load i64, i64* @XenbusStateClosed, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %37
  %52 = load %struct.xenbus_device*, %struct.xenbus_device** %2, align 8
  %53 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @xenbus_read_driver_state(i32 %54)
  %56 = load i64, i64* @XenbusStateUnknown, align 8
  %57 = icmp eq i64 %55, %56
  br label %58

58:                                               ; preds = %51, %37
  %59 = phi i1 [ true, %37 ], [ %57, %51 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @wait_event(i32 %44, i32 %60)
  br label %62

62:                                               ; preds = %58, %1
  %63 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %64 = call i32 @xennet_disconnect_backend(%struct.netfront_info* %63)
  %65 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %66 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NETREG_REGISTERED, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %62
  %73 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %74 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = call i32 @unregister_netdev(%struct.TYPE_3__* %75)
  br label %77

77:                                               ; preds = %72, %62
  %78 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %79 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = call i32 (...) @rtnl_lock()
  %84 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %85 = call i32 @xennet_destroy_queues(%struct.netfront_info* %84)
  %86 = call i32 (...) @rtnl_unlock()
  br label %87

87:                                               ; preds = %82, %77
  %88 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %89 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = call i32 @xennet_free_netdev(%struct.TYPE_3__* %90)
  ret i32 0
}

declare dso_local %struct.netfront_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i64 @xenbus_read_driver_state(i32) #1

declare dso_local i32 @xenbus_switch_state(%struct.xenbus_device*, i64) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @xennet_disconnect_backend(%struct.netfront_info*) #1

declare dso_local i32 @unregister_netdev(%struct.TYPE_3__*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @xennet_destroy_queues(%struct.netfront_info*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @xennet_free_netdev(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
