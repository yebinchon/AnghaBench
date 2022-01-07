; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_dev_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_dev_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.gtp_pktinfo = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"gtp -> IP src: %pI4 dst: %pI4\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @gtp_dev_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtp_dev_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gtp_pktinfo, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ntohs(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @skb_cow_head(%struct.sk_buff* %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %75

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @skb_reset_inner_headers(%struct.sk_buff* %21)
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load i32, i32* %6, align 4
  switch i32 %24, label %29 [
    i32 128, label %25
  ]

25:                                               ; preds = %20
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @gtp_build_skb_ip4(%struct.sk_buff* %26, %struct.net_device* %27, %struct.gtp_pktinfo* %7)
  store i32 %28, i32* %8, align 4
  br label %32

29:                                               ; preds = %20
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = call i32 (...) @rcu_read_unlock()
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %75

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  switch i32 %38, label %73 [
    i32 128, label %39
  ]

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.gtp_pktinfo, %struct.gtp_pktinfo* %7, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.gtp_pktinfo, %struct.gtp_pktinfo* %7, i32 0, i32 2
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.gtp_pktinfo, %struct.gtp_pktinfo* %7, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = call i32 @netdev_dbg(i32 %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %44, i32* %47)
  %49 = getelementptr inbounds %struct.gtp_pktinfo, %struct.gtp_pktinfo* %7, i32 0, i32 1
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.gtp_pktinfo, %struct.gtp_pktinfo* %7, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.gtp_pktinfo, %struct.gtp_pktinfo* %7, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.gtp_pktinfo, %struct.gtp_pktinfo* %7, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.gtp_pktinfo, %struct.gtp_pktinfo* %7, i32 0, i32 2
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.gtp_pktinfo, %struct.gtp_pktinfo* %7, i32 0, i32 1
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = call i32 @ip4_dst_hoplimit(i32* %66)
  %68 = getelementptr inbounds %struct.gtp_pktinfo, %struct.gtp_pktinfo* %7, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.gtp_pktinfo, %struct.gtp_pktinfo* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @udp_tunnel_xmit_skb(%struct.TYPE_8__* %50, i32 %52, %struct.sk_buff* %53, i32 %56, i32 %59, i32 %63, i32 %67, i32 0, i32 %69, i32 %71, i32 1, i32 0)
  br label %73

73:                                               ; preds = %37, %39
  %74 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %74, i32* %3, align 4
  br label %84

75:                                               ; preds = %36, %19
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = call i32 @dev_kfree_skb(%struct.sk_buff* %81)
  %83 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %75, %73
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_inner_headers(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @gtp_build_skb_ip4(%struct.sk_buff*, %struct.net_device*, %struct.gtp_pktinfo*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32*, i32*) #1

declare dso_local i32 @udp_tunnel_xmit_skb(%struct.TYPE_8__*, i32, %struct.sk_buff*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ip4_dst_hoplimit(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
