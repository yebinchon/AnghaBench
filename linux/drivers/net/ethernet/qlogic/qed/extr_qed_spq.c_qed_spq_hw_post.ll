; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_spq_hw_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_spq_hw_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qed_chain }
%struct.qed_chain = type { i32 }
%struct.qed_spq = type { i32, i32, %struct.core_db_data }
%struct.core_db_data = type { i32, i32, i8* }
%struct.qed_spq_entry = type { %struct.slow_path_element }
%struct.slow_path_element = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [34 x i8] c"Failed to produce from SPQ chain\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_MSG_SPQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"Doorbelled [0x%08x, CID 0x%08x] with Flags: %02x agg_params: %02x, prod: %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_spq*, %struct.qed_spq_entry*)* @qed_spq_hw_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_spq_hw_post(%struct.qed_hwfn* %0, %struct.qed_spq* %1, %struct.qed_spq_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_spq*, align 8
  %7 = alloca %struct.qed_spq_entry*, align 8
  %8 = alloca %struct.qed_chain*, align 8
  %9 = alloca %struct.core_db_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.slow_path_element*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_spq* %1, %struct.qed_spq** %6, align 8
  store %struct.qed_spq_entry* %2, %struct.qed_spq_entry** %7, align 8
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %13 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.qed_chain* %15, %struct.qed_chain** %8, align 8
  %16 = load %struct.qed_spq*, %struct.qed_spq** %6, align 8
  %17 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %16, i32 0, i32 2
  store %struct.core_db_data* %17, %struct.core_db_data** %9, align 8
  %18 = load %struct.qed_chain*, %struct.qed_chain** %8, align 8
  %19 = call i32 @qed_chain_get_prod_idx(%struct.qed_chain* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %7, align 8
  %23 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.slow_path_element, %struct.slow_path_element* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i8* %21, i8** %25, align 8
  %26 = load %struct.qed_chain*, %struct.qed_chain** %8, align 8
  %27 = call %struct.slow_path_element* @qed_chain_produce(%struct.qed_chain* %26)
  store %struct.slow_path_element* %27, %struct.slow_path_element** %11, align 8
  %28 = load %struct.slow_path_element*, %struct.slow_path_element** %11, align 8
  %29 = icmp ne %struct.slow_path_element* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %32 = call i32 @DP_NOTICE(%struct.qed_hwfn* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %73

35:                                               ; preds = %3
  %36 = load %struct.slow_path_element*, %struct.slow_path_element** %11, align 8
  %37 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %7, align 8
  %38 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %37, i32 0, i32 0
  %39 = bitcast %struct.slow_path_element* %36 to i8*
  %40 = bitcast %struct.slow_path_element* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 8, i1 false)
  %41 = load %struct.qed_chain*, %struct.qed_chain** %8, align 8
  %42 = call i32 @qed_chain_get_prod_idx(%struct.qed_chain* %41)
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.core_db_data*, %struct.core_db_data** %9, align 8
  %45 = getelementptr inbounds %struct.core_db_data, %struct.core_db_data* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = call i32 (...) @wmb()
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %48 = load %struct.qed_spq*, %struct.qed_spq** %6, align 8
  %49 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.core_db_data*, %struct.core_db_data** %9, align 8
  %52 = bitcast %struct.core_db_data* %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @DOORBELL(%struct.qed_hwfn* %47, i32 %50, i32 %53)
  %55 = call i32 (...) @wmb()
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %57 = load i32, i32* @QED_MSG_SPQ, align 4
  %58 = load %struct.qed_spq*, %struct.qed_spq** %6, align 8
  %59 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.qed_spq*, %struct.qed_spq** %6, align 8
  %62 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.core_db_data*, %struct.core_db_data** %9, align 8
  %65 = getelementptr inbounds %struct.core_db_data, %struct.core_db_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.core_db_data*, %struct.core_db_data** %9, align 8
  %68 = getelementptr inbounds %struct.core_db_data, %struct.core_db_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.qed_chain*, %struct.qed_chain** %8, align 8
  %71 = call i32 @qed_chain_get_prod_idx(%struct.qed_chain* %70)
  %72 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %56, i32 %57, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %63, i32 %66, i32 %69, i32 %71)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %35, %30
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @qed_chain_get_prod_idx(%struct.qed_chain*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.slow_path_element* @qed_chain_produce(%struct.qed_chain*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @DOORBELL(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
