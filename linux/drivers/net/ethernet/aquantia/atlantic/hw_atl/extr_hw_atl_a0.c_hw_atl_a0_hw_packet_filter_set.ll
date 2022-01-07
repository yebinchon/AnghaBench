; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_a0.c_hw_atl_a0_hw_packet_filter_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_a0.c_hw_atl_a0_hw_packet_filter_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@HW_ATL_A0_MAC_MIN = common dso_local global i32 0, align 4
@HW_ATL_A0_MAC_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, i32)* @hw_atl_a0_hw_packet_filter_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_a0_hw_packet_filter_set(%struct.aq_hw_s* %0, i32 %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %7 = load i32, i32* @IFF_PROMISC, align 4
  %8 = call i64 @IS_FILTER_ENABLED(i32 %7)
  %9 = call i32 @hw_atl_rpfl2promiscuous_mode_en_set(%struct.aq_hw_s* %6, i64 %8)
  %10 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %11 = load i32, i32* @IFF_MULTICAST, align 4
  %12 = call i64 @IS_FILTER_ENABLED(i32 %11)
  %13 = call i32 @hw_atl_rpfl2multicast_flr_en_set(%struct.aq_hw_s* %10, i64 %12, i32 0)
  %14 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %15 = load i32, i32* @IFF_BROADCAST, align 4
  %16 = call i64 @IS_FILTER_ENABLED(i32 %15)
  %17 = call i32 @hw_atl_rpfl2broadcast_en_set(%struct.aq_hw_s* %14, i64 %16)
  %18 = load i32, i32* @IFF_MULTICAST, align 4
  %19 = call i64 @IS_FILTER_ENABLED(i32 %18)
  %20 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %21 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i64 %19, i64* %23, align 8
  %24 = load i32, i32* @HW_ATL_A0_MAC_MIN, align 4
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %51, %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @HW_ATL_A0_MAC_MAX, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %25
  %30 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %31 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %32 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %40 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ule i32 %38, %43
  br label %45

45:                                               ; preds = %37, %29
  %46 = phi i1 [ false, %29 ], [ %44, %37 ]
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @hw_atl_rpfl2_uc_flr_en_set(%struct.aq_hw_s* %30, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %25

54:                                               ; preds = %25
  %55 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %56 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %55)
  ret i32 %56
}

declare dso_local i32 @hw_atl_rpfl2promiscuous_mode_en_set(%struct.aq_hw_s*, i64) #1

declare dso_local i64 @IS_FILTER_ENABLED(i32) #1

declare dso_local i32 @hw_atl_rpfl2multicast_flr_en_set(%struct.aq_hw_s*, i64, i32) #1

declare dso_local i32 @hw_atl_rpfl2broadcast_en_set(%struct.aq_hw_s*, i64) #1

declare dso_local i32 @hw_atl_rpfl2_uc_flr_en_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
