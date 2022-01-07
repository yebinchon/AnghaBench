; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { i32, i32, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%union.e1000_adv_rx_desc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32, i32 }

@E1000_RXD_STAT_IXSM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@E1000_RXDEXT_STATERR_TCPE = common dso_local global i32 0, align 4
@E1000_RXDEXT_STATERR_IPE = common dso_local global i32 0, align 4
@IGB_RING_FLAG_RX_SCTP_CSUM = common dso_local global i32 0, align 4
@E1000_RXD_STAT_TCPCS = common dso_local global i32 0, align 4
@E1000_RXD_STAT_UDPCS = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cksum success: bits %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igb_ring*, %union.e1000_adv_rx_desc*, %struct.sk_buff*)* @igb_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_rx_checksum(%struct.igb_ring* %0, %union.e1000_adv_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.igb_ring*, align 8
  %5 = alloca %union.e1000_adv_rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.igb_ring* %0, %struct.igb_ring** %4, align 8
  store %union.e1000_adv_rx_desc* %1, %union.e1000_adv_rx_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %8 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %7)
  %9 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %10 = load i32, i32* @E1000_RXD_STAT_IXSM, align 4
  %11 = call i64 @igb_test_staterr(%union.e1000_adv_rx_desc* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %77

14:                                               ; preds = %3
  %15 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %16 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %15, i32 0, i32 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %77

24:                                               ; preds = %14
  %25 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %26 = load i32, i32* @E1000_RXDEXT_STATERR_TCPE, align 4
  %27 = load i32, i32* @E1000_RXDEXT_STATERR_IPE, align 4
  %28 = or i32 %26, %27
  %29 = call i64 @igb_test_staterr(%union.e1000_adv_rx_desc* %25, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %55

31:                                               ; preds = %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 60
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* @IGB_RING_FLAG_RX_SCTP_CSUM, align 4
  %38 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %39 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %38, i32 0, i32 3
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %54, label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %44 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %43, i32 0, i32 1
  %45 = call i32 @u64_stats_update_begin(i32* %44)
  %46 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %47 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %52 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %51, i32 0, i32 1
  %53 = call i32 @u64_stats_update_end(i32* %52)
  br label %54

54:                                               ; preds = %42, %36
  br label %77

55:                                               ; preds = %24
  %56 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %57 = load i32, i32* @E1000_RXD_STAT_TCPCS, align 4
  %58 = load i32, i32* @E1000_RXD_STAT_UDPCS, align 4
  %59 = or i32 %57, %58
  %60 = call i64 @igb_test_staterr(%union.e1000_adv_rx_desc* %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %55
  %67 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %68 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %71 = bitcast %union.e1000_adv_rx_desc* %70 to %struct.TYPE_8__*
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  %76 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %66, %54, %23, %13
  ret void
}

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i64 @igb_test_staterr(%union.e1000_adv_rx_desc*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
