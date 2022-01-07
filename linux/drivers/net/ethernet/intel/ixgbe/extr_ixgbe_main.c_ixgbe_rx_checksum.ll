; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { %struct.TYPE_12__, i32, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%union.ixgbe_adv_rx_desc = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32, i32, i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@IXGBE_RXDADV_PKTTYPE_VXLAN = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_IPCS = common dso_local global i32 0, align 4
@IXGBE_RXDADV_ERR_IPE = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_L4CS = common dso_local global i32 0, align 4
@IXGBE_RXDADV_ERR_TCPE = common dso_local global i32 0, align 4
@IXGBE_RXDADV_PKTTYPE_UDP = common dso_local global i32 0, align 4
@__IXGBE_RX_CSUM_UDP_ZERO_ERR = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_OUTERIPCS = common dso_local global i32 0, align 4
@IXGBE_RXDADV_ERR_OUTERIPER = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*)* @ixgbe_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_rx_checksum(%struct.ixgbe_ring* %0, %union.ixgbe_adv_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %4, align 8
  store %union.ixgbe_adv_rx_desc* %1, %union.ixgbe_adv_rx_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %10 = bitcast %union.ixgbe_adv_rx_desc* %9 to %struct.TYPE_10__*
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %16)
  %18 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %19 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %18, i32 0, i32 2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %106

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @IXGBE_RXDADV_PKTTYPE_VXLAN, align 4
  %30 = call i32 @cpu_to_le16(i32 %29)
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  store i32 1, i32* %8, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %38 = load i32, i32* @IXGBE_RXD_STAT_IPCS, align 4
  %39 = call i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %36
  %42 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %43 = load i32, i32* @IXGBE_RXDADV_ERR_IPE, align 4
  %44 = call i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %48 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %106

52:                                               ; preds = %41, %36
  %53 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %54 = load i32, i32* @IXGBE_RXD_STAT_L4CS, align 4
  %55 = call i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %106

58:                                               ; preds = %52
  %59 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %60 = load i32, i32* @IXGBE_RXDADV_ERR_TCPE, align 4
  %61 = call i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %58
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @IXGBE_RXDADV_PKTTYPE_UDP, align 4
  %66 = call i32 @cpu_to_le16(i32 %65)
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load i32, i32* @__IXGBE_RX_CSUM_UDP_ZERO_ERR, align 4
  %71 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %72 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %71, i32 0, i32 1
  %73 = call i64 @test_bit(i32 %70, i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %106

76:                                               ; preds = %69, %63
  %77 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %78 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  br label %106

82:                                               ; preds = %58
  %83 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %82
  %89 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %90 = load i32, i32* @IXGBE_RXD_STAT_OUTERIPCS, align 4
  %91 = call i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  br label %106

94:                                               ; preds = %88
  %95 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %96 = load i32, i32* @IXGBE_RXDADV_ERR_OUTERIPER, align 4
  %97 = call i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @CHECKSUM_NONE, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 4
  br label %106

103:                                              ; preds = %94
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %26, %46, %57, %75, %76, %93, %99, %103, %82
  ret void
}

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
