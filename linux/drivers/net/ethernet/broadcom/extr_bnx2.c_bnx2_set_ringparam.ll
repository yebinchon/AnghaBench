; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32 }
%struct.bnx2 = type { i32 }

@BNX2_MAX_TOTAL_RX_DESC_CNT = common dso_local global i32 0, align 4
@BNX2_MAX_TX_DESC_CNT = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @bnx2_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.bnx2*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.bnx2* @netdev_priv(%struct.net_device* %8)
  store %struct.bnx2* %9, %struct.bnx2** %6, align 8
  %10 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @BNX2_MAX_TOTAL_RX_DESC_CNT, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %27, label %15

15:                                               ; preds = %2
  %16 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @BNX2_MAX_TX_DESC_CNT, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21, %15, %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %40

30:                                               ; preds = %21
  %31 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %32 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bnx2_change_ring_size(%struct.bnx2* %31, i32 %34, i32 %37, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %30, %27
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bnx2_change_ring_size(%struct.bnx2*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
