; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_failover_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @net_failover_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_failover_vlan_rx_add_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_failover_info*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.net_failover_info* @netdev_priv(%struct.net_device* %12)
  store %struct.net_failover_info* %13, %struct.net_failover_info** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.net_failover_info*, %struct.net_failover_info** %8, align 8
  %15 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net_device* @rcu_dereference(i32 %16)
  store %struct.net_device* %17, %struct.net_device** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %9, align 8
  %19 = icmp ne %struct.net_device* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %3
  %21 = load %struct.net_device*, %struct.net_device** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @vlan_vid_add(%struct.net_device* %21, i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %56

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %3
  %31 = load %struct.net_failover_info*, %struct.net_failover_info** %8, align 8
  %32 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.net_device* @rcu_dereference(i32 %33)
  store %struct.net_device* %34, %struct.net_device** %10, align 8
  %35 = load %struct.net_device*, %struct.net_device** %10, align 8
  %36 = icmp ne %struct.net_device* %35, null
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = load %struct.net_device*, %struct.net_device** %10, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @vlan_vid_add(%struct.net_device* %38, i32 %39, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.net_device*, %struct.net_device** %9, align 8
  %46 = icmp ne %struct.net_device* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.net_device*, %struct.net_device** %9, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @vlan_vid_del(%struct.net_device* %48, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %47, %44
  br label %53

53:                                               ; preds = %52, %37
  br label %54

54:                                               ; preds = %53, %30
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %27
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.net_failover_info* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local i32 @vlan_vid_add(%struct.net_device*, i32, i32) #1

declare dso_local i32 @vlan_vid_del(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
