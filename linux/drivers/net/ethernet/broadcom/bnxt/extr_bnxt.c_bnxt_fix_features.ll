; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_fix_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_fix_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnxt = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NETIF_F_NTUPLE = common dso_local global i32 0, align 4
@BNXT_FLAG_NO_AGG_RINGS = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@NETIF_F_GRO_HW = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_STAG_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bnxt_fix_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_fix_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.bnxt* @netdev_priv(%struct.net_device* %6)
  store %struct.bnxt* %7, %struct.bnxt** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %14 = call i32 @bnxt_rfs_capable(%struct.bnxt* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %16, %12, %2
  %22 = load %struct.bnxt*, %struct.bnxt** %5, align 8
  %23 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BNXT_FLAG_NO_AGG_RINGS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32, i32* @NETIF_F_LRO, align 4
  %30 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %28, %21
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @NETIF_F_GRO, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @NETIF_F_GRO_HW, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* @NETIF_F_LRO, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %58 = load i32, i32* @NETIF_F_HW_VLAN_STAG_RX, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %62 = load i32, i32* @NETIF_F_HW_VLAN_STAG_RX, align 4
  %63 = or i32 %61, %62
  %64 = icmp ne i32 %60, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %55
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %74 = load i32, i32* @NETIF_F_HW_VLAN_STAG_RX, align 4
  %75 = or i32 %73, %74
  %76 = xor i32 %75, -1
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, %76
  store i32 %78, i32* %4, align 4
  br label %85

79:                                               ; preds = %65
  %80 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %81 = load i32, i32* @NETIF_F_HW_VLAN_STAG_RX, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %79, %72
  br label %86

86:                                               ; preds = %85, %55
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bnxt_rfs_capable(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
