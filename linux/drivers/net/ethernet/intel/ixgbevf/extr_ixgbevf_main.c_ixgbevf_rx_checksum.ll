; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%union.ixgbe_adv_rx_desc = type { i32 }
%struct.sk_buff = type { i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_IPCS = common dso_local global i32 0, align 4
@IXGBE_RXDADV_ERR_IPE = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_L4CS = common dso_local global i32 0, align 4
@IXGBE_RXDADV_ERR_TCPE = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbevf_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*)* @ixgbevf_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_rx_checksum(%struct.ixgbevf_ring* %0, %union.ixgbe_adv_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ixgbevf_ring*, align 8
  %5 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %4, align 8
  store %union.ixgbe_adv_rx_desc* %1, %union.ixgbe_adv_rx_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %8 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %7)
  %9 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %55

18:                                               ; preds = %3
  %19 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %20 = load i32, i32* @IXGBE_RXD_STAT_IPCS, align 4
  %21 = call i64 @ixgbevf_test_staterr(%union.ixgbe_adv_rx_desc* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %25 = load i32, i32* @IXGBE_RXDADV_ERR_IPE, align 4
  %26 = call i64 @ixgbevf_test_staterr(%union.ixgbe_adv_rx_desc* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %30 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  br label %55

34:                                               ; preds = %23, %18
  %35 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %36 = load i32, i32* @IXGBE_RXD_STAT_L4CS, align 4
  %37 = call i64 @ixgbevf_test_staterr(%union.ixgbe_adv_rx_desc* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %55

40:                                               ; preds = %34
  %41 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %5, align 8
  %42 = load i32, i32* @IXGBE_RXDADV_ERR_TCPE, align 4
  %43 = call i64 @ixgbevf_test_staterr(%union.ixgbe_adv_rx_desc* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %4, align 8
  %47 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  br label %55

51:                                               ; preds = %40
  %52 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %45, %39, %28, %17
  ret void
}

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i64 @ixgbevf_test_staterr(%union.ixgbe_adv_rx_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
