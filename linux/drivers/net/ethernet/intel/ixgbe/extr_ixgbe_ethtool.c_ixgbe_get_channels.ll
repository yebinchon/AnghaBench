; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i8*, i8*, i32 }
%struct.ixgbe_adapter = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IXGBE_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@NON_Q_VECTORS = common dso_local global i8* null, align 8
@RING_F_RSS = common dso_local global i64 0, align 8
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@RING_F_FDIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_channels*)* @ixgbe_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_get_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_channels*, align 8
  %5 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.ixgbe_adapter* %7, %struct.ixgbe_adapter** %5, align 8
  %8 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %9 = call i32 @ixgbe_max_channels(%struct.ixgbe_adapter* %8)
  %10 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %11 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IXGBE_FLAG_MSIX_ENABLED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i8*, i8** @NON_Q_VECTORS, align 8
  %20 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %20, i32 0, i32 2
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @NON_Q_VECTORS, align 8
  %23 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %18, %2
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* @RING_F_RSS, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %34 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  br label %70

40:                                               ; preds = %25
  %41 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %42 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %70

48:                                               ; preds = %40
  %49 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %70

54:                                               ; preds = %48
  %55 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %56 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %70

60:                                               ; preds = %54
  %61 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %5, align 8
  %62 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i64, i64* @RING_F_FDIR, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %69 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %60, %59, %53, %47, %39
  ret void
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_max_channels(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
