; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_vf_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_vf_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i32, %struct.net_device* }
%struct.net_device_context = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.netvsc_vf_pcpu_stats = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NET_XMIT_CN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*, %struct.sk_buff*)* @netvsc_vf_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_vf_xmit(%struct.net_device* %0, %struct.net_device* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.netvsc_vf_pcpu_stats*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %11)
  store %struct.net_device_context* %12, %struct.net_device_context** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 2
  store %struct.net_device* %16, %struct.net_device** %18, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call %struct.TYPE_4__* @qdisc_skb_cb(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call i32 @dev_queue_xmit(%struct.sk_buff* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @NET_XMIT_CN, align 4
  %33 = icmp eq i32 %31, %32
  br label %34

34:                                               ; preds = %30, %3
  %35 = phi i1 [ true, %3 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load %struct.net_device_context*, %struct.net_device_context** %7, align 8
  %41 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = call %struct.netvsc_vf_pcpu_stats* @this_cpu_ptr(%struct.TYPE_3__* %42)
  store %struct.netvsc_vf_pcpu_stats* %43, %struct.netvsc_vf_pcpu_stats** %10, align 8
  %44 = load %struct.netvsc_vf_pcpu_stats*, %struct.netvsc_vf_pcpu_stats** %10, align 8
  %45 = getelementptr inbounds %struct.netvsc_vf_pcpu_stats, %struct.netvsc_vf_pcpu_stats* %44, i32 0, i32 1
  %46 = call i32 @u64_stats_update_begin(i32* %45)
  %47 = load %struct.netvsc_vf_pcpu_stats*, %struct.netvsc_vf_pcpu_stats** %10, align 8
  %48 = getelementptr inbounds %struct.netvsc_vf_pcpu_stats, %struct.netvsc_vf_pcpu_stats* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.netvsc_vf_pcpu_stats*, %struct.netvsc_vf_pcpu_stats** %10, align 8
  %53 = getelementptr inbounds %struct.netvsc_vf_pcpu_stats, %struct.netvsc_vf_pcpu_stats* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.netvsc_vf_pcpu_stats*, %struct.netvsc_vf_pcpu_stats** %10, align 8
  %57 = getelementptr inbounds %struct.netvsc_vf_pcpu_stats, %struct.netvsc_vf_pcpu_stats* %56, i32 0, i32 1
  %58 = call i32 @u64_stats_update_end(i32* %57)
  br label %66

59:                                               ; preds = %34
  %60 = load %struct.net_device_context*, %struct.net_device_context** %7, align 8
  %61 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @this_cpu_inc(i32 %64)
  br label %66

66:                                               ; preds = %59, %39
  %67 = load i32, i32* %9, align 4
  ret i32 %67
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.TYPE_4__* @qdisc_skb_cb(%struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.netvsc_vf_pcpu_stats* @this_cpu_ptr(%struct.TYPE_3__*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
