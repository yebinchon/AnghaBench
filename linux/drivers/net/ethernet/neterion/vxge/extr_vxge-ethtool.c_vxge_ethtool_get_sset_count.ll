; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-ethtool.c_vxge_ethtool_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-ethtool.c_vxge_ethtool_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vxgedev = type { i32, i32 }

@VXGE_TITLE_LEN = common dso_local global i32 0, align 4
@VXGE_HW_VPATH_STATS_LEN = common dso_local global i32 0, align 4
@VXGE_HW_AGGR_STATS_LEN = common dso_local global i32 0, align 4
@VXGE_HW_PORT_STATS_LEN = common dso_local global i32 0, align 4
@VXGE_HW_VPATH_TX_STATS_LEN = common dso_local global i32 0, align 4
@VXGE_HW_VPATH_RX_STATS_LEN = common dso_local global i32 0, align 4
@VXGE_SW_STATS_LEN = common dso_local global i32 0, align 4
@DRIVER_STAT_LEN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @vxge_ethtool_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_ethtool_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vxgedev*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.vxgedev* @netdev_priv(%struct.net_device* %7)
  store %struct.vxgedev* %8, %struct.vxgedev** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %50 [
    i32 128, label %10
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @VXGE_TITLE_LEN, align 4
  %12 = load %struct.vxgedev*, %struct.vxgedev** %6, align 8
  %13 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @VXGE_HW_VPATH_STATS_LEN, align 4
  %16 = mul nsw i32 %14, %15
  %17 = add nsw i32 %11, %16
  %18 = load %struct.vxgedev*, %struct.vxgedev** %6, align 8
  %19 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @VXGE_HW_AGGR_STATS_LEN, align 4
  %22 = mul nsw i32 %20, %21
  %23 = add nsw i32 %17, %22
  %24 = load %struct.vxgedev*, %struct.vxgedev** %6, align 8
  %25 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @VXGE_HW_PORT_STATS_LEN, align 4
  %28 = mul nsw i32 %26, %27
  %29 = add nsw i32 %23, %28
  %30 = load %struct.vxgedev*, %struct.vxgedev** %6, align 8
  %31 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @VXGE_HW_VPATH_TX_STATS_LEN, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %29, %34
  %36 = load %struct.vxgedev*, %struct.vxgedev** %6, align 8
  %37 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @VXGE_HW_VPATH_RX_STATS_LEN, align 4
  %40 = mul nsw i32 %38, %39
  %41 = add nsw i32 %35, %40
  %42 = load %struct.vxgedev*, %struct.vxgedev** %6, align 8
  %43 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @VXGE_SW_STATS_LEN, align 4
  %46 = mul nsw i32 %44, %45
  %47 = add nsw i32 %41, %46
  %48 = load i32, i32* @DRIVER_STAT_LEN, align 4
  %49 = add nsw i32 %47, %48
  store i32 %49, i32* %3, align 4
  br label %53

50:                                               ; preds = %2
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %50, %10
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.vxgedev* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
