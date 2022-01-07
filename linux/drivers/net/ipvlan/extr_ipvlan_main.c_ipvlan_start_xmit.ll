; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ipvl_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ipvl_pcpu_stats = type { i32, i32, i32 }

@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@NET_XMIT_CN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ipvlan_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvlan_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ipvl_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipvl_pcpu_stats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.ipvl_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.ipvl_dev* %10, %struct.ipvl_dev** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 @ipvlan_queue_xmit(%struct.sk_buff* %14, %struct.net_device* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @NET_XMIT_CN, align 4
  %23 = icmp eq i32 %21, %22
  br label %24

24:                                               ; preds = %20, %2
  %25 = phi i1 [ true, %2 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @likely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %24
  %30 = load %struct.ipvl_dev*, %struct.ipvl_dev** %5, align 8
  %31 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call %struct.ipvl_pcpu_stats* @this_cpu_ptr(%struct.TYPE_2__* %32)
  store %struct.ipvl_pcpu_stats* %33, %struct.ipvl_pcpu_stats** %8, align 8
  %34 = load %struct.ipvl_pcpu_stats*, %struct.ipvl_pcpu_stats** %8, align 8
  %35 = getelementptr inbounds %struct.ipvl_pcpu_stats, %struct.ipvl_pcpu_stats* %34, i32 0, i32 1
  %36 = call i32 @u64_stats_update_begin(i32* %35)
  %37 = load %struct.ipvl_pcpu_stats*, %struct.ipvl_pcpu_stats** %8, align 8
  %38 = getelementptr inbounds %struct.ipvl_pcpu_stats, %struct.ipvl_pcpu_stats* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.ipvl_pcpu_stats*, %struct.ipvl_pcpu_stats** %8, align 8
  %43 = getelementptr inbounds %struct.ipvl_pcpu_stats, %struct.ipvl_pcpu_stats* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.ipvl_pcpu_stats*, %struct.ipvl_pcpu_stats** %8, align 8
  %47 = getelementptr inbounds %struct.ipvl_pcpu_stats, %struct.ipvl_pcpu_stats* %46, i32 0, i32 1
  %48 = call i32 @u64_stats_update_end(i32* %47)
  br label %56

49:                                               ; preds = %24
  %50 = load %struct.ipvl_dev*, %struct.ipvl_dev** %5, align 8
  %51 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @this_cpu_inc(i32 %54)
  br label %56

56:                                               ; preds = %49, %29
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local %struct.ipvl_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ipvlan_queue_xmit(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.ipvl_pcpu_stats* @this_cpu_ptr(%struct.TYPE_2__*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
