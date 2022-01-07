; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmimux_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmimux_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.qmimux_priv = type { i32, i32, i32 }
%struct.qmimux_hdr = type { i32, i32, i64 }
%struct.pcpu_sw_netstats = type { i32, i32, i32 }

@NET_XMIT_SUCCESS = common dso_local global i64 0, align 8
@NET_XMIT_CN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sk_buff*, %struct.net_device*)* @qmimux_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qmimux_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.qmimux_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qmimux_hdr*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.pcpu_sw_netstats*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.qmimux_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.qmimux_priv* %11, %struct.qmimux_priv** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = call %struct.qmimux_hdr* @skb_push(%struct.sk_buff* %15, i32 16)
  store %struct.qmimux_hdr* %16, %struct.qmimux_hdr** %7, align 8
  %17 = load %struct.qmimux_hdr*, %struct.qmimux_hdr** %7, align 8
  %18 = getelementptr inbounds %struct.qmimux_hdr, %struct.qmimux_hdr* %17, i32 0, i32 2
  store i64 0, i64* %18, align 8
  %19 = load %struct.qmimux_priv*, %struct.qmimux_priv** %5, align 8
  %20 = getelementptr inbounds %struct.qmimux_priv, %struct.qmimux_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qmimux_hdr*, %struct.qmimux_hdr** %7, align 8
  %23 = getelementptr inbounds %struct.qmimux_hdr, %struct.qmimux_hdr* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @cpu_to_be16(i32 %24)
  %26 = load %struct.qmimux_hdr*, %struct.qmimux_hdr** %7, align 8
  %27 = getelementptr inbounds %struct.qmimux_hdr, %struct.qmimux_hdr* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.qmimux_priv*, %struct.qmimux_priv** %5, align 8
  %29 = getelementptr inbounds %struct.qmimux_priv, %struct.qmimux_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call i64 @dev_queue_xmit(%struct.sk_buff* %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @NET_XMIT_SUCCESS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %2
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* @NET_XMIT_CN, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %38, %2
  %43 = phi i1 [ true, %2 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load %struct.qmimux_priv*, %struct.qmimux_priv** %5, align 8
  %49 = getelementptr inbounds %struct.qmimux_priv, %struct.qmimux_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.pcpu_sw_netstats* @this_cpu_ptr(i32 %50)
  store %struct.pcpu_sw_netstats* %51, %struct.pcpu_sw_netstats** %9, align 8
  %52 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %9, align 8
  %53 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %52, i32 0, i32 1
  %54 = call i32 @u64_stats_update_begin(i32* %53)
  %55 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %9, align 8
  %56 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %9, align 8
  %61 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %9, align 8
  %65 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %64, i32 0, i32 1
  %66 = call i32 @u64_stats_update_end(i32* %65)
  br label %73

67:                                               ; preds = %42
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %47
  %74 = load i64, i64* %8, align 8
  ret i64 %74
}

declare dso_local %struct.qmimux_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.qmimux_hdr* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i64 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.pcpu_sw_netstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
