; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_rlb_arp_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_rlb_arp_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.bonding = type { i32 }
%struct.slave = type { i32 }
%struct.arp_pkt = type { i64 }

@ETH_P_ARP = common dso_local global i32 0, align 4
@ARPOP_REPLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Server received an ARP Reply from client\0A\00", align 1
@RX_HANDLER_ANOTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.bonding*, %struct.slave*)* @rlb_arp_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rlb_arp_recv(%struct.sk_buff* %0, %struct.bonding* %1, %struct.slave* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.bonding*, align 8
  %6 = alloca %struct.slave*, align 8
  %7 = alloca %struct.arp_pkt*, align 8
  %8 = alloca %struct.arp_pkt, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.bonding* %1, %struct.bonding** %5, align 8
  store %struct.slave* %2, %struct.slave** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @ETH_P_ARP, align 4
  %13 = call i64 @cpu_to_be16(i32 %12)
  %14 = icmp ne i64 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %44

16:                                               ; preds = %3
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call %struct.arp_pkt* @skb_header_pointer(%struct.sk_buff* %17, i32 0, i32 8, %struct.arp_pkt* %8)
  store %struct.arp_pkt* %18, %struct.arp_pkt** %7, align 8
  %19 = load %struct.arp_pkt*, %struct.arp_pkt** %7, align 8
  %20 = icmp ne %struct.arp_pkt* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %44

22:                                               ; preds = %16
  %23 = load %struct.bonding*, %struct.bonding** %5, align 8
  %24 = load %struct.arp_pkt*, %struct.arp_pkt** %7, align 8
  %25 = call i32 @rlb_purge_src_ip(%struct.bonding* %23, %struct.arp_pkt* %24)
  %26 = load %struct.arp_pkt*, %struct.arp_pkt** %7, align 8
  %27 = getelementptr inbounds %struct.arp_pkt, %struct.arp_pkt* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @ARPOP_REPLY, align 4
  %30 = call i64 @htons(i32 %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %22
  %33 = load %struct.bonding*, %struct.bonding** %5, align 8
  %34 = load %struct.arp_pkt*, %struct.arp_pkt** %7, align 8
  %35 = call i32 @rlb_update_entry_from_arp(%struct.bonding* %33, %struct.arp_pkt* %34)
  %36 = load %struct.bonding*, %struct.bonding** %5, align 8
  %37 = getelementptr inbounds %struct.bonding, %struct.bonding* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.slave*, %struct.slave** %6, align 8
  %40 = getelementptr inbounds %struct.slave, %struct.slave* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @slave_dbg(i32 %38, i32 %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %32, %22
  br label %44

44:                                               ; preds = %43, %21, %15
  %45 = load i32, i32* @RX_HANDLER_ANOTHER, align 4
  ret i32 %45
}

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local %struct.arp_pkt* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.arp_pkt*) #1

declare dso_local i32 @rlb_purge_src_ip(%struct.bonding*, %struct.arp_pkt*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @rlb_update_entry_from_arp(%struct.bonding*, %struct.arp_pkt*) #1

declare dso_local i32 @slave_dbg(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
