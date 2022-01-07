; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32, i32, %struct.TYPE_4__, %struct.ixgbe_ring**, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ixgbe_ring = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Requested MTU size is not supported with XDP\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@ixgbe_mac_82599EB = common dso_local global i64 0, align 8
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Setting MTU > 1500 will disable legacy VFs\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"changing MTU from %d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ixgbe_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_ring*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.ixgbe_adapter* %11, %struct.ixgbe_adapter** %6, align 8
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ETH_HLEN, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32, i32* @ETH_FCS_LEN, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* @VLAN_HLEN, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %48, %16
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %27 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %31, i32 0, i32 3
  %33 = load %struct.ixgbe_ring**, %struct.ixgbe_ring*** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.ixgbe_ring*, %struct.ixgbe_ring** %33, i64 %35
  %37 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %36, align 8
  store %struct.ixgbe_ring* %37, %struct.ixgbe_ring** %9, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %9, align 8
  %40 = call i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring* %39)
  %41 = icmp sgt i32 %38, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %30
  %43 = load i32, i32* @probe, align 4
  %44 = call i32 @e_warn(i32 %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %91

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %24

51:                                               ; preds = %24
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %54 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %52
  %60 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %61 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @ETH_DATA_LEN, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @probe, align 4
  %73 = call i32 @e_warn(i32 %72, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %67, %59, %52
  %75 = load i32, i32* @probe, align 4
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @e_info(i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.net_device*, %struct.net_device** %4, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.net_device*, %struct.net_device** %4, align 8
  %85 = call i64 @netif_running(%struct.net_device* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %74
  %88 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %89 = call i32 @ixgbe_reinit_locked(%struct.ixgbe_adapter* %88)
  br label %90

90:                                               ; preds = %87, %74
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %42
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_rx_bufsz(%struct.ixgbe_ring*) #1

declare dso_local i32 @e_warn(i32, i8*) #1

declare dso_local i32 @e_info(i32, i8*, i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ixgbe_reinit_locked(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
