; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_switch_to_siso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_switch_to_siso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32 }
%struct.il_lq_sta = type { i32, i32, i32 }
%struct.ieee80211_conf = type { i32 }
%struct.ieee80211_sta = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.il_scale_tbl_info = type { i32, i32, i64, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"LQ: try to switch to SISO\0A\00", align 1
@LQ_SISO = common dso_local global i32 0, align 4
@IL_MAX_SEARCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"LQ: get best rate %d mask %X\0A\00", align 1
@RATE_INVALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"can not switch with idx %d rate mask %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"LQ: Switch to new mcs %X idx is green %X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_lq_sta*, %struct.ieee80211_conf*, %struct.ieee80211_sta*, %struct.il_scale_tbl_info*, i32)* @il4965_rs_switch_to_siso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_rs_switch_to_siso(%struct.il_priv* %0, %struct.il_lq_sta* %1, %struct.ieee80211_conf* %2, %struct.ieee80211_sta* %3, %struct.il_scale_tbl_info* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.il_priv*, align 8
  %9 = alloca %struct.il_lq_sta*, align 8
  %10 = alloca %struct.ieee80211_conf*, align 8
  %11 = alloca %struct.ieee80211_sta*, align 8
  %12 = alloca %struct.il_scale_tbl_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %8, align 8
  store %struct.il_lq_sta* %1, %struct.il_lq_sta** %9, align 8
  store %struct.ieee80211_conf* %2, %struct.ieee80211_conf** %10, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %11, align 8
  store %struct.il_scale_tbl_info* %4, %struct.il_scale_tbl_info** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.il_lq_sta*, %struct.il_lq_sta** %9, align 8
  %18 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %15, align 4
  %20 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %10, align 8
  %21 = call i32 @conf_is_ht(%struct.ieee80211_conf* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %6
  %24 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %25 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %6
  store i32 -1, i32* %7, align 4
  br label %104

30:                                               ; preds = %23
  %31 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.il_lq_sta*, %struct.il_lq_sta** %9, align 8
  %33 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %36 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @LQ_SISO, align 4
  %38 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %39 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %41 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @IL_MAX_SEARCH, align 4
  %43 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %44 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.il_lq_sta*, %struct.il_lq_sta** %9, align 8
  %46 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %14, align 4
  %48 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %49 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %11, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %49, i32 0, i32 0
  %51 = call i64 @il_is_ht40_tx_allowed(%struct.il_priv* %48, %struct.TYPE_2__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %30
  %54 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %55 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %59

56:                                               ; preds = %30
  %57 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %58 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %57, i32 0, i32 0
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %64 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.il_lq_sta*, %struct.il_lq_sta** %9, align 8
  %67 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %68 = call i32 @il4965_rs_set_expected_tpt_table(%struct.il_lq_sta* %66, %struct.il_scale_tbl_info* %67)
  %69 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %70 = load %struct.il_lq_sta*, %struct.il_lq_sta** %9, align 8
  %71 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @il4965_rs_get_best_rate(%struct.il_priv* %69, %struct.il_lq_sta* %70, %struct.il_scale_tbl_info* %71, i32 %72, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* @RATE_INVALID, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %65
  %82 = load i32, i32* %16, align 4
  %83 = shl i32 1, %82
  %84 = load i32, i32* %14, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %81, %65
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %89)
  store i32 -1, i32* %7, align 4
  br label %104

91:                                               ; preds = %81
  %92 = load %struct.il_priv*, %struct.il_priv** %8, align 8
  %93 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @il4965_rate_n_flags_from_tbl(%struct.il_priv* %92, %struct.il_scale_tbl_info* %93, i32 %94, i32 %95)
  %97 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %98 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.il_scale_tbl_info*, %struct.il_scale_tbl_info** %12, align 8
  %100 = getelementptr inbounds %struct.il_scale_tbl_info, %struct.il_scale_tbl_info* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %15, align 4
  %103 = call i32 (i8*, ...) @D_RATE(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %101, i32 %102)
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %91, %87, %29
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32 @conf_is_ht(%struct.ieee80211_conf*) #1

declare dso_local i32 @D_RATE(i8*, ...) #1

declare dso_local i64 @il_is_ht40_tx_allowed(%struct.il_priv*, %struct.TYPE_2__*) #1

declare dso_local i32 @il4965_rs_set_expected_tpt_table(%struct.il_lq_sta*, %struct.il_scale_tbl_info*) #1

declare dso_local i32 @il4965_rs_get_best_rate(%struct.il_priv*, %struct.il_lq_sta*, %struct.il_scale_tbl_info*, i32, i32) #1

declare dso_local i32 @il4965_rate_n_flags_from_tbl(%struct.il_priv*, %struct.il_scale_tbl_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
