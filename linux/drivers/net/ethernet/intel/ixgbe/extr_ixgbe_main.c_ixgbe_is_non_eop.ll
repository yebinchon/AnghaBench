; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_is_non_eop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_is_non_eop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.sk_buff* }
%union.ixgbe_adv_rx_desc = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_14__ = type { i32 }

@IXGBE_RXDADV_RSCCNT_MASK = common dso_local global i32 0, align 4
@IXGBE_RXDADV_RSCCNT_SHIFT = common dso_local global i32 0, align 4
@IXGBE_RXDADV_NEXTP_MASK = common dso_local global i32 0, align 4
@IXGBE_RXDADV_NEXTP_SHIFT = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_EOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_ring*, %union.ixgbe_adv_rx_desc*, %struct.sk_buff*)* @ixgbe_is_non_eop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_is_non_eop(%struct.ixgbe_ring* %0, %union.ixgbe_adv_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %5, align 8
  store %union.ixgbe_adv_rx_desc* %1, %union.ixgbe_adv_rx_desc** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %11 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %12 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %17 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %27 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @IXGBE_RX_DESC(%struct.ixgbe_ring* %28, i32 %29)
  %31 = call i32 @prefetch(i32 %30)
  %32 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %33 = call i64 @ring_is_rsc_enabled(%struct.ixgbe_ring* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %23
  %36 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %6, align 8
  %37 = bitcast %union.ixgbe_adv_rx_desc* %36 to %struct.TYPE_11__*
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @IXGBE_RXDADV_RSCCNT_MASK, align 4
  %43 = call i32 @cpu_to_le32(i32 %42)
  %44 = and i32 %41, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %35
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* @IXGBE_RXDADV_RSCCNT_SHIFT, align 4
  %52 = load i32, i32* %10, align 4
  %53 = ashr i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = call %struct.TYPE_14__* @IXGBE_CB(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %55
  store i32 %60, i32* %58, align 4
  %61 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %6, align 8
  %62 = bitcast %union.ixgbe_adv_rx_desc* %61 to %struct.TYPE_11__*
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @le32_to_cpu(i32 %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @IXGBE_RXDADV_NEXTP_MASK, align 4
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @IXGBE_RXDADV_NEXTP_SHIFT, align 4
  %71 = load i32, i32* %8, align 4
  %72 = ashr i32 %71, %70
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %48, %35
  br label %74

74:                                               ; preds = %73, %23
  %75 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %6, align 8
  %76 = load i32, i32* @IXGBE_RXD_STAT_EOP, align 4
  %77 = call i32 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %75, i32 %76)
  %78 = call i64 @likely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %95

81:                                               ; preds = %74
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %84 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %83, i32 0, i32 3
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  store %struct.sk_buff* %82, %struct.sk_buff** %89, align 8
  %90 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %91 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  store i32 1, i32* %4, align 4
  br label %95

95:                                               ; preds = %81, %80
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @prefetch(i32) #1

declare dso_local i32 @IXGBE_RX_DESC(%struct.ixgbe_ring*, i32) #1

declare dso_local i64 @ring_is_rsc_enabled(%struct.ixgbe_ring*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_14__* @IXGBE_CB(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
