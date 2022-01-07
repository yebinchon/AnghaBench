; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_cisco.c_cisco_keepalive_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_cisco.c_cisco_keepalive_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { %struct.net_device*, i32, i64 }
%struct.cisco_packet = type { i8*, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [42 x i8] c"Memory squeeze on cisco_keepalive_send()\0A\00", align 1
@CISCO_KEEPALIVE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@INITIAL_JIFFIES = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@TC_PRIO_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i8*, i8*)* @cisco_keepalive_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cisco_keepalive_send(%struct.net_device* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.cisco_packet*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = call %struct.sk_buff* @dev_alloc_skb(i32 44)
  store %struct.sk_buff* %11, %struct.sk_buff** %9, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %13 = icmp ne %struct.sk_buff* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call i32 @netdev_warn(%struct.net_device* %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %63

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = call i32 @skb_reserve(%struct.sk_buff* %18, i32 4)
  %20 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load i32, i32* @CISCO_KEEPALIVE, align 4
  %23 = call i32 @cisco_hard_header(%struct.sk_buff* %20, %struct.net_device* %21, i32 %22, i32* null, i32* null, i32 0)
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 4
  %28 = inttoptr i64 %27 to %struct.cisco_packet*
  store %struct.cisco_packet* %28, %struct.cisco_packet** %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i8* @htonl(i32 %29)
  %31 = load %struct.cisco_packet*, %struct.cisco_packet** %10, align 8
  %32 = getelementptr inbounds %struct.cisco_packet, %struct.cisco_packet* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.cisco_packet*, %struct.cisco_packet** %10, align 8
  %35 = getelementptr inbounds %struct.cisco_packet, %struct.cisco_packet* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.cisco_packet*, %struct.cisco_packet** %10, align 8
  %38 = getelementptr inbounds %struct.cisco_packet, %struct.cisco_packet* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = call i32 @cpu_to_be16(i32 65535)
  %40 = load %struct.cisco_packet*, %struct.cisco_packet** %10, align 8
  %41 = getelementptr inbounds %struct.cisco_packet, %struct.cisco_packet* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @jiffies, align 4
  %43 = load i32, i32* @INITIAL_JIFFIES, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i32, i32* @HZ, align 4
  %46 = sdiv i32 1000, %45
  %47 = mul nsw i32 %44, %46
  %48 = call i8* @htonl(i32 %47)
  %49 = load %struct.cisco_packet*, %struct.cisco_packet** %10, align 8
  %50 = getelementptr inbounds %struct.cisco_packet, %struct.cisco_packet* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = call i32 @skb_put(%struct.sk_buff* %51, i32 40)
  %53 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  store %struct.net_device* %56, %struct.net_device** %58, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %60 = call i32 @skb_reset_network_header(%struct.sk_buff* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = call i32 @dev_queue_xmit(%struct.sk_buff* %61)
  br label %63

63:                                               ; preds = %17, %14
  ret void
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @cisco_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i32*, i32*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
