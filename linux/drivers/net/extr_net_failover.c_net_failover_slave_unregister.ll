; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_slave_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_slave_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.net_failover_info = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failover %s slave:%s unregistered\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"primary\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*)* @net_failover_slave_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_failover_slave_unregister(%struct.net_device* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_failover_info*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.net_failover_info* @netdev_priv(%struct.net_device* %10)
  store %struct.net_failover_info* %11, %struct.net_failover_info** %8, align 8
  %12 = load %struct.net_failover_info*, %struct.net_failover_info** %8, align 8
  %13 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net_device* @rtnl_dereference(i32 %14)
  store %struct.net_device* %15, %struct.net_device** %7, align 8
  %16 = load %struct.net_failover_info*, %struct.net_failover_info** %8, align 8
  %17 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.net_device* @rtnl_dereference(i32 %18)
  store %struct.net_device* %19, %struct.net_device** %6, align 8
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load %struct.net_device*, %struct.net_device** %7, align 8
  %22 = icmp ne %struct.net_device* %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = icmp ne %struct.net_device* %24, %25
  br label %27

27:                                               ; preds = %23, %2
  %28 = phi i1 [ false, %2 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON_ONCE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %103

35:                                               ; preds = %27
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = call i32 @vlan_vids_del_by_dev(%struct.net_device* %36, %struct.net_device* %37)
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = call i32 @dev_uc_unsync(%struct.net_device* %39, %struct.net_device* %40)
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = call i32 @dev_mc_unsync(%struct.net_device* %42, %struct.net_device* %43)
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = call i32 @dev_close(%struct.net_device* %45)
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call %struct.net_failover_info* @netdev_priv(%struct.net_device* %47)
  store %struct.net_failover_info* %48, %struct.net_failover_info** %8, align 8
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = load %struct.net_failover_info*, %struct.net_failover_info** %8, align 8
  %51 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %50, i32 0, i32 2
  %52 = call i32 @dev_get_stats(%struct.net_device* %49, i32* %51)
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %56, %60
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %35
  %66 = load %struct.net_failover_info*, %struct.net_failover_info** %8, align 8
  %67 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @RCU_INIT_POINTER(i32 %68, i32* null)
  br label %89

70:                                               ; preds = %35
  %71 = load %struct.net_failover_info*, %struct.net_failover_info** %8, align 8
  %72 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @RCU_INIT_POINTER(i32 %73, i32* null)
  %75 = load %struct.net_device*, %struct.net_device** %6, align 8
  %76 = icmp ne %struct.net_device* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %70
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.net_device*, %struct.net_device** %6, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.net_device*, %struct.net_device** %5, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %77, %70
  br label %89

89:                                               ; preds = %88, %65
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = call i32 @dev_put(%struct.net_device* %90)
  %92 = load %struct.net_device*, %struct.net_device** %5, align 8
  %93 = call i32 @net_failover_compute_features(%struct.net_device* %92)
  %94 = load %struct.net_device*, %struct.net_device** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @netdev_info(%struct.net_device* %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %98, i32 %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %89, %32
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local %struct.net_failover_info* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @rtnl_dereference(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @vlan_vids_del_by_dev(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_uc_unsync(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_mc_unsync(%struct.net_device*, %struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @dev_get_stats(%struct.net_device*, i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @net_failover_compute_features(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
