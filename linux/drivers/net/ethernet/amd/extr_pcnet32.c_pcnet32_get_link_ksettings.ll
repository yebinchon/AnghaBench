; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i8*, i32 }
%struct.pcnet32_private = type { i64, i32, i64, i64, %struct.TYPE_4__*, i64, i32, i64 }
%struct.TYPE_4__ = type { i32 (i32, i32)* }

@PCNET32_79C970A = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@PORT_AUI = common dso_local global i8* null, align 8
@PORT_TP = common dso_local global i8* null, align 8
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_AUI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @pcnet32_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcnet32_get_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.pcnet32_private*, align 8
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %7)
  store %struct.pcnet32_private* %8, %struct.pcnet32_private** %5, align 8
  %9 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %10 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %9, i32 0, i32 1
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %14 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %13, i32 0, i32 7
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %19 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %18, i32 0, i32 6
  %20 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %21 = call i32 @mii_ethtool_get_link_ksettings(i32* %19, %struct.ethtool_link_ksettings* %20)
  br label %104

22:                                               ; preds = %2
  %23 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %24 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCNET32_79C970A, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %103

28:                                               ; preds = %22
  %29 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %30 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %28
  %34 = load i32, i32* @AUTONEG_ENABLE, align 4
  %35 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %36 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  store i32 %34, i32* %37, align 8
  %38 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %39 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %38, i32 0, i32 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32 (i32, i32)*, i32 (i32, i32)** %41, align 8
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 %42(i32 %45, i32 4)
  %47 = icmp eq i32 %46, 192
  br i1 %47, label %48, label %53

48:                                               ; preds = %33
  %49 = load i8*, i8** @PORT_AUI, align 8
  %50 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %51 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i8* %49, i8** %52, align 8
  br label %58

53:                                               ; preds = %33
  %54 = load i8*, i8** @PORT_TP, align 8
  %55 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %56 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i8* %54, i8** %57, align 8
  br label %58

58:                                               ; preds = %53, %48
  br label %77

59:                                               ; preds = %28
  %60 = load i32, i32* @AUTONEG_DISABLE, align 4
  %61 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %62 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  store i32 %60, i32* %63, align 8
  %64 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %65 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i8*, i8** @PORT_TP, align 8
  br label %72

70:                                               ; preds = %59
  %71 = load i8*, i8** @PORT_AUI, align 8
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i8* [ %69, %68 ], [ %71, %70 ]
  %74 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %75 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  store i8* %73, i8** %76, align 8
  br label %77

77:                                               ; preds = %72, %58
  %78 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %79 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* @DUPLEX_FULL, align 4
  br label %86

84:                                               ; preds = %77
  %85 = load i32, i32* @DUPLEX_HALF, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %89 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @SPEED_10, align 4
  %92 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %93 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %96 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @SUPPORTED_TP, align 4
  %100 = load i32, i32* @SUPPORTED_AUI, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %86, %22
  br label %104

104:                                              ; preds = %103, %17
  %105 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %106 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %105, i32 0, i32 1
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  ret i32 0
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mii_ethtool_get_link_ksettings(i32*, %struct.ethtool_link_ksettings*) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
