; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdp_ctx = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64, %struct.TYPE_3__*, i32 }
%struct.pcpu_sw_netstats = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"No PDP ctx for this MS\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"forwarding packet from GGSN to uplink\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pdp_ctx*, %struct.sk_buff*, i32, i32)* @gtp_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtp_rx(%struct.pdp_ctx* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pdp_ctx*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pcpu_sw_netstats*, align 8
  store %struct.pdp_ctx* %0, %struct.pdp_ctx** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @gtp_check_ms(%struct.sk_buff* %11, %struct.pdp_ctx* %12, i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = call i32 @netdev_dbg(%struct.TYPE_3__* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %82

22:                                               ; preds = %4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %29 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @sock_net(i32 %30)
  %32 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = call i32 @dev_net(%struct.TYPE_3__* %34)
  %36 = call i32 @net_eq(i32 %31, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @iptunnel_pull_header(%struct.sk_buff* %23, i32 %24, i32 %27, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %22
  store i32 -1, i32* %5, align 4
  br label %82

43:                                               ; preds = %22
  %44 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = call i32 @netdev_dbg(%struct.TYPE_3__* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = call i32 @skb_reset_network_header(%struct.sk_buff* %48)
  %50 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %51 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  store %struct.TYPE_3__* %52, %struct.TYPE_3__** %54, align 8
  %55 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call %struct.pcpu_sw_netstats* @this_cpu_ptr(i32 %59)
  store %struct.pcpu_sw_netstats* %60, %struct.pcpu_sw_netstats** %10, align 8
  %61 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %10, align 8
  %62 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %61, i32 0, i32 0
  %63 = call i32 @u64_stats_update_begin(i32* %62)
  %64 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %10, align 8
  %65 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %10, align 8
  %72 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  %77 = load %struct.pcpu_sw_netstats*, %struct.pcpu_sw_netstats** %10, align 8
  %78 = getelementptr inbounds %struct.pcpu_sw_netstats, %struct.pcpu_sw_netstats* %77, i32 0, i32 0
  %79 = call i32 @u64_stats_update_end(i32* %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = call i32 @netif_rx(%struct.sk_buff* %80)
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %43, %42, %17
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @gtp_check_ms(%struct.sk_buff*, %struct.pdp_ctx*, i32, i32) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_3__*, i8*) #1

declare dso_local i64 @iptunnel_pull_header(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @dev_net(%struct.TYPE_3__*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local %struct.pcpu_sw_netstats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
