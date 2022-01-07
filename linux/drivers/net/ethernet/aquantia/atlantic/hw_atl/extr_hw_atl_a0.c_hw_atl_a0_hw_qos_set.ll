; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_a0.c_hw_atl_a0_hw_qos_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_a0.c_hw_atl_a0_hw_qos_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HW_ATL_A0_TXBUF_MAX = common dso_local global i32 0, align 4
@AQ_NIC_FC_RX = common dso_local global i32 0, align 4
@HW_ATL_A0_RXBUF_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*)* @hw_atl_a0_hw_qos_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_a0_hw_qos_set(%struct.aq_hw_s* %0) #0 {
  %2 = alloca %struct.aq_hw_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %8 = call i32 @hw_atl_tps_tx_pkt_shed_desc_rate_curr_time_res_set(%struct.aq_hw_s* %7, i32 0)
  %9 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %10 = call i32 @hw_atl_tps_tx_pkt_shed_desc_rate_lim_set(%struct.aq_hw_s* %9, i32 10)
  %11 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %12 = call i32 @hw_atl_tps_tx_pkt_shed_desc_vm_arb_mode_set(%struct.aq_hw_s* %11, i32 0)
  %13 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %14 = call i32 @hw_atl_tps_tx_pkt_shed_desc_tc_arb_mode_set(%struct.aq_hw_s* %13, i32 0)
  %15 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %16 = call i32 @hw_atl_tps_tx_pkt_shed_data_arb_mode_set(%struct.aq_hw_s* %15, i32 0)
  %17 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %18 = call i32 @hw_atl_tps_tx_pkt_shed_tc_data_max_credit_set(%struct.aq_hw_s* %17, i32 4095, i32 0)
  %19 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %20 = call i32 @hw_atl_tps_tx_pkt_shed_tc_data_weight_set(%struct.aq_hw_s* %19, i32 100, i32 0)
  %21 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %22 = call i32 @hw_atl_tps_tx_pkt_shed_desc_tc_max_credit_set(%struct.aq_hw_s* %21, i32 80, i32 0)
  %23 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %24 = call i32 @hw_atl_tps_tx_pkt_shed_desc_tc_weight_set(%struct.aq_hw_s* %23, i32 30, i32 0)
  %25 = load i32, i32* @HW_ATL_A0_TXBUF_MAX, align 4
  store i32 %25, i32* %4, align 4
  %26 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @hw_atl_tpb_tx_pkt_buff_size_per_tc_set(%struct.aq_hw_s* %26, i32 %27, i32 %28)
  %30 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = mul i32 %31, 32
  %33 = mul i32 %32, 66
  %34 = udiv i32 %33, 100
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @hw_atl_tpb_tx_buff_hi_threshold_per_tc_set(%struct.aq_hw_s* %30, i32 %34, i32 %35)
  %37 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = mul i32 %38, 32
  %40 = mul i32 %39, 50
  %41 = udiv i32 %40, 100
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @hw_atl_tpb_tx_buff_lo_threshold_per_tc_set(%struct.aq_hw_s* %37, i32 %41, i32 %42)
  store i32 0, i32* %3, align 4
  %44 = load i32, i32* @AQ_NIC_FC_RX, align 4
  %45 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %46 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %44, %49
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @HW_ATL_A0_RXBUF_MAX, align 4
  store i32 %51, i32* %4, align 4
  %52 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @hw_atl_rpb_rx_pkt_buff_size_per_tc_set(%struct.aq_hw_s* %52, i32 %53, i32 %54)
  %56 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = mul i32 %57, 32
  %59 = mul i32 %58, 66
  %60 = udiv i32 %59, 100
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @hw_atl_rpb_rx_buff_hi_threshold_per_tc_set(%struct.aq_hw_s* %56, i32 %60, i32 %61)
  %63 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %64 = load i32, i32* %4, align 4
  %65 = mul i32 %64, 32
  %66 = mul i32 %65, 50
  %67 = udiv i32 %66, 100
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @hw_atl_rpb_rx_buff_lo_threshold_per_tc_set(%struct.aq_hw_s* %63, i32 %67, i32 %68)
  %70 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @hw_atl_rpb_rx_xoff_en_per_tc_set(%struct.aq_hw_s* %70, i32 %74, i32 %75)
  store i32 8, i32* %5, align 4
  br label %77

77:                                               ; preds = %81, %1
  %78 = load i32, i32* %5, align 4
  %79 = add i32 %78, -1
  store i32 %79, i32* %5, align 4
  %80 = icmp ne i32 %78, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @hw_atl_rpf_rpb_user_priority_tc_map_set(%struct.aq_hw_s* %82, i32 %83, i32 0)
  br label %77

85:                                               ; preds = %77
  %86 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %87 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %86)
  ret i32 %87
}

declare dso_local i32 @hw_atl_tps_tx_pkt_shed_desc_rate_curr_time_res_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_tps_tx_pkt_shed_desc_rate_lim_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_tps_tx_pkt_shed_desc_vm_arb_mode_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_tps_tx_pkt_shed_desc_tc_arb_mode_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_tps_tx_pkt_shed_data_arb_mode_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_tps_tx_pkt_shed_tc_data_max_credit_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_tps_tx_pkt_shed_tc_data_weight_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_tps_tx_pkt_shed_desc_tc_max_credit_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_tps_tx_pkt_shed_desc_tc_weight_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_tpb_tx_pkt_buff_size_per_tc_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_tpb_tx_buff_hi_threshold_per_tc_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_tpb_tx_buff_lo_threshold_per_tc_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpb_rx_pkt_buff_size_per_tc_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpb_rx_buff_hi_threshold_per_tc_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpb_rx_buff_lo_threshold_per_tc_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpb_rx_xoff_en_per_tc_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpf_rpb_user_priority_tc_map_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
