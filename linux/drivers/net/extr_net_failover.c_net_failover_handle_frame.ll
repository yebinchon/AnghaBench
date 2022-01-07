; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_handle_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_net_failover.c_net_failover_handle_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.net_failover_info = type { i32, i32 }

@RX_HANDLER_EXACT = common dso_local global i32 0, align 4
@RX_HANDLER_ANOTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff**)* @net_failover_handle_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_failover_handle_frame(%struct.sk_buff** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff**, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_failover_info*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.net_device*, align 8
  store %struct.sk_buff** %0, %struct.sk_buff*** %3, align 8
  %9 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %10, %struct.sk_buff** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.net_device* @rcu_dereference(i32 %15)
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.net_failover_info* @netdev_priv(%struct.net_device* %17)
  store %struct.net_failover_info* %18, %struct.net_failover_info** %6, align 8
  %19 = load %struct.net_failover_info*, %struct.net_failover_info** %6, align 8
  %20 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.net_device* @rcu_dereference(i32 %21)
  store %struct.net_device* %22, %struct.net_device** %7, align 8
  %23 = load %struct.net_failover_info*, %struct.net_failover_info** %6, align 8
  %24 = getelementptr inbounds %struct.net_failover_info, %struct.net_failover_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.net_device* @rcu_dereference(i32 %25)
  store %struct.net_device* %26, %struct.net_device** %8, align 8
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = icmp ne %struct.net_device* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load %struct.net_device*, %struct.net_device** %31, align 8
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = icmp eq %struct.net_device* %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @RX_HANDLER_EXACT, align 4
  store i32 %36, i32* %2, align 4
  br label %42

37:                                               ; preds = %29, %1
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  store %struct.net_device* %38, %struct.net_device** %40, align 8
  %41 = load i32, i32* @RX_HANDLER_ANOTHER, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %37, %35
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local %struct.net_failover_info* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
