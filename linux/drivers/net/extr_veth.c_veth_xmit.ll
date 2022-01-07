; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.veth_priv = type { i32, %struct.veth_rq*, i32 }
%struct.veth_rq = type { i32 }
%struct.pcpu_lstats = type { i32, i32, i32 }

@NET_RX_SUCCESS = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @veth_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.veth_priv*, align 8
  %6 = alloca %struct.veth_priv*, align 8
  %7 = alloca %struct.veth_rq*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pcpu_lstats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.veth_priv* %14, %struct.veth_priv** %6, align 8
  store %struct.veth_rq* null, %struct.veth_rq** %7, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.veth_priv*, %struct.veth_priv** %6, align 8
  %20 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.net_device* @rcu_dereference(i32 %21)
  store %struct.net_device* %22, %struct.net_device** %8, align 8
  %23 = load %struct.net_device*, %struct.net_device** %8, align 8
  %24 = icmp ne %struct.net_device* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %31 = call i32 @kfree_skb(%struct.sk_buff* %30)
  br label %98

32:                                               ; preds = %2
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %33)
  store %struct.veth_priv* %34, %struct.veth_priv** %5, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %36 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.net_device*, %struct.net_device** %8, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %32
  %43 = load %struct.veth_priv*, %struct.veth_priv** %5, align 8
  %44 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %43, i32 0, i32 1
  %45 = load %struct.veth_rq*, %struct.veth_rq** %44, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %45, i64 %47
  store %struct.veth_rq* %48, %struct.veth_rq** %7, align 8
  %49 = load %struct.veth_rq*, %struct.veth_rq** %7, align 8
  %50 = getelementptr inbounds %struct.veth_rq, %struct.veth_rq* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rcu_access_pointer(i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %42
  %56 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @skb_record_rx_queue(%struct.sk_buff* %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %42
  br label %60

60:                                               ; preds = %59, %32
  %61 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %62 = call i32 @skb_tx_timestamp(%struct.sk_buff* %61)
  %63 = load %struct.net_device*, %struct.net_device** %8, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %65 = load %struct.veth_rq*, %struct.veth_rq** %7, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @veth_forward_skb(%struct.net_device* %63, %struct.sk_buff* %64, %struct.veth_rq* %65, i32 %66)
  %68 = load i64, i64* @NET_RX_SUCCESS, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @likely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %60
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %96, label %76

76:                                               ; preds = %73
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.pcpu_lstats* @this_cpu_ptr(i32 %79)
  store %struct.pcpu_lstats* %80, %struct.pcpu_lstats** %12, align 8
  %81 = load %struct.pcpu_lstats*, %struct.pcpu_lstats** %12, align 8
  %82 = getelementptr inbounds %struct.pcpu_lstats, %struct.pcpu_lstats* %81, i32 0, i32 1
  %83 = call i32 @u64_stats_update_begin(i32* %82)
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.pcpu_lstats*, %struct.pcpu_lstats** %12, align 8
  %86 = getelementptr inbounds %struct.pcpu_lstats, %struct.pcpu_lstats* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.pcpu_lstats*, %struct.pcpu_lstats** %12, align 8
  %90 = getelementptr inbounds %struct.pcpu_lstats, %struct.pcpu_lstats* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.pcpu_lstats*, %struct.pcpu_lstats** %12, align 8
  %94 = getelementptr inbounds %struct.pcpu_lstats, %struct.pcpu_lstats* %93, i32 0, i32 1
  %95 = call i32 @u64_stats_update_end(i32* %94)
  br label %96

96:                                               ; preds = %76, %73
  br label %102

97:                                               ; preds = %60
  br label %98

98:                                               ; preds = %97, %29
  %99 = load %struct.veth_priv*, %struct.veth_priv** %6, align 8
  %100 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %99, i32 0, i32 0
  %101 = call i32 @atomic64_inc(i32* %100)
  br label %102

102:                                              ; preds = %98, %96
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.veth_rq*, %struct.veth_rq** %7, align 8
  %107 = call i32 @__veth_xdp_flush(%struct.veth_rq* %106)
  br label %108

108:                                              ; preds = %105, %102
  %109 = call i32 (...) @rcu_read_unlock()
  %110 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %110
}

declare dso_local %struct.veth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @rcu_access_pointer(i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @veth_forward_skb(%struct.net_device*, %struct.sk_buff*, %struct.veth_rq*, i32) #1

declare dso_local %struct.pcpu_lstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @__veth_xdp_flush(%struct.veth_rq*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
