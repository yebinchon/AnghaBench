; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pcpu_dstats = type { i32, i32, i32 }

@NET_XMIT_SUCCESS = common dso_local global i64 0, align 8
@NET_XMIT_CN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sk_buff*, %struct.net_device*)* @vrf_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vrf_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.pcpu_dstats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call i64 @is_ip_tx_frame(%struct.sk_buff* %11, %struct.net_device* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @NET_XMIT_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @NET_XMIT_CN, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %17, %2
  %22 = phi i1 [ true, %2 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %21
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = call %struct.pcpu_dstats* @this_cpu_ptr(%struct.TYPE_2__* %29)
  store %struct.pcpu_dstats* %30, %struct.pcpu_dstats** %7, align 8
  %31 = load %struct.pcpu_dstats*, %struct.pcpu_dstats** %7, align 8
  %32 = getelementptr inbounds %struct.pcpu_dstats, %struct.pcpu_dstats* %31, i32 0, i32 1
  %33 = call i32 @u64_stats_update_begin(i32* %32)
  %34 = load %struct.pcpu_dstats*, %struct.pcpu_dstats** %7, align 8
  %35 = getelementptr inbounds %struct.pcpu_dstats, %struct.pcpu_dstats* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.pcpu_dstats*, %struct.pcpu_dstats** %7, align 8
  %40 = getelementptr inbounds %struct.pcpu_dstats, %struct.pcpu_dstats* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.pcpu_dstats*, %struct.pcpu_dstats** %7, align 8
  %44 = getelementptr inbounds %struct.pcpu_dstats, %struct.pcpu_dstats* %43, i32 0, i32 1
  %45 = call i32 @u64_stats_update_end(i32* %44)
  br label %53

46:                                               ; preds = %21
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @this_cpu_inc(i32 %51)
  br label %53

53:                                               ; preds = %46, %26
  %54 = load i64, i64* %6, align 8
  ret i64 %54
}

declare dso_local i64 @is_ip_tx_frame(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.pcpu_dstats* @this_cpu_ptr(%struct.TYPE_2__*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
