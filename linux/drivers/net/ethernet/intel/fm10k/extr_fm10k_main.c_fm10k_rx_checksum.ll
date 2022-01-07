; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_ring = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%union.fm10k_rx_desc = type { i32 }
%struct.sk_buff = type { i32, i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@FM10K_RXD_STATUS_L4E = common dso_local global i32 0, align 4
@FM10K_RXD_STATUS_L4E2 = common dso_local global i32 0, align 4
@FM10K_RXD_STATUS_IPE = common dso_local global i32 0, align 4
@FM10K_RXD_STATUS_IPE2 = common dso_local global i32 0, align 4
@FM10K_RXD_STATUS_L4CS2 = common dso_local global i32 0, align 4
@FM10K_RXD_STATUS_L4CS = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_ring*, %union.fm10k_rx_desc*, %struct.sk_buff*)* @fm10k_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_rx_checksum(%struct.fm10k_ring* %0, %union.fm10k_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.fm10k_ring*, align 8
  %5 = alloca %union.fm10k_rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.fm10k_ring* %0, %struct.fm10k_ring** %4, align 8
  store %union.fm10k_rx_desc* %1, %union.fm10k_rx_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %8 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %7)
  %9 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %10 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %59

18:                                               ; preds = %3
  %19 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %5, align 8
  %20 = load i32, i32* @FM10K_RXD_STATUS_L4E, align 4
  %21 = load i32, i32* @FM10K_RXD_STATUS_L4E2, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @FM10K_RXD_STATUS_IPE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @FM10K_RXD_STATUS_IPE2, align 4
  %26 = or i32 %24, %25
  %27 = call i64 @fm10k_test_staterr(%union.fm10k_rx_desc* %19, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %18
  %30 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %31 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %59

35:                                               ; preds = %18
  %36 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %5, align 8
  %37 = load i32, i32* @FM10K_RXD_STATUS_L4CS2, align 4
  %38 = call i64 @fm10k_test_staterr(%union.fm10k_rx_desc* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  store i32 1, i32* %42, align 4
  br label %50

43:                                               ; preds = %35
  %44 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %5, align 8
  %45 = load i32, i32* @FM10K_RXD_STATUS_L4CS, align 4
  %46 = call i64 @fm10k_test_staterr(%union.fm10k_rx_desc* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  br label %59

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49, %40
  %51 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %55 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %50, %48, %29, %17
  ret void
}

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i64 @fm10k_test_staterr(%union.fm10k_rx_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
