; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_get_extras.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_get_extras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_queue = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.xen_netif_extra_info = type { i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Missing extra info\0A\00", align 1
@EBADR = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_TYPE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid extra type: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_FLAG_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfront_queue*, %struct.xen_netif_extra_info*, i64)* @xennet_get_extras to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xennet_get_extras(%struct.netfront_queue* %0, %struct.xen_netif_extra_info* %1, i64 %2) #0 {
  %4 = alloca %struct.netfront_queue*, align 8
  %5 = alloca %struct.xen_netif_extra_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xen_netif_extra_info*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  store %struct.netfront_queue* %0, %struct.netfront_queue** %4, align 8
  store %struct.xen_netif_extra_info* %1, %struct.xen_netif_extra_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %14 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %20 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %95, %3
  %24 = load i64, i64* %9, align 8
  %25 = add nsw i64 %24, 1
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %23
  %32 = call i64 (...) @net_ratelimit()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.device*, %struct.device** %8, align 8
  %36 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* @EBADR, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  br label %102

40:                                               ; preds = %23
  %41 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %42 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %41, i32 0, i32 0
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %9, align 8
  %45 = call i64 @RING_GET_RESPONSE(%struct.TYPE_6__* %42, i64 %44)
  %46 = inttoptr i64 %45 to %struct.xen_netif_extra_info*
  store %struct.xen_netif_extra_info* %46, %struct.xen_netif_extra_info** %7, align 8
  %47 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %48 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %40
  %52 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %53 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_MAX, align 4
  %56 = icmp sge i32 %54, %55
  br label %57

57:                                               ; preds = %51, %40
  %58 = phi i1 [ true, %40 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = call i64 (...) @net_ratelimit()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load %struct.device*, %struct.device** %8, align 8
  %67 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %68 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %65, %62
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %10, align 4
  br label %84

74:                                               ; preds = %57
  %75 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %5, align 8
  %76 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %77 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %75, i64 %80
  %82 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %83 = call i32 @memcpy(%struct.xen_netif_extra_info* %81, %struct.xen_netif_extra_info* %82, i32 8)
  br label %84

84:                                               ; preds = %74, %71
  %85 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call %struct.sk_buff* @xennet_get_rx_skb(%struct.netfront_queue* %85, i64 %86)
  store %struct.sk_buff* %87, %struct.sk_buff** %11, align 8
  %88 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @xennet_get_rx_ref(%struct.netfront_queue* %88, i64 %89)
  store i32 %90, i32* %12, align 4
  %91 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @xennet_move_rx_slot(%struct.netfront_queue* %91, %struct.sk_buff* %92, i32 %93)
  br label %95

95:                                               ; preds = %84
  %96 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %7, align 8
  %97 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @XEN_NETIF_EXTRA_FLAG_MORE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %23, label %102

102:                                              ; preds = %95, %37
  %103 = load i64, i64* %9, align 8
  %104 = load %struct.netfront_queue*, %struct.netfront_queue** %4, align 8
  %105 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i64 %103, i64* %106, align 8
  %107 = load i32, i32* %10, align 4
  ret i32 %107
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i64 @RING_GET_RESPONSE(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @memcpy(%struct.xen_netif_extra_info*, %struct.xen_netif_extra_info*, i32) #1

declare dso_local %struct.sk_buff* @xennet_get_rx_skb(%struct.netfront_queue*, i64) #1

declare dso_local i32 @xennet_get_rx_ref(%struct.netfront_queue*, i64) #1

declare dso_local i32 @xennet_move_rx_slot(%struct.netfront_queue*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
