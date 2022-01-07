; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_set_skb_gso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_set_skb_gso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xen_netif_extra_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i32, i64 }

@.str = private unnamed_addr constant [27 x i8] c"GSO size must not be zero\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XEN_NETIF_GSO_TYPE_TCPV4 = common dso_local global i64 0, align 8
@XEN_NETIF_GSO_TYPE_TCPV6 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Bad GSO type %d\0A\00", align 1
@SKB_GSO_TCPV4 = common dso_local global i32 0, align 4
@SKB_GSO_TCPV6 = common dso_local global i32 0, align 4
@SKB_GSO_DODGY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xen_netif_extra_info*)* @xennet_set_skb_gso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xennet_set_skb_gso(%struct.sk_buff* %0, %struct.xen_netif_extra_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xen_netif_extra_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xen_netif_extra_info* %1, %struct.xen_netif_extra_info** %5, align 8
  %6 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %5, align 8
  %7 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = call i64 (...) @net_ratelimit()
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %12
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %83

20:                                               ; preds = %2
  %21 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %5, align 8
  %22 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @XEN_NETIF_GSO_TYPE_TCPV4, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %20
  %29 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %5, align 8
  %30 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @XEN_NETIF_GSO_TYPE_TCPV6, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %28
  %37 = call i64 (...) @net_ratelimit()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %5, align 8
  %41 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %39, %36
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %83

49:                                               ; preds = %28, %20
  %50 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %5, align 8
  %51 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i64 %54, i64* %57, align 8
  %58 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %5, align 8
  %59 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @XEN_NETIF_GSO_TYPE_TCPV4, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %49
  %66 = load i32, i32* @SKB_GSO_TCPV4, align 4
  br label %69

67:                                               ; preds = %49
  %68 = load i32, i32* @SKB_GSO_TCPV6, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @SKB_GSO_DODGY, align 4
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %75)
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %74
  store i32 %79, i32* %77, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %69, %46, %17
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
