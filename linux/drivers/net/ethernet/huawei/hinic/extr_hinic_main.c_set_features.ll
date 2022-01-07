; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { i32 }

@HINIC_RX_CSUM_OFFLOAD_EN = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@HINIC_TSO_ENABLE = common dso_local global i32 0, align 4
@HINIC_TSO_DISABLE = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@HINIC_LRO_RX_TIMER_DEFAULT = common dso_local global i32 0, align 4
@HINIC_LRO_MAX_WQE_NUM_DEFAULT = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_dev*, i32, i32, i32)* @set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_features(%struct.hinic_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hinic_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %19

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = xor i32 %16, %17
  br label %19

19:                                               ; preds = %15, %14
  %20 = phi i32 [ -1, %14 ], [ %18, %15 ]
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @HINIC_RX_CSUM_OFFLOAD_EN, align 4
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @NETIF_F_TSO, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @NETIF_F_TSO, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @HINIC_TSO_ENABLE, align 4
  br label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @HINIC_TSO_DISABLE, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = call i32 @hinic_port_set_tso(%struct.hinic_dev* %27, i32 %37)
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %36, %19
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @hinic_set_rx_csum_offload(%struct.hinic_dev* %45, i32 %46)
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @NETIF_F_LRO, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @NETIF_F_LRO, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* @HINIC_LRO_RX_TIMER_DEFAULT, align 4
  %63 = load i32, i32* @HINIC_LRO_MAX_WQE_NUM_DEFAULT, align 4
  %64 = call i32 @hinic_set_rx_lro_state(%struct.hinic_dev* %54, i32 %61, i32 %62, i32 %63)
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %53, %48
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @hinic_set_rx_vlan_offload(%struct.hinic_dev* %71, i32 %78)
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %70, %65
  %81 = load i32, i32* %11, align 4
  ret i32 %81
}

declare dso_local i32 @hinic_port_set_tso(%struct.hinic_dev*, i32) #1

declare dso_local i32 @hinic_set_rx_csum_offload(%struct.hinic_dev*, i32) #1

declare dso_local i32 @hinic_set_rx_lro_state(%struct.hinic_dev*, i32, i32, i32) #1

declare dso_local i32 @hinic_set_rx_vlan_offload(%struct.hinic_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
