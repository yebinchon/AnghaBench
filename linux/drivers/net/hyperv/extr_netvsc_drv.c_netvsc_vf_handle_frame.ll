; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_vf_handle_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_vf_handle_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.net_device_context = type { i32 }
%struct.netvsc_vf_pcpu_stats = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@RX_HANDLER_CONSUMED = common dso_local global i32 0, align 4
@RX_HANDLER_ANOTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff**)* @netvsc_vf_handle_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_vf_handle_frame(%struct.sk_buff** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff**, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device_context*, align 8
  %7 = alloca %struct.netvsc_vf_pcpu_stats*, align 8
  store %struct.sk_buff** %0, %struct.sk_buff*** %3, align 8
  %8 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %9, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.net_device* @rcu_dereference(i32 %14)
  store %struct.net_device* %15, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %16)
  store %struct.net_device_context* %17, %struct.net_device_context** %6, align 8
  %18 = load %struct.net_device_context*, %struct.net_device_context** %6, align 8
  %19 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.netvsc_vf_pcpu_stats* @this_cpu_ptr(i32 %20)
  store %struct.netvsc_vf_pcpu_stats* %21, %struct.netvsc_vf_pcpu_stats** %7, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %22, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %4, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @RX_HANDLER_CONSUMED, align 4
  store i32 %32, i32* %2, align 4
  br label %59

33:                                               ; preds = %1
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  store %struct.net_device* %36, %struct.net_device** %38, align 8
  %39 = load %struct.netvsc_vf_pcpu_stats*, %struct.netvsc_vf_pcpu_stats** %7, align 8
  %40 = getelementptr inbounds %struct.netvsc_vf_pcpu_stats, %struct.netvsc_vf_pcpu_stats* %39, i32 0, i32 0
  %41 = call i32 @u64_stats_update_begin(i32* %40)
  %42 = load %struct.netvsc_vf_pcpu_stats*, %struct.netvsc_vf_pcpu_stats** %7, align 8
  %43 = getelementptr inbounds %struct.netvsc_vf_pcpu_stats, %struct.netvsc_vf_pcpu_stats* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.netvsc_vf_pcpu_stats*, %struct.netvsc_vf_pcpu_stats** %7, align 8
  %50 = getelementptr inbounds %struct.netvsc_vf_pcpu_stats, %struct.netvsc_vf_pcpu_stats* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load %struct.netvsc_vf_pcpu_stats*, %struct.netvsc_vf_pcpu_stats** %7, align 8
  %56 = getelementptr inbounds %struct.netvsc_vf_pcpu_stats, %struct.netvsc_vf_pcpu_stats* %55, i32 0, i32 0
  %57 = call i32 @u64_stats_update_end(i32* %56)
  %58 = load i32, i32* @RX_HANDLER_ANOTHER, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %33, %31
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.net_device* @rcu_dereference(i32) #1

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.netvsc_vf_pcpu_stats* @this_cpu_ptr(i32) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
