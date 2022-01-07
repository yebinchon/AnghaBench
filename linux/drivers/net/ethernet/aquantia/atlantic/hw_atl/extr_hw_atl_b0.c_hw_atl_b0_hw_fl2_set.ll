; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_fl2_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_fl2_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }
%struct.aq_rx_filter_l2 = type { i64, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, %struct.aq_rx_filter_l2*)* @hw_atl_b0_hw_fl2_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_fl2_set(%struct.aq_hw_s* %0, %struct.aq_rx_filter_l2* %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca %struct.aq_rx_filter_l2*, align 8
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store %struct.aq_rx_filter_l2* %1, %struct.aq_rx_filter_l2** %4, align 8
  %5 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %6 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %7 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @hw_atl_rpf_etht_flr_en_set(%struct.aq_hw_s* %5, i32 1, i32 %8)
  %10 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %11 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %12 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %15 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @hw_atl_rpf_etht_flr_set(%struct.aq_hw_s* %10, i32 %13, i32 %16)
  %18 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %19 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %20 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %27 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @hw_atl_rpf_etht_user_priority_en_set(%struct.aq_hw_s* %18, i32 %25, i32 %28)
  %30 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %31 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %2
  %35 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %36 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %37 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %40 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @hw_atl_rpf_etht_user_priority_set(%struct.aq_hw_s* %35, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %34, %2
  %44 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %45 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %50 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %51 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @hw_atl_rpf_etht_flr_act_set(%struct.aq_hw_s* %49, i32 0, i32 %52)
  %54 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %55 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %56 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @hw_atl_rpf_etht_rx_queue_en_set(%struct.aq_hw_s* %54, i32 0, i32 %57)
  br label %78

59:                                               ; preds = %43
  %60 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %61 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %62 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @hw_atl_rpf_etht_flr_act_set(%struct.aq_hw_s* %60, i32 1, i32 %63)
  %65 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %66 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %67 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @hw_atl_rpf_etht_rx_queue_en_set(%struct.aq_hw_s* %65, i32 1, i32 %68)
  %70 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %71 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %72 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.aq_rx_filter_l2*, %struct.aq_rx_filter_l2** %4, align 8
  %75 = getelementptr inbounds %struct.aq_rx_filter_l2, %struct.aq_rx_filter_l2* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @hw_atl_rpf_etht_rx_queue_set(%struct.aq_hw_s* %70, i64 %73, i32 %76)
  br label %78

78:                                               ; preds = %59, %48
  %79 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %80 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %79)
  ret i32 %80
}

declare dso_local i32 @hw_atl_rpf_etht_flr_en_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpf_etht_flr_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpf_etht_user_priority_en_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpf_etht_user_priority_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpf_etht_flr_act_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpf_etht_rx_queue_en_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpf_etht_rx_queue_set(%struct.aq_hw_s*, i64, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
