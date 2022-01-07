; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_ac_debug_print.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_wmm.c_mwifiex_wmm_ac_debug_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee_types_wmm_ac_parameters = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"BK\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"BE\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"VI\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"VO\00", align 1
@__const.mwifiex_wmm_ac_debug_print.ac_str = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [79 x i8] c"info: WMM AC_%s: ACI=%d, ACM=%d, Aifsn=%d, EcwMin=%d, EcwMax=%d, TxopLimit=%d\0A\00", align 1
@wmm_aci_to_qidx_map = common dso_local global i64* null, align 8
@MWIFIEX_ACI = common dso_local global i32 0, align 4
@MWIFIEX_ACM = common dso_local global i32 0, align 4
@MWIFIEX_AIFSN = common dso_local global i32 0, align 4
@MWIFIEX_ECW_MIN = common dso_local global i32 0, align 4
@MWIFIEX_ECW_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee_types_wmm_ac_parameters*)* @mwifiex_wmm_ac_debug_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_wmm_ac_debug_print(%struct.ieee_types_wmm_ac_parameters* %0) #0 {
  %2 = alloca %struct.ieee_types_wmm_ac_parameters*, align 8
  %3 = alloca [4 x i8*], align 16
  store %struct.ieee_types_wmm_ac_parameters* %0, %struct.ieee_types_wmm_ac_parameters** %2, align 8
  %4 = bitcast [4 x i8*]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([4 x i8*]* @__const.mwifiex_wmm_ac_debug_print.ac_str to i8*), i64 32, i1 false)
  %5 = load i64*, i64** @wmm_aci_to_qidx_map, align 8
  %6 = load %struct.ieee_types_wmm_ac_parameters*, %struct.ieee_types_wmm_ac_parameters** %2, align 8
  %7 = getelementptr inbounds %struct.ieee_types_wmm_ac_parameters, %struct.ieee_types_wmm_ac_parameters* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MWIFIEX_ACI, align 4
  %10 = and i32 %8, %9
  %11 = ashr i32 %10, 5
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %5, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds [4 x i8*], [4 x i8*]* %3, i64 0, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = load %struct.ieee_types_wmm_ac_parameters*, %struct.ieee_types_wmm_ac_parameters** %2, align 8
  %18 = getelementptr inbounds %struct.ieee_types_wmm_ac_parameters, %struct.ieee_types_wmm_ac_parameters* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MWIFIEX_ACI, align 4
  %21 = and i32 %19, %20
  %22 = ashr i32 %21, 5
  %23 = load %struct.ieee_types_wmm_ac_parameters*, %struct.ieee_types_wmm_ac_parameters** %2, align 8
  %24 = getelementptr inbounds %struct.ieee_types_wmm_ac_parameters, %struct.ieee_types_wmm_ac_parameters* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MWIFIEX_ACM, align 4
  %27 = and i32 %25, %26
  %28 = ashr i32 %27, 4
  %29 = load %struct.ieee_types_wmm_ac_parameters*, %struct.ieee_types_wmm_ac_parameters** %2, align 8
  %30 = getelementptr inbounds %struct.ieee_types_wmm_ac_parameters, %struct.ieee_types_wmm_ac_parameters* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MWIFIEX_AIFSN, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.ieee_types_wmm_ac_parameters*, %struct.ieee_types_wmm_ac_parameters** %2, align 8
  %35 = getelementptr inbounds %struct.ieee_types_wmm_ac_parameters, %struct.ieee_types_wmm_ac_parameters* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MWIFIEX_ECW_MIN, align 4
  %38 = and i32 %36, %37
  %39 = load %struct.ieee_types_wmm_ac_parameters*, %struct.ieee_types_wmm_ac_parameters** %2, align 8
  %40 = getelementptr inbounds %struct.ieee_types_wmm_ac_parameters, %struct.ieee_types_wmm_ac_parameters* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MWIFIEX_ECW_MAX, align 4
  %43 = and i32 %41, %42
  %44 = ashr i32 %43, 4
  %45 = load %struct.ieee_types_wmm_ac_parameters*, %struct.ieee_types_wmm_ac_parameters** %2, align 8
  %46 = getelementptr inbounds %struct.ieee_types_wmm_ac_parameters, %struct.ieee_types_wmm_ac_parameters* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  %49 = call i32 @pr_debug(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i8* %16, i32 %22, i32 %28, i32 %33, i32 %38, i32 %44, i32 %48)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
