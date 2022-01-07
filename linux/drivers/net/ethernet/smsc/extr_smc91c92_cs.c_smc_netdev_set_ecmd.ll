; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_netdev_set_ecmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_netdev_set_ecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@SPEED_10 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@PORT_TP = common dso_local global i64 0, align 8
@PORT_AUI = common dso_local global i64 0, align 8
@TCR = common dso_local global i64 0, align 8
@TCR_FDUPLX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @smc_netdev_set_ecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc_netdev_set_ecmd(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SPEED_10, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %96

20:                                               ; preds = %2
  %21 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DUPLEX_HALF, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DUPLEX_FULL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %96

37:                                               ; preds = %27, %20
  %38 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PORT_TP, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %37
  %45 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PORT_AUI, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %96

54:                                               ; preds = %44, %37
  %55 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PORT_AUI, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = call i32 @smc_set_xcvr(%struct.net_device* %62, i32 1)
  br label %67

64:                                               ; preds = %54
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = call i32 @smc_set_xcvr(%struct.net_device* %65, i32 0)
  br label %67

67:                                               ; preds = %64, %61
  %68 = call i32 @SMC_SELECT_BANK(i32 0)
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = load i64, i64* @TCR, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @inw(i64 %72)
  store i32 %73, i32* %6, align 4
  %74 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DUPLEX_FULL, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %67
  %81 = load i32, i32* @TCR_FDUPLX, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %89

84:                                               ; preds = %67
  %85 = load i32, i32* @TCR_FDUPLX, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = zext i32 %91 to i64
  %93 = load i64, i64* @TCR, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @outw(i32 %90, i64 %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %89, %51, %34, %17
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @smc_set_xcvr(%struct.net_device*, i32) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
