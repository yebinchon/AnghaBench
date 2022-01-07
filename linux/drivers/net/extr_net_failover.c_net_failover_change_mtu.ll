; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_failover_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @net_failover_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_failover_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_failover_info*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.net_failover_info* @netdev_priv(%struct.net_device* %10)
  store %struct.net_failover_info* %11, %struct.net_failover_info** %6, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.net_failover_info*, %struct.net_failover_info** %6, align 8
  %13 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net_device* @rtnl_dereference(i32 %14)
  store %struct.net_device* %15, %struct.net_device** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @dev_set_mtu(%struct.net_device* %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %3, align 4
  br label %56

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.net_failover_info*, %struct.net_failover_info** %6, align 8
  %29 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.net_device* @rtnl_dereference(i32 %30)
  store %struct.net_device* %31, %struct.net_device** %8, align 8
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = icmp ne %struct.net_device* %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %27
  %35 = load %struct.net_device*, %struct.net_device** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dev_set_mtu(%struct.net_device* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.net_device*, %struct.net_device** %7, align 8
  %42 = icmp ne %struct.net_device* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_set_mtu(%struct.net_device* %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %40
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %27
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %49, %24
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.net_failover_info* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @rtnl_dereference(i32) #1

declare dso_local i32 @dev_set_mtu(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
