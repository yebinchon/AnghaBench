; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@E1000_RXD_STAT_IXSM = common dso_local global i32 0, align 4
@E1000_RXD_ERR_TCPE = common dso_local global i32 0, align 4
@E1000_RXD_ERR_IPE = common dso_local global i32 0, align 4
@E1000_RXD_STAT_TCPCS = common dso_local global i32 0, align 4
@E1000_RXD_STAT_UDPCS = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*, i32, %struct.sk_buff*)* @e1000_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_rx_checksum(%struct.e1000_adapter* %0, i32 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 24
  store i32 %11, i32* %8, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %12)
  %14 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %57

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @E1000_RXD_STAT_IXSM, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %57

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @E1000_RXD_ERR_TCPE, align 4
  %32 = load i32, i32* @E1000_RXD_ERR_IPE, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %57

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @E1000_RXD_STAT_TCPCS, align 4
  %44 = load i32, i32* @E1000_RXD_STAT_UDPCS, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %57

49:                                               ; preds = %41
  %50 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %54 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %49, %48, %36, %28, %22
  ret void
}

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
