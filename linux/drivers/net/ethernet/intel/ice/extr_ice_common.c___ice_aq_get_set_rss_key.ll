; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c___ice_aq_get_set_rss_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c___ice_aq_get_set_rss_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_aqc_get_set_rss_keys = type { i32 }
%struct.ice_aqc_get_set_rss_key = type { i32 }
%struct.ice_aq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_get_set_rss_key }

@ice_aqc_opc_set_rss_key = common dso_local global i32 0, align 4
@ICE_AQ_FLAG_RD = common dso_local global i32 0, align 4
@ice_aqc_opc_get_rss_key = common dso_local global i32 0, align 4
@ICE_AQC_GSET_RSS_KEY_VSI_ID_S = common dso_local global i32 0, align 4
@ICE_AQC_GSET_RSS_KEY_VSI_ID_M = common dso_local global i32 0, align 4
@ICE_AQC_GSET_RSS_KEY_VSI_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_hw*, i32, %struct.ice_aqc_get_set_rss_keys*, i32)* @__ice_aq_get_set_rss_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ice_aq_get_set_rss_key(%struct.ice_hw* %0, i32 %1, %struct.ice_aqc_get_set_rss_keys* %2, i32 %3) #0 {
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ice_aqc_get_set_rss_keys*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_aqc_get_set_rss_key*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ice_aq_desc, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ice_aqc_get_set_rss_keys* %2, %struct.ice_aqc_get_set_rss_keys** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 4, i32* %10, align 4
  %12 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.ice_aqc_get_set_rss_key* %13, %struct.ice_aqc_get_set_rss_key** %9, align 8
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  %17 = load i32, i32* @ice_aqc_opc_set_rss_key, align 4
  %18 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %11, i32 %17)
  %19 = load i32, i32* @ICE_AQ_FLAG_RD, align 4
  %20 = call i32 @cpu_to_le16(i32 %19)
  %21 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %11, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  br label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @ice_aqc_opc_get_rss_key, align 4
  %26 = call i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc* %11, i32 %25)
  br label %27

27:                                               ; preds = %24, %16
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ICE_AQC_GSET_RSS_KEY_VSI_ID_S, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* @ICE_AQC_GSET_RSS_KEY_VSI_ID_M, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @ICE_AQC_GSET_RSS_KEY_VSI_VALID, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @cpu_to_le16(i32 %34)
  %36 = load %struct.ice_aqc_get_set_rss_key*, %struct.ice_aqc_get_set_rss_key** %9, align 8
  %37 = getelementptr inbounds %struct.ice_aqc_get_set_rss_key, %struct.ice_aqc_get_set_rss_key* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %39 = load %struct.ice_aqc_get_set_rss_keys*, %struct.ice_aqc_get_set_rss_keys** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @ice_aq_send_cmd(%struct.ice_hw* %38, %struct.ice_aq_desc* %11, %struct.ice_aqc_get_set_rss_keys* %39, i32 %40, i32* null)
  ret i32 %41
}

declare dso_local i32 @ice_fill_dflt_direct_cmd_desc(%struct.ice_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ice_aq_send_cmd(%struct.ice_hw*, %struct.ice_aq_desc*, %struct.ice_aqc_get_set_rss_keys*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
