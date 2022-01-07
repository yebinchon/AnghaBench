; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_get_set_rss_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_get_set_rss_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_aqc_get_set_rss_key_data = type { i32 }
%struct.i40e_aq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_get_set_rss_key = type { i32 }

@i40e_aqc_opc_set_rss_key = common dso_local global i32 0, align 4
@i40e_aqc_opc_get_rss_key = common dso_local global i32 0, align 4
@I40E_AQ_FLAG_BUF = common dso_local global i64 0, align 8
@I40E_AQ_FLAG_RD = common dso_local global i64 0, align 8
@I40E_AQC_SET_RSS_KEY_VSI_ID_SHIFT = common dso_local global i32 0, align 4
@I40E_AQC_SET_RSS_KEY_VSI_ID_MASK = common dso_local global i32 0, align 4
@I40E_AQC_SET_RSS_KEY_VSI_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, i32, %struct.i40e_aqc_get_set_rss_key_data*, i32)* @i40e_aq_get_set_rss_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_aq_get_set_rss_key(%struct.i40e_hw* %0, i32 %1, %struct.i40e_aqc_get_set_rss_key_data* %2, i32 %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_aqc_get_set_rss_key_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i40e_aq_desc, align 4
  %11 = alloca %struct.i40e_aqc_get_set_rss_key*, align 8
  %12 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i40e_aqc_get_set_rss_key_data* %2, %struct.i40e_aqc_get_set_rss_key_data** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %10, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast i32* %14 to %struct.i40e_aqc_get_set_rss_key*
  store %struct.i40e_aqc_get_set_rss_key* %15, %struct.i40e_aqc_get_set_rss_key** %11, align 8
  store i32 4, i32* %12, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @i40e_aqc_opc_set_rss_key, align 4
  %20 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %10, i32 %19)
  br label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @i40e_aqc_opc_get_rss_key, align 4
  %23 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %10, i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i64, i64* @I40E_AQ_FLAG_BUF, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @cpu_to_le16(i32 %26)
  %28 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %10, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %27
  store i32 %30, i32* %28, align 4
  %31 = load i64, i64* @I40E_AQ_FLAG_RD, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @cpu_to_le16(i32 %32)
  %34 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @I40E_AQC_SET_RSS_KEY_VSI_ID_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @I40E_AQC_SET_RSS_KEY_VSI_ID_MASK, align 4
  %41 = and i32 %39, %40
  %42 = call i32 @cpu_to_le16(i32 %41)
  %43 = load %struct.i40e_aqc_get_set_rss_key*, %struct.i40e_aqc_get_set_rss_key** %11, align 8
  %44 = getelementptr inbounds %struct.i40e_aqc_get_set_rss_key, %struct.i40e_aqc_get_set_rss_key* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i64, i64* @I40E_AQC_SET_RSS_KEY_VSI_VALID, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @cpu_to_le16(i32 %46)
  %48 = load %struct.i40e_aqc_get_set_rss_key*, %struct.i40e_aqc_get_set_rss_key** %11, align 8
  %49 = getelementptr inbounds %struct.i40e_aqc_get_set_rss_key, %struct.i40e_aqc_get_set_rss_key* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %53 = load %struct.i40e_aqc_get_set_rss_key_data*, %struct.i40e_aqc_get_set_rss_key_data** %7, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %52, %struct.i40e_aq_desc* %10, %struct.i40e_aqc_get_set_rss_key_data* %53, i32 %54, i32* null)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  ret i32 %56
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, %struct.i40e_aqc_get_set_rss_key_data*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
