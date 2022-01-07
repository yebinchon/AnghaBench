; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_fl3l4_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_fl3l4_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }
%struct.aq_rx_filter_l3l4 = type { i32, i32, i32, i32*, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, %struct.aq_rx_filter_l3l4*)* @hw_atl_b0_hw_fl3l4_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_fl3l4_set(%struct.aq_hw_s* %0, %struct.aq_rx_filter_l3l4* %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca %struct.aq_rx_filter_l3l4*, align 8
  %5 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store %struct.aq_rx_filter_l3l4* %1, %struct.aq_rx_filter_l3l4** %4, align 8
  %6 = load %struct.aq_rx_filter_l3l4*, %struct.aq_rx_filter_l3l4** %4, align 8
  %7 = getelementptr inbounds %struct.aq_rx_filter_l3l4, %struct.aq_rx_filter_l3l4* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %10 = load %struct.aq_rx_filter_l3l4*, %struct.aq_rx_filter_l3l4** %4, align 8
  %11 = call i32 @hw_atl_b0_hw_fl3l4_clear(%struct.aq_hw_s* %9, %struct.aq_rx_filter_l3l4* %10)
  %12 = load %struct.aq_rx_filter_l3l4*, %struct.aq_rx_filter_l3l4** %4, align 8
  %13 = getelementptr inbounds %struct.aq_rx_filter_l3l4, %struct.aq_rx_filter_l3l4* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %2
  %17 = load %struct.aq_rx_filter_l3l4*, %struct.aq_rx_filter_l3l4** %4, align 8
  %18 = getelementptr inbounds %struct.aq_rx_filter_l3l4, %struct.aq_rx_filter_l3l4* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %16
  %22 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.aq_rx_filter_l3l4*, %struct.aq_rx_filter_l3l4** %4, align 8
  %25 = getelementptr inbounds %struct.aq_rx_filter_l3l4, %struct.aq_rx_filter_l3l4* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hw_atl_rpfl3l4_ipv4_dest_addr_set(%struct.aq_hw_s* %22, i32 %23, i32 %28)
  %30 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.aq_rx_filter_l3l4*, %struct.aq_rx_filter_l3l4** %4, align 8
  %33 = getelementptr inbounds %struct.aq_rx_filter_l3l4, %struct.aq_rx_filter_l3l4* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @hw_atl_rpfl3l4_ipv4_src_addr_set(%struct.aq_hw_s* %30, i32 %31, i32 %36)
  br label %51

38:                                               ; preds = %16
  %39 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.aq_rx_filter_l3l4*, %struct.aq_rx_filter_l3l4** %4, align 8
  %42 = getelementptr inbounds %struct.aq_rx_filter_l3l4, %struct.aq_rx_filter_l3l4* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @hw_atl_rpfl3l4_ipv6_dest_addr_set(%struct.aq_hw_s* %39, i32 %40, i32* %43)
  %45 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.aq_rx_filter_l3l4*, %struct.aq_rx_filter_l3l4** %4, align 8
  %48 = getelementptr inbounds %struct.aq_rx_filter_l3l4, %struct.aq_rx_filter_l3l4* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @hw_atl_rpfl3l4_ipv6_src_addr_set(%struct.aq_hw_s* %45, i32 %46, i32* %49)
  br label %51

51:                                               ; preds = %38, %21
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %54 = load %struct.aq_rx_filter_l3l4*, %struct.aq_rx_filter_l3l4** %4, align 8
  %55 = getelementptr inbounds %struct.aq_rx_filter_l3l4, %struct.aq_rx_filter_l3l4* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @hw_atl_rpf_l4_dpd_set(%struct.aq_hw_s* %53, i32 %56, i32 %57)
  %59 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %60 = load %struct.aq_rx_filter_l3l4*, %struct.aq_rx_filter_l3l4** %4, align 8
  %61 = getelementptr inbounds %struct.aq_rx_filter_l3l4, %struct.aq_rx_filter_l3l4* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @hw_atl_rpf_l4_spd_set(%struct.aq_hw_s* %59, i32 %62, i32 %63)
  %65 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.aq_rx_filter_l3l4*, %struct.aq_rx_filter_l3l4** %4, align 8
  %68 = getelementptr inbounds %struct.aq_rx_filter_l3l4, %struct.aq_rx_filter_l3l4* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @hw_atl_rpfl3l4_cmd_set(%struct.aq_hw_s* %65, i32 %66, i32 %69)
  %71 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %72 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %71)
  ret i32 %72
}

declare dso_local i32 @hw_atl_b0_hw_fl3l4_clear(%struct.aq_hw_s*, %struct.aq_rx_filter_l3l4*) #1

declare dso_local i32 @hw_atl_rpfl3l4_ipv4_dest_addr_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpfl3l4_ipv4_src_addr_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpfl3l4_ipv6_dest_addr_set(%struct.aq_hw_s*, i32, i32*) #1

declare dso_local i32 @hw_atl_rpfl3l4_ipv6_src_addr_set(%struct.aq_hw_s*, i32, i32*) #1

declare dso_local i32 @hw_atl_rpf_l4_dpd_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpf_l4_spd_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpfl3l4_cmd_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
