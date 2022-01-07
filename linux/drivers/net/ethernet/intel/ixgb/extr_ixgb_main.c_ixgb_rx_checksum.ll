; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { i32, i32 }
%struct.ixgb_rx_desc = type { i32, i32 }
%struct.sk_buff = type { i32 }

@IXGB_RX_DESC_STATUS_IXSM = common dso_local global i32 0, align 4
@IXGB_RX_DESC_STATUS_TCPCS = common dso_local global i32 0, align 4
@IXGB_RX_DESC_ERRORS_TCPE = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgb_adapter*, %struct.ixgb_rx_desc*, %struct.sk_buff*)* @ixgb_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_rx_checksum(%struct.ixgb_adapter* %0, %struct.ixgb_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ixgb_adapter*, align 8
  %5 = alloca %struct.ixgb_rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %4, align 8
  store %struct.ixgb_rx_desc* %1, %struct.ixgb_rx_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %5, align 8
  %8 = getelementptr inbounds %struct.ixgb_rx_desc, %struct.ixgb_rx_desc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IXGB_RX_DESC_STATUS_IXSM, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %5, align 8
  %15 = getelementptr inbounds %struct.ixgb_rx_desc, %struct.ixgb_rx_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IXGB_RX_DESC_STATUS_TCPCS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13, %3
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %21)
  br label %45

23:                                               ; preds = %13
  %24 = load %struct.ixgb_rx_desc*, %struct.ixgb_rx_desc** %5, align 8
  %25 = getelementptr inbounds %struct.ixgb_rx_desc, %struct.ixgb_rx_desc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IXGB_RX_DESC_ERRORS_TCPE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %31)
  %33 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %45

37:                                               ; preds = %23
  %38 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %20, %37, %30
  ret void
}

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
