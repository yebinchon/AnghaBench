; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_set_rxbufsize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_set_rxbufsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i32, i32 }
%struct.net_device = type { i32 }

@AT_RX_BUF_SIZE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@VLAN_HLEN = common dso_local global i64 0, align 8
@NET_SKB_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1c_adapter*, %struct.net_device*)* @atl1c_set_rxbufsize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_set_rxbufsize(%struct.atl1c_adapter* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.atl1c_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @AT_RX_BUF_SIZE, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @ETH_HLEN, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* @ETH_FCS_LEN, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* @VLAN_HLEN, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @roundup(i64 %21, i32 8)
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @AT_RX_BUF_SIZE, align 4
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi i32 [ %22, %13 ], [ %24, %23 ]
  %27 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NET_SKB_PAD, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @SKB_DATA_ALIGN(i32 %33)
  %35 = call i32 @SKB_DATA_ALIGN(i32 4)
  %36 = add i32 %34, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @roundup_pow_of_two(i32 %37)
  %39 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  ret void
}

declare dso_local i32 @roundup(i64, i32) #1

declare dso_local i32 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
