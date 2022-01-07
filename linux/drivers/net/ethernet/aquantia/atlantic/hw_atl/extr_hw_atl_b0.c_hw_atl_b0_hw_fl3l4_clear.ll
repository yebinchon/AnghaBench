; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_fl3l4_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_fl3l4_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }
%struct.aq_rx_filter_l3l4 = type { i32, i64 }

@HW_ATL_RX_CNT_REG_ADDR_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, %struct.aq_rx_filter_l3l4*)* @hw_atl_b0_hw_fl3l4_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_fl3l4_clear(%struct.aq_hw_s* %0, %struct.aq_rx_filter_l3l4* %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca %struct.aq_rx_filter_l3l4*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store %struct.aq_rx_filter_l3l4* %1, %struct.aq_rx_filter_l3l4** %4, align 8
  %7 = load %struct.aq_rx_filter_l3l4*, %struct.aq_rx_filter_l3l4** %4, align 8
  %8 = getelementptr inbounds %struct.aq_rx_filter_l3l4, %struct.aq_rx_filter_l3l4* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.aq_rx_filter_l3l4*, %struct.aq_rx_filter_l3l4** %4, align 8
  %11 = getelementptr inbounds %struct.aq_rx_filter_l3l4, %struct.aq_rx_filter_l3l4* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %2
  %15 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @hw_atl_rpfl3l4_cmd_clear(%struct.aq_hw_s* %15, i64 %16)
  %18 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @hw_atl_rpf_l4_spd_set(%struct.aq_hw_s* %18, i32 0, i64 %19)
  %21 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @hw_atl_rpf_l4_dpd_set(%struct.aq_hw_s* %21, i32 0, i64 %22)
  %24 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @hw_atl_rpfl3l4_ipv4_src_addr_clear(%struct.aq_hw_s* %24, i64 %25)
  %27 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @hw_atl_rpfl3l4_ipv4_dest_addr_clear(%struct.aq_hw_s* %27, i64 %28)
  br label %64

30:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %54, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @HW_ATL_RX_CNT_REG_ADDR_IPV6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %31
  %36 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = call i32 @hw_atl_rpfl3l4_cmd_clear(%struct.aq_hw_s* %36, i64 %40)
  %42 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %43 = load i64, i64* %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = call i32 @hw_atl_rpf_l4_spd_set(%struct.aq_hw_s* %42, i32 0, i64 %46)
  %48 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %49 = load i64, i64* %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = call i32 @hw_atl_rpf_l4_dpd_set(%struct.aq_hw_s* %48, i32 0, i64 %52)
  br label %54

54:                                               ; preds = %35
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %31

57:                                               ; preds = %31
  %58 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @hw_atl_rpfl3l4_ipv6_src_addr_clear(%struct.aq_hw_s* %58, i64 %59)
  %61 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %62 = load i64, i64* %5, align 8
  %63 = call i32 @hw_atl_rpfl3l4_ipv6_dest_addr_clear(%struct.aq_hw_s* %61, i64 %62)
  br label %64

64:                                               ; preds = %57, %14
  %65 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %66 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %65)
  ret i32 %66
}

declare dso_local i32 @hw_atl_rpfl3l4_cmd_clear(%struct.aq_hw_s*, i64) #1

declare dso_local i32 @hw_atl_rpf_l4_spd_set(%struct.aq_hw_s*, i32, i64) #1

declare dso_local i32 @hw_atl_rpf_l4_dpd_set(%struct.aq_hw_s*, i32, i64) #1

declare dso_local i32 @hw_atl_rpfl3l4_ipv4_src_addr_clear(%struct.aq_hw_s*, i64) #1

declare dso_local i32 @hw_atl_rpfl3l4_ipv4_dest_addr_clear(%struct.aq_hw_s*, i64) #1

declare dso_local i32 @hw_atl_rpfl3l4_ipv6_src_addr_clear(%struct.aq_hw_s*, i64) #1

declare dso_local i32 @hw_atl_rpfl3l4_ipv6_dest_addr_clear(%struct.aq_hw_s*, i64) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
