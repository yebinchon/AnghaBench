; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_bt_update_lq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_bt_update_lq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i64, i64, i32, i32, i64, i64 }
%struct.iwl_rxon_context = type { i32 }
%struct.iwl_lq_sta = type { i64, i32, %struct.iwl_scale_tbl_info* }
%struct.iwl_scale_tbl_info = type { i32 }

@CMD_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_rxon_context*, %struct.iwl_lq_sta*)* @rs_bt_update_lq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_bt_update_lq(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1, %struct.iwl_lq_sta* %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rxon_context*, align 8
  %6 = alloca %struct.iwl_lq_sta*, align 8
  %7 = alloca %struct.iwl_scale_tbl_info*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %5, align 8
  store %struct.iwl_lq_sta* %2, %struct.iwl_lq_sta** %6, align 8
  %9 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %10 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %13 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %18 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %23 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %8, align 4
  br label %28

27:                                               ; preds = %21, %16
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %26
  br label %29

29:                                               ; preds = %28, %3
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %31 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %34 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %37, %29
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %46 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %48 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %51 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %50, i32 0, i32 2
  store i64 %49, i64* %51, align 8
  %52 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %53 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %52, i32 0, i32 2
  %54 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %53, align 8
  %55 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %56 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %54, i64 %57
  store %struct.iwl_scale_tbl_info* %58, %struct.iwl_scale_tbl_info** %7, align 8
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %60 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %61 = load %struct.iwl_scale_tbl_info*, %struct.iwl_scale_tbl_info** %7, align 8
  %62 = getelementptr inbounds %struct.iwl_scale_tbl_info, %struct.iwl_scale_tbl_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @rs_fill_link_cmd(%struct.iwl_priv* %59, %struct.iwl_lq_sta* %60, i32 %63)
  %65 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %66 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %67 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %6, align 8
  %68 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %67, i32 0, i32 1
  %69 = load i32, i32* @CMD_ASYNC, align 4
  %70 = call i32 @iwl_send_lq_cmd(%struct.iwl_priv* %65, %struct.iwl_rxon_context* %66, i32* %68, i32 %69, i32 0)
  %71 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %72 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %75 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %74, i32 0, i32 3
  %76 = call i32 @queue_work(i32 %73, i32* %75)
  br label %77

77:                                               ; preds = %43, %37
  ret void
}

declare dso_local i32 @rs_fill_link_cmd(%struct.iwl_priv*, %struct.iwl_lq_sta*, i32) #1

declare dso_local i32 @iwl_send_lq_cmd(%struct.iwl_priv*, %struct.iwl_rxon_context*, i32*, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
