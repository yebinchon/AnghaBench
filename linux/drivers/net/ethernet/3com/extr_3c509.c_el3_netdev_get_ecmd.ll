; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_netdev_get_ecmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_netdev_get_ecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@WN0_ADDR_CONF = common dso_local global i64 0, align 8
@PORT_TP = common dso_local global i32 0, align 4
@PORT_AUI = common dso_local global i32 0, align 4
@PORT_BNC = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@WN0_CONF_CTRL = common dso_local global i64 0, align 8
@SUPPORTED_AUI = common dso_local global i32 0, align 4
@SUPPORTED_BNC = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@WN4_NETDIAG = common dso_local global i64 0, align 8
@FD_ENABLE = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_link_ksettings*)* @el3_netdev_get_ecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @el3_netdev_get_ecmd(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = call i32 @EL3WINDOW(i32 0)
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* @WN0_ADDR_CONF, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @inw(i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 14
  switch i32 %18, label %34 [
    i32 0, label %19
    i32 1, label %24
    i32 3, label %29
  ]

19:                                               ; preds = %2
  %20 = load i32, i32* @PORT_TP, align 4
  %21 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  br label %35

24:                                               ; preds = %2
  %25 = load i32, i32* @PORT_AUI, align 4
  %26 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  br label %35

29:                                               ; preds = %2
  %30 = load i32, i32* @PORT_BNC, align 4
  %31 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 4
  br label %34

34:                                               ; preds = %2, %29
  br label %35

35:                                               ; preds = %34, %24, %19
  %36 = load i32, i32* @DUPLEX_HALF, align 4
  %37 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %38 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  store i32 0, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* @WN0_CONF_CTRL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @inw(i64 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, 8192
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = load i32, i32* @SUPPORTED_AUI, align 4
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %48, %35
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, 4096
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @SUPPORTED_BNC, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, 512
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %60
  %65 = load i32, i32* @SUPPORTED_TP, align 4
  %66 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = call i32 @EL3WINDOW(i32 4)
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @WN4_NETDIAG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @inw(i64 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @FD_ENABLE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %64
  %83 = load i32, i32* @DUPLEX_FULL, align 4
  %84 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %85 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  br label %87

87:                                               ; preds = %82, %64
  br label %88

88:                                               ; preds = %87, %60
  %89 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %90 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %92, i32 %93)
  %95 = load i32, i32* @SPEED_10, align 4
  %96 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %97 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 4
  %99 = call i32 @EL3WINDOW(i32 1)
  ret void
}

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
