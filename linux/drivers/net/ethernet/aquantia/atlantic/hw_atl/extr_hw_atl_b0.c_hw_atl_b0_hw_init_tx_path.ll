; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_init_tx_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_init_tx_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }

@TPO2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*)* @hw_atl_b0_hw_init_tx_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_init_tx_path(%struct.aq_hw_s* %0) #0 {
  %2 = alloca %struct.aq_hw_s*, align 8
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %2, align 8
  %3 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %4 = call i32 @hw_atl_rpb_tps_tx_tc_mode_set(%struct.aq_hw_s* %3, i32 1)
  %5 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %6 = call i32 @hw_atl_thm_lso_tcp_flag_of_first_pkt_set(%struct.aq_hw_s* %5, i32 4086)
  %7 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %8 = call i32 @hw_atl_thm_lso_tcp_flag_of_middle_pkt_set(%struct.aq_hw_s* %7, i32 4086)
  %9 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %10 = call i32 @hw_atl_thm_lso_tcp_flag_of_last_pkt_set(%struct.aq_hw_s* %9, i32 3967)
  %11 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %12 = call i32 @hw_atl_tdm_tx_desc_wr_wb_irq_en_set(%struct.aq_hw_s* %11, i32 1)
  %13 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %14 = load i32, i32* @TPO2, align 4
  %15 = call i64 @IS_CHIP_FEATURE(i32 %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 65536, i32 0
  %19 = call i32 @aq_hw_write_reg(%struct.aq_hw_s* %13, i32 28736, i32 %18)
  %20 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %21 = call i32 @hw_atl_tdm_tx_dca_en_set(%struct.aq_hw_s* %20, i32 0)
  %22 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %23 = call i32 @hw_atl_tdm_tx_dca_mode_set(%struct.aq_hw_s* %22, i32 0)
  %24 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %25 = call i32 @hw_atl_tpb_tx_path_scp_ins_en_set(%struct.aq_hw_s* %24, i32 1)
  %26 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %27 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %26)
  ret i32 %27
}

declare dso_local i32 @hw_atl_rpb_tps_tx_tc_mode_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_thm_lso_tcp_flag_of_first_pkt_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_thm_lso_tcp_flag_of_middle_pkt_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_thm_lso_tcp_flag_of_last_pkt_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_tdm_tx_desc_wr_wb_irq_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @aq_hw_write_reg(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i64 @IS_CHIP_FEATURE(i32) #1

declare dso_local i32 @hw_atl_tdm_tx_dca_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_tdm_tx_dca_mode_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_tpb_tx_path_scp_ins_en_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
