; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_xdp_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_xdp_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.veth_xdp_tx_bq = type { i32 }
%struct.veth_priv = type { %struct.veth_rq*, i32 }
%struct.veth_rq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.veth_xdp_tx_bq*)* @veth_xdp_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_xdp_flush(%struct.net_device* %0, %struct.veth_xdp_tx_bq* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.veth_xdp_tx_bq*, align 8
  %5 = alloca %struct.veth_priv*, align 8
  %6 = alloca %struct.veth_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.veth_rq*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.veth_xdp_tx_bq* %1, %struct.veth_xdp_tx_bq** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.veth_priv* %10, %struct.veth_priv** %6, align 8
  %11 = call i32 (...) @rcu_read_lock()
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = load %struct.veth_xdp_tx_bq*, %struct.veth_xdp_tx_bq** %4, align 8
  %14 = call i32 @veth_xdp_flush_bq(%struct.net_device* %12, %struct.veth_xdp_tx_bq* %13)
  %15 = load %struct.veth_priv*, %struct.veth_priv** %6, align 8
  %16 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.net_device* @rcu_dereference(i32 %17)
  store %struct.net_device* %18, %struct.net_device** %7, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = icmp ne %struct.net_device* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %48

26:                                               ; preds = %2
  %27 = load %struct.net_device*, %struct.net_device** %7, align 8
  %28 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %27)
  store %struct.veth_priv* %28, %struct.veth_priv** %5, align 8
  %29 = load %struct.veth_priv*, %struct.veth_priv** %5, align 8
  %30 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %29, i32 0, i32 0
  %31 = load %struct.veth_rq*, %struct.veth_rq** %30, align 8
  %32 = load %struct.net_device*, %struct.net_device** %7, align 8
  %33 = call i64 @veth_select_rxq(%struct.net_device* %32)
  %34 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %31, i64 %33
  store %struct.veth_rq* %34, %struct.veth_rq** %8, align 8
  %35 = load %struct.veth_rq*, %struct.veth_rq** %8, align 8
  %36 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rcu_access_pointer(i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %26
  br label %48

45:                                               ; preds = %26
  %46 = load %struct.veth_rq*, %struct.veth_rq** %8, align 8
  %47 = call i32 @__veth_xdp_flush(%struct.veth_rq* %46)
  br label %48

48:                                               ; preds = %45, %44, %25
  %49 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local %struct.veth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @veth_xdp_flush_bq(%struct.net_device*, %struct.veth_xdp_tx_bq*) #1

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @veth_select_rxq(%struct.net_device*) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @__veth_xdp_flush(%struct.veth_rq*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
