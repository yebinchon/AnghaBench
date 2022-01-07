; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_alb_send_lp_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_alb_send_lp_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.learning_pkt = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i32, i32, i64, i64 }

@ETH_P_LOOPBACK = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@TC_PRIO_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Send learning packet: mac %pM vlan %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slave*, i32*, i32, i32)* @alb_send_lp_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alb_send_lp_vid(%struct.slave* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.slave*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.learning_pkt, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.slave* %0, %struct.slave** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 12, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @memset(%struct.learning_pkt* %9, i32 0, i32 %12)
  %14 = getelementptr inbounds %struct.learning_pkt, %struct.learning_pkt* %9, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @ether_addr_copy(i32 %15, i32* %16)
  %18 = getelementptr inbounds %struct.learning_pkt, %struct.learning_pkt* %9, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @ether_addr_copy(i32 %19, i32* %20)
  %22 = load i32, i32* @ETH_P_LOOPBACK, align 4
  %23 = call i32 @cpu_to_be16(i32 %22)
  %24 = getelementptr inbounds %struct.learning_pkt, %struct.learning_pkt* %9, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call %struct.sk_buff* @dev_alloc_skb(i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %10, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  br label %76

30:                                               ; preds = %4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @skb_put_data(%struct.sk_buff* %31, %struct.learning_pkt* %9, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %35 = call i32 @skb_reset_mac_header(%struct.sk_buff* %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ETH_HLEN, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 4
  store i64 %40, i64* %42, align 8
  %43 = getelementptr inbounds %struct.learning_pkt, %struct.learning_pkt* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.slave*, %struct.slave** %5, align 8
  %51 = getelementptr inbounds %struct.slave, %struct.slave* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.slave*, %struct.slave** %5, align 8
  %56 = getelementptr inbounds %struct.slave, %struct.slave* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.slave*, %struct.slave** %5, align 8
  %61 = getelementptr inbounds %struct.slave, %struct.slave* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @slave_dbg(i32 %59, i32 %62, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32* %63, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %30
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %30
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %75 = call i32 @dev_queue_xmit(%struct.sk_buff* %74)
  br label %76

76:                                               ; preds = %73, %29
  ret void
}

declare dso_local i32 @memset(%struct.learning_pkt*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, %struct.learning_pkt*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @slave_dbg(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
