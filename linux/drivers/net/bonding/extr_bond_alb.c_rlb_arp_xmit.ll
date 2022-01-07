; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_rlb_arp_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_alb.c_rlb_arp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.bonding = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.arp_pkt = type { i64, i32, i32 }

@ARPOP_REPLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"(slave %s): Server sent ARP Reply packet\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@ARPOP_REQUEST = common dso_local global i32 0, align 4
@RLB_UPDATE_DELAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"(slave %s): Server sent ARP Request packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.slave* (%struct.sk_buff*, %struct.bonding*)* @rlb_arp_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.slave* @rlb_arp_xmit(%struct.sk_buff* %0, %struct.bonding* %1) #0 {
  %3 = alloca %struct.slave*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.bonding*, align 8
  %6 = alloca %struct.arp_pkt*, align 8
  %7 = alloca %struct.slave*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.bonding* %1, %struct.bonding** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = call %struct.arp_pkt* @arp_pkt(%struct.sk_buff* %8)
  store %struct.arp_pkt* %9, %struct.arp_pkt** %6, align 8
  store %struct.slave* null, %struct.slave** %7, align 8
  %10 = load %struct.bonding*, %struct.bonding** %5, align 8
  %11 = load %struct.arp_pkt*, %struct.arp_pkt** %6, align 8
  %12 = getelementptr inbounds %struct.arp_pkt, %struct.arp_pkt* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bond_slave_has_mac_rx(%struct.bonding* %10, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.slave* null, %struct.slave** %3, align 8
  br label %99

17:                                               ; preds = %2
  %18 = load %struct.arp_pkt*, %struct.arp_pkt** %6, align 8
  %19 = getelementptr inbounds %struct.arp_pkt, %struct.arp_pkt* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @ARPOP_REPLY, align 4
  %22 = call i64 @htons(i32 %21)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load %struct.bonding*, %struct.bonding** %5, align 8
  %27 = call %struct.slave* @rlb_choose_channel(%struct.sk_buff* %25, %struct.bonding* %26)
  store %struct.slave* %27, %struct.slave** %7, align 8
  %28 = load %struct.slave*, %struct.slave** %7, align 8
  %29 = icmp ne %struct.slave* %28, null
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.arp_pkt*, %struct.arp_pkt** %6, align 8
  %32 = getelementptr inbounds %struct.arp_pkt, %struct.arp_pkt* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.slave*, %struct.slave** %7, align 8
  %35 = getelementptr inbounds %struct.slave, %struct.slave* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.slave*, %struct.slave** %7, align 8
  %40 = getelementptr inbounds %struct.slave, %struct.slave* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @bond_hw_addr_copy(i32 %33, i32 %38, i32 %43)
  br label %45

45:                                               ; preds = %30, %24
  %46 = load %struct.bonding*, %struct.bonding** %5, align 8
  %47 = getelementptr inbounds %struct.bonding, %struct.bonding* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.slave*, %struct.slave** %7, align 8
  %50 = icmp ne %struct.slave* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.slave*, %struct.slave** %7, align 8
  %53 = getelementptr inbounds %struct.slave, %struct.slave* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  br label %58

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %51
  %59 = phi i8* [ %56, %51 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %57 ]
  %60 = call i32 @netdev_dbg(i32 %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %59)
  br label %97

61:                                               ; preds = %17
  %62 = load %struct.arp_pkt*, %struct.arp_pkt** %6, align 8
  %63 = getelementptr inbounds %struct.arp_pkt, %struct.arp_pkt* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @ARPOP_REQUEST, align 4
  %66 = call i64 @htons(i32 %65)
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %61
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load %struct.bonding*, %struct.bonding** %5, align 8
  %71 = call %struct.slave* @rlb_choose_channel(%struct.sk_buff* %69, %struct.bonding* %70)
  store %struct.slave* %71, %struct.slave** %7, align 8
  %72 = load i32, i32* @RLB_UPDATE_DELAY, align 4
  %73 = load %struct.bonding*, %struct.bonding** %5, align 8
  %74 = getelementptr inbounds %struct.bonding, %struct.bonding* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  store i32 %72, i32* %75, align 4
  %76 = load %struct.bonding*, %struct.bonding** %5, align 8
  %77 = load %struct.arp_pkt*, %struct.arp_pkt** %6, align 8
  %78 = getelementptr inbounds %struct.arp_pkt, %struct.arp_pkt* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @rlb_req_update_subnet_clients(%struct.bonding* %76, i32 %79)
  %81 = load %struct.bonding*, %struct.bonding** %5, align 8
  %82 = getelementptr inbounds %struct.bonding, %struct.bonding* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.slave*, %struct.slave** %7, align 8
  %85 = icmp ne %struct.slave* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %68
  %87 = load %struct.slave*, %struct.slave** %7, align 8
  %88 = getelementptr inbounds %struct.slave, %struct.slave* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  br label %93

92:                                               ; preds = %68
  br label %93

93:                                               ; preds = %92, %86
  %94 = phi i8* [ %91, %86 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %92 ]
  %95 = call i32 @netdev_dbg(i32 %83, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %93, %61
  br label %97

97:                                               ; preds = %96, %58
  %98 = load %struct.slave*, %struct.slave** %7, align 8
  store %struct.slave* %98, %struct.slave** %3, align 8
  br label %99

99:                                               ; preds = %97, %16
  %100 = load %struct.slave*, %struct.slave** %3, align 8
  ret %struct.slave* %100
}

declare dso_local %struct.arp_pkt* @arp_pkt(%struct.sk_buff*) #1

declare dso_local i32 @bond_slave_has_mac_rx(%struct.bonding*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.slave* @rlb_choose_channel(%struct.sk_buff*, %struct.bonding*) #1

declare dso_local i32 @bond_hw_addr_copy(i32, i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @rlb_req_update_subnet_clients(%struct.bonding*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
