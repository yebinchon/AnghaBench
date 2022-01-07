; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_set_rx_headroom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_set_rx_headroom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.veth_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @veth_set_rx_headroom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_set_rx_headroom(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.veth_priv*, align 8
  %6 = alloca %struct.veth_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.veth_priv* %9, %struct.veth_priv** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %12, %2
  %14 = call i32 (...) @rcu_read_lock()
  %15 = load %struct.veth_priv*, %struct.veth_priv** %6, align 8
  %16 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.net_device* @rcu_dereference(i32 %17)
  store %struct.net_device* %18, %struct.net_device** %7, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = icmp ne %struct.net_device* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %45

26:                                               ; preds = %13
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %27)
  store %struct.veth_priv* %28, %struct.veth_priv** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.veth_priv*, %struct.veth_priv** %6, align 8
  %31 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.veth_priv*, %struct.veth_priv** %6, align 8
  %33 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.veth_priv*, %struct.veth_priv** %5, align 8
  %36 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @max(i32 %34, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.net_device*, %struct.net_device** %7, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %26, %25
  %46 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.veth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
