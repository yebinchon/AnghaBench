; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_rx_checksum_adv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_rx_checksum_adv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@E1000_RXD_STAT_IXSM = common dso_local global i32 0, align 4
@IGBVF_FLAG_RX_CSUM_DISABLED = common dso_local global i32 0, align 4
@E1000_RXDEXT_STATERR_TCPE = common dso_local global i32 0, align 4
@E1000_RXDEXT_STATERR_IPE = common dso_local global i32 0, align 4
@E1000_RXD_STAT_TCPCS = common dso_local global i32 0, align 4
@E1000_RXD_STAT_UDPCS = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igbvf_adapter*, i32, %struct.sk_buff*)* @igbvf_rx_checksum_adv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_rx_checksum_adv(%struct.igbvf_adapter* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.igbvf_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %8 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %7)
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @E1000_RXD_STAT_IXSM, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IGBVF_FLAG_RX_CSUM_DISABLED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %3
  br label %49

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @E1000_RXDEXT_STATERR_TCPE, align 4
  %24 = load i32, i32* @E1000_RXDEXT_STATERR_IPE, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %30 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %49

33:                                               ; preds = %21
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @E1000_RXD_STAT_TCPCS, align 4
  %36 = load i32, i32* @E1000_RXD_STAT_UDPCS, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %33
  %45 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %28, %20
  ret void
}

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
