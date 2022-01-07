; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i64, i64 }
%struct.bnx2 = type { i32, i64, i64, i32, i32 }

@BNX2_FLAG_MSIX_CAP = common dso_local global i32 0, align 4
@disable_msi = common dso_local global i32 0, align 4
@RX_MAX_RINGS = common dso_local global i64 0, align 8
@TX_MAX_RINGS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_channels*)* @bnx2_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_set_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  %6 = alloca %struct.bnx2*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.bnx2* @netdev_priv(%struct.net_device* %10)
  store %struct.bnx2* %11, %struct.bnx2** %6, align 8
  store i64 1, i64* %7, align 8
  store i64 1, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %13 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BNX2_FLAG_MSIX_CAP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @disable_msi, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* @RX_MAX_RINGS, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* @TX_MAX_RINGS, align 8
  store i64 %23, i64* %8, align 8
  br label %24

24:                                               ; preds = %21, %18, %2
  %25 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %24
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %64

39:                                               ; preds = %30
  %40 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %44 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %49 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call i64 @netif_running(%struct.net_device* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %39
  %54 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %55 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %56 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %59 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @bnx2_change_ring_size(%struct.bnx2* %54, i32 %57, i32 %60, i32 1)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %53, %39
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %36
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnx2_change_ring_size(%struct.bnx2*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
