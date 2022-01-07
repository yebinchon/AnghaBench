; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_register_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_register_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, i32, i32 }
%struct.net_device_context = type { i32, i32 }
%struct.netvsc_device = type { i32 }

@ETH_ALEN = common dso_local global i64 0, align 8
@NOTIFY_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"eth%d\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"could not move to same namespace as %s: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"VF moved to namespace with: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"VF registering: %s\0A\00", align 1
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netvsc_register_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_register_vf(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device_context*, align 8
  %5 = alloca %struct.netvsc_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ETH_ALEN, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %14, i32* %2, align 4
  br label %96

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call %struct.net_device* @get_netvsc_byslot(%struct.net_device* %16)
  store %struct.net_device* %17, %struct.net_device** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = icmp ne %struct.net_device* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %21, i32* %2, align 4
  br label %96

22:                                               ; preds = %15
  %23 = load %struct.net_device*, %struct.net_device** %6, align 8
  %24 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %23)
  store %struct.net_device_context* %24, %struct.net_device_context** %4, align 8
  %25 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %26 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.netvsc_device* @rtnl_dereference(i32 %27)
  store %struct.netvsc_device* %28, %struct.netvsc_device** %5, align 8
  %29 = load %struct.netvsc_device*, %struct.netvsc_device** %5, align 8
  %30 = icmp ne %struct.netvsc_device* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %33 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.netvsc_device* @rtnl_dereference(i32 %34)
  %36 = icmp ne %struct.netvsc_device* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %22
  %38 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %38, i32* %2, align 4
  br label %96

39:                                               ; preds = %31
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = call i32 @dev_net(%struct.net_device* %40)
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = call i32 @dev_net(%struct.net_device* %42)
  %44 = call i32 @net_eq(i32 %41, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %39
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = call i32 @dev_net(%struct.net_device* %48)
  %50 = call i32 @dev_change_net_namespace(%struct.net_device* %47, i32 %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = load %struct.net_device*, %struct.net_device** %6, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @netdev_err(%struct.net_device* %54, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  br label %66

60:                                               ; preds = %46
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @netdev_info(%struct.net_device* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %60, %53
  %67 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %67, i32* %2, align 4
  br label %96

68:                                               ; preds = %39
  %69 = load %struct.net_device*, %struct.net_device** %6, align 8
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @netdev_info(%struct.net_device* %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = call i64 @netvsc_vf_join(%struct.net_device* %74, %struct.net_device* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %79, i32* %2, align 4
  br label %96

80:                                               ; preds = %68
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = call i32 @dev_hold(%struct.net_device* %81)
  %83 = load %struct.net_device_context*, %struct.net_device_context** %4, align 8
  %84 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.net_device*, %struct.net_device** %3, align 8
  %87 = call i32 @rcu_assign_pointer(i32 %85, %struct.net_device* %86)
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.net_device*, %struct.net_device** %3, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load %struct.net_device*, %struct.net_device** %3, align 8
  %94 = call i32 @netdev_update_features(%struct.net_device* %93)
  %95 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %80, %78, %66, %37, %20, %13
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.net_device* @get_netvsc_byslot(%struct.net_device*) #1

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netvsc_device* @rtnl_dereference(i32) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @dev_change_net_namespace(%struct.net_device*, i32, i8*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i64 @netvsc_vf_join(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.net_device*) #1

declare dso_local i32 @netdev_update_features(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
