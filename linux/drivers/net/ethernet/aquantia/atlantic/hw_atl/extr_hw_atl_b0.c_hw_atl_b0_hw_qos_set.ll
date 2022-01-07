; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_qos_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_qos_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HW_ATL_B0_TXBUF_MAX = common dso_local global i32 0, align 4
@HW_ATL_B0_RXBUF_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*)* @hw_atl_b0_hw_qos_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_qos_set(%struct.aq_hw_s* %0) #0 {
  %2 = alloca %struct.aq_hw_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %7 = call i32 @hw_atl_tps_tx_pkt_shed_desc_rate_curr_time_res_set(%struct.aq_hw_s* %6, i32 0)
  %8 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %9 = call i32 @hw_atl_tps_tx_pkt_shed_desc_rate_lim_set(%struct.aq_hw_s* %8, i32 10)
  %10 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %11 = call i32 @hw_atl_tps_tx_pkt_shed_desc_vm_arb_mode_set(%struct.aq_hw_s* %10, i32 0)
  %12 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %13 = call i32 @hw_atl_tps_tx_pkt_shed_desc_tc_arb_mode_set(%struct.aq_hw_s* %12, i32 0)
  %14 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %15 = call i32 @hw_atl_tps_tx_pkt_shed_data_arb_mode_set(%struct.aq_hw_s* %14, i32 0)
  %16 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %17 = call i32 @hw_atl_tps_tx_pkt_shed_tc_data_max_credit_set(%struct.aq_hw_s* %16, i32 4095, i32 0)
  %18 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %19 = call i32 @hw_atl_tps_tx_pkt_shed_tc_data_weight_set(%struct.aq_hw_s* %18, i32 100, i32 0)
  %20 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %21 = call i32 @hw_atl_tps_tx_pkt_shed_desc_tc_max_credit_set(%struct.aq_hw_s* %20, i32 80, i32 0)
  %22 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %23 = call i32 @hw_atl_tps_tx_pkt_shed_desc_tc_weight_set(%struct.aq_hw_s* %22, i32 30, i32 0)
  %24 = load i32, i32* @HW_ATL_B0_TXBUF_MAX, align 4
  store i32 %24, i32* %4, align 4
  %25 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @hw_atl_tpb_tx_pkt_buff_size_per_tc_set(%struct.aq_hw_s* %25, i32 %26, i32 %27)
  %29 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = mul i32 %30, 32
  %32 = mul i32 %31, 66
  %33 = udiv i32 %32, 100
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @hw_atl_tpb_tx_buff_hi_threshold_per_tc_set(%struct.aq_hw_s* %29, i32 %33, i32 %34)
  %36 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = mul i32 %37, 32
  %39 = mul i32 %38, 50
  %40 = udiv i32 %39, 100
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @hw_atl_tpb_tx_buff_lo_threshold_per_tc_set(%struct.aq_hw_s* %36, i32 %40, i32 %41)
  store i32 0, i32* %3, align 4
  %43 = load i32, i32* @HW_ATL_B0_RXBUF_MAX, align 4
  store i32 %43, i32* %4, align 4
  %44 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @hw_atl_rpb_rx_pkt_buff_size_per_tc_set(%struct.aq_hw_s* %44, i32 %45, i32 %46)
  %48 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = mul i32 %49, 32
  %51 = mul i32 %50, 66
  %52 = udiv i32 %51, 100
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @hw_atl_rpb_rx_buff_hi_threshold_per_tc_set(%struct.aq_hw_s* %48, i32 %52, i32 %53)
  %55 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = mul i32 %56, 32
  %58 = mul i32 %57, 50
  %59 = udiv i32 %58, 100
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @hw_atl_rpb_rx_buff_lo_threshold_per_tc_set(%struct.aq_hw_s* %55, i32 %59, i32 %60)
  %62 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %63 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %64 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @hw_atl_b0_set_fc(%struct.aq_hw_s* %62, i32 %67, i32 %68)
  store i32 8, i32* %5, align 4
  br label %70

70:                                               ; preds = %74, %1
  %71 = load i32, i32* %5, align 4
  %72 = add i32 %71, -1
  store i32 %72, i32* %5, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @hw_atl_rpf_rpb_user_priority_tc_map_set(%struct.aq_hw_s* %75, i32 %76, i32 0)
  br label %70

78:                                               ; preds = %70
  %79 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %80 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %79)
  ret i32 %80
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

declare dso_local i32 @hw_atl_b0_set_fc(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpf_rpb_user_priority_tc_map_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
