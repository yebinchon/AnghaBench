; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnxt = type { i32, %struct.bnxt_vnic_info*, i32 }
%struct.bnxt_vnic_info = type { i32, i64 }

@BNXT_STATE_OPEN = common dso_local global i32 0, align 4
@CFA_L2_SET_RX_MASK_REQ_MASK_PROMISCUOUS = common dso_local global i32 0, align 4
@CFA_L2_SET_RX_MASK_REQ_MASK_MCAST = common dso_local global i32 0, align 4
@CFA_L2_SET_RX_MASK_REQ_MASK_ALL_MCAST = common dso_local global i32 0, align 4
@CFA_L2_SET_RX_MASK_REQ_MASK_BCAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@BNXT_RX_MASK_SP_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bnxt_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.bnxt_vnic_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.bnxt* @netdev_priv(%struct.net_device* %8)
  store %struct.bnxt* %9, %struct.bnxt** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* @BNXT_STATE_OPEN, align 4
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 2
  %13 = call i32 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %99

16:                                               ; preds = %1
  %17 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 1
  %19 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %18, align 8
  %20 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %19, i64 0
  store %struct.bnxt_vnic_info* %20, %struct.bnxt_vnic_info** %4, align 8
  %21 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %22 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @CFA_L2_SET_RX_MASK_REQ_MASK_PROMISCUOUS, align 4
  %25 = load i32, i32* @CFA_L2_SET_RX_MASK_REQ_MASK_MCAST, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @CFA_L2_SET_RX_MASK_REQ_MASK_ALL_MCAST, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CFA_L2_SET_RX_MASK_REQ_MASK_BCAST, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IFF_PROMISC, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %16
  %41 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %42 = call i64 @bnxt_promisc_ok(%struct.bnxt* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @CFA_L2_SET_RX_MASK_REQ_MASK_PROMISCUOUS, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %40, %16
  %49 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %50 = call i32 @bnxt_uc_list_updated(%struct.bnxt* %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IFF_BROADCAST, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  %58 = load i32, i32* @CFA_L2_SET_RX_MASK_REQ_MASK_BCAST, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %48
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IFF_ALLMULTI, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i32, i32* @CFA_L2_SET_RX_MASK_REQ_MASK_ALL_MCAST, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %73 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  br label %77

74:                                               ; preds = %61
  %75 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %76 = call i32 @bnxt_mc_list_updated(%struct.bnxt* %75, i32* %7)
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %68
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %80 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %89, label %83

83:                                               ; preds = %77
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86, %83, %77
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %4, align 8
  %92 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* @BNXT_RX_MASK_SP_EVENT, align 4
  %94 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %95 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %94, i32 0, i32 0
  %96 = call i32 @set_bit(i32 %93, i32* %95)
  %97 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %98 = call i32 @bnxt_queue_sp_work(%struct.bnxt* %97)
  br label %99

99:                                               ; preds = %15, %89, %86
  ret void
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @bnxt_promisc_ok(%struct.bnxt*) #1

declare dso_local i32 @bnxt_uc_list_updated(%struct.bnxt*) #1

declare dso_local i32 @bnxt_mc_list_updated(%struct.bnxt*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnxt_queue_sp_work(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
