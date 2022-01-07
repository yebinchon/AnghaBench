; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_select_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_select_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i64, %struct.net_device_ops* }
%struct.net_device_ops = type { i64 (%struct.net_device.0*, %struct.sk_buff*, %struct.net_device.0*)* }
%struct.net_device.0 = type opaque
%struct.net_device_context = type { i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*, %struct.sk_buff*, %struct.net_device*)* @netvsc_select_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @netvsc_select_queue(%struct.net_device* %0, %struct.sk_buff* %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.net_device_context*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.net_device_ops*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %11)
  store %struct.net_device_context* %12, %struct.net_device_context** %7, align 8
  %13 = call i32 (...) @rcu_read_lock()
  %14 = load %struct.net_device_context*, %struct.net_device_context** %7, align 8
  %15 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net_device* @rcu_dereference(i32 %16)
  store %struct.net_device* %17, %struct.net_device** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = icmp ne %struct.net_device* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %3
  %21 = load %struct.net_device*, %struct.net_device** %8, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 1
  %23 = load %struct.net_device_ops*, %struct.net_device_ops** %22, align 8
  store %struct.net_device_ops* %23, %struct.net_device_ops** %10, align 8
  %24 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %25 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %24, i32 0, i32 0
  %26 = load i64 (%struct.net_device.0*, %struct.sk_buff*, %struct.net_device.0*)*, i64 (%struct.net_device.0*, %struct.sk_buff*, %struct.net_device.0*)** %25, align 8
  %27 = icmp ne i64 (%struct.net_device.0*, %struct.sk_buff*, %struct.net_device.0*)* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load %struct.net_device_ops*, %struct.net_device_ops** %10, align 8
  %30 = getelementptr inbounds %struct.net_device_ops, %struct.net_device_ops* %29, i32 0, i32 0
  %31 = load i64 (%struct.net_device.0*, %struct.sk_buff*, %struct.net_device.0*)*, i64 (%struct.net_device.0*, %struct.sk_buff*, %struct.net_device.0*)** %30, align 8
  %32 = load %struct.net_device*, %struct.net_device** %8, align 8
  %33 = bitcast %struct.net_device* %32 to %struct.net_device.0*
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = bitcast %struct.net_device* %35 to %struct.net_device.0*
  %37 = call i64 %31(%struct.net_device.0* %33, %struct.sk_buff* %34, %struct.net_device.0* %36)
  store i64 %37, i64* %9, align 8
  br label %42

38:                                               ; preds = %20
  %39 = load %struct.net_device*, %struct.net_device** %8, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i64 @netdev_pick_tx(%struct.net_device* %39, %struct.sk_buff* %40, i32* null)
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %38, %28
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = call %struct.TYPE_2__* @qdisc_skb_cb(%struct.sk_buff* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %43, i64* %46, align 8
  br label %51

47:                                               ; preds = %3
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = call i64 @netvsc_pick_tx(%struct.net_device* %48, %struct.sk_buff* %49)
  store i64 %50, i64* %9, align 8
  br label %51

51:                                               ; preds = %47, %42
  %52 = call i32 (...) @rcu_read_unlock()
  br label %53

53:                                               ; preds = %62, %51
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sge i64 %54, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = sub nsw i64 %66, %65
  store i64 %67, i64* %9, align 8
  br label %53

68:                                               ; preds = %53
  %69 = load i64, i64* %9, align 8
  ret i64 %69
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local i64 @netdev_pick_tx(%struct.net_device*, %struct.sk_buff*, i32*) #1

declare dso_local %struct.TYPE_2__* @qdisc_skb_cb(%struct.sk_buff*) #1

declare dso_local i64 @netvsc_pick_tx(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
