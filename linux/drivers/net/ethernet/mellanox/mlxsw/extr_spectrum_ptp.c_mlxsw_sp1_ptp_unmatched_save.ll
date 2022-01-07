; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_unmatched_save.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ptp.c_mlxsw_sp1_ptp_unmatched_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_ptp_state* }
%struct.mlxsw_sp_ptp_state = type { i32, i64 }
%struct.sk_buff = type { i32 }
%struct.mlxsw_sp1_ptp_key = type { i32 }
%struct.mlxsw_sp1_ptp_unmatched = type { i32, i64, i32, %struct.sk_buff*, %struct.mlxsw_sp1_ptp_key }

@MLXSW_SP1_PTP_HT_GC_TIMEOUT = common dso_local global i32 0, align 4
@MLXSW_SP1_PTP_HT_GC_INTERVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp1_ptp_unmatched_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, %struct.sk_buff*, i32)* @mlxsw_sp1_ptp_unmatched_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_ptp_unmatched_save(%struct.mlxsw_sp* %0, i32 %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp1_ptp_key, align 4
  %7 = alloca %struct.mlxsw_sp*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlxsw_sp_ptp_state*, align 8
  %12 = alloca %struct.mlxsw_sp1_ptp_unmatched*, align 8
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %struct.mlxsw_sp1_ptp_key, %struct.mlxsw_sp1_ptp_key* %6, i32 0, i32 0
  store i32 %1, i32* %14, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @MLXSW_SP1_PTP_HT_GC_TIMEOUT, align 4
  %16 = load i32, i32* @MLXSW_SP1_PTP_HT_GC_INTERVAL, align 4
  %17 = sdiv i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %18, i32 0, i32 0
  %20 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %19, align 8
  store %struct.mlxsw_sp_ptp_state* %20, %struct.mlxsw_sp_ptp_state** %11, align 8
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.mlxsw_sp1_ptp_unmatched* @kzalloc(i32 40, i32 %21)
  store %struct.mlxsw_sp1_ptp_unmatched* %22, %struct.mlxsw_sp1_ptp_unmatched** %12, align 8
  %23 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %12, align 8
  %24 = icmp ne %struct.mlxsw_sp1_ptp_unmatched* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %62

28:                                               ; preds = %4
  %29 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %12, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, %struct.mlxsw_sp1_ptp_unmatched* %29, i32 0, i32 4
  %31 = bitcast %struct.mlxsw_sp1_ptp_key* %30 to i8*
  %32 = bitcast %struct.mlxsw_sp1_ptp_key* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %12, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, %struct.mlxsw_sp1_ptp_unmatched* %34, i32 0, i32 3
  store %struct.sk_buff* %33, %struct.sk_buff** %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %12, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, %struct.mlxsw_sp1_ptp_unmatched* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %7, align 8
  %40 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %39, i32 0, i32 0
  %41 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %40, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, %struct.mlxsw_sp_ptp_state* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %43, %45
  %47 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %12, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, %struct.mlxsw_sp1_ptp_unmatched* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.mlxsw_sp_ptp_state*, %struct.mlxsw_sp_ptp_state** %11, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_ptp_state, %struct.mlxsw_sp_ptp_state* %49, i32 0, i32 0
  %51 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %12, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp1_ptp_unmatched, %struct.mlxsw_sp1_ptp_unmatched* %51, i32 0, i32 0
  %53 = load i32, i32* @mlxsw_sp1_ptp_unmatched_ht_params, align 4
  %54 = call i32 @rhltable_insert(i32* %50, i32* %52, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %28
  %58 = load %struct.mlxsw_sp1_ptp_unmatched*, %struct.mlxsw_sp1_ptp_unmatched** %12, align 8
  %59 = call i32 @kfree(%struct.mlxsw_sp1_ptp_unmatched* %58)
  br label %60

60:                                               ; preds = %57, %28
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %25
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.mlxsw_sp1_ptp_unmatched* @kzalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rhltable_insert(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp1_ptp_unmatched*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
