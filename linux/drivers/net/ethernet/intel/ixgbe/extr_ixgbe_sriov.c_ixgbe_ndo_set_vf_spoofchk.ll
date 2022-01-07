; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_ndo_set_vf_spoofchk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_ndo_set_vf_spoofchk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32, %struct.TYPE_4__*, %struct.ixgbe_hw }
%struct.TYPE_4__ = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32)*, i32 (%struct.ixgbe_hw.2*, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@IXGBE_ETQF_FILTER_LLDP = common dso_local global i32 0, align 4
@IXGBE_ETQF_FILTER_EN = common dso_local global i32 0, align 4
@IXGBE_ETQF_TX_ANTISPOOF = common dso_local global i32 0, align 4
@ETH_P_LLDP = common dso_local global i32 0, align 4
@IXGBE_ETQF_FILTER_FC = common dso_local global i32 0, align 4
@ETH_P_PAUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_ndo_set_vf_spoofchk(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ixgbe_adapter*, align 8
  %9 = alloca %struct.ixgbe_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.ixgbe_adapter* %11, %struct.ixgbe_adapter** %8, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 2
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %87

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %23, i32* %30, align 4
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32 (%struct.ixgbe_hw.2*, i32, i32)*, i32 (%struct.ixgbe_hw.2*, i32, i32)** %34, align 8
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %37 = bitcast %struct.ixgbe_hw* %36 to %struct.ixgbe_hw.2*
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 %35(%struct.ixgbe_hw.2* %37, i32 %38, i32 %39)
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32 (%struct.ixgbe_hw.1*, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32)** %44, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %47 = bitcast %struct.ixgbe_hw* %46 to %struct.ixgbe_hw.1*
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 %45(%struct.ixgbe_hw.1* %47, i32 %48, i32 %49)
  %51 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %52 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %54, align 8
  %56 = icmp ne i32 (%struct.ixgbe_hw.0*, i32, i32)* %55, null
  br i1 %56, label %57, label %86

57:                                               ; preds = %22
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %59 = load i32, i32* @IXGBE_ETQF_FILTER_LLDP, align 4
  %60 = call i32 @IXGBE_ETQF(i32 %59)
  %61 = load i32, i32* @IXGBE_ETQF_FILTER_EN, align 4
  %62 = load i32, i32* @IXGBE_ETQF_TX_ANTISPOOF, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @ETH_P_LLDP, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %58, i32 %60, i32 %65)
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %68 = load i32, i32* @IXGBE_ETQF_FILTER_FC, align 4
  %69 = call i32 @IXGBE_ETQF(i32 %68)
  %70 = load i32, i32* @IXGBE_ETQF_FILTER_EN, align 4
  %71 = load i32, i32* @IXGBE_ETQF_TX_ANTISPOOF, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @ETH_P_PAUSE, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %67, i32 %69, i32 %74)
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %79, align 8
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %82 = bitcast %struct.ixgbe_hw* %81 to %struct.ixgbe_hw.0*
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 %80(%struct.ixgbe_hw.0* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %57, %22
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %19
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_ETQF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
