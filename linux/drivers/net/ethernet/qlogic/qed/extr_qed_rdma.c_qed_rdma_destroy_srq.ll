; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_destroy_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_destroy_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_rdma_destroy_srq_in_params = type { i32 }
%struct.rdma_srq_destroy_ramrod_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.qed_sp_init_data = type { i32, i32 }
%struct.qed_hwfn = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, %struct.qed_bmap, i32 }
%struct.qed_bmap = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qed_spq_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rdma_srq_destroy_ramrod_data }

@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@RDMA_RAMROD_DESTROY_SRQ = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SRQ destroyed Id = %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.qed_rdma_destroy_srq_in_params*)* @qed_rdma_destroy_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_rdma_destroy_srq(i8* %0, %struct.qed_rdma_destroy_srq_in_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qed_rdma_destroy_srq_in_params*, align 8
  %6 = alloca %struct.rdma_srq_destroy_ramrod_data*, align 8
  %7 = alloca %struct.qed_sp_init_data, align 4
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_spq_entry*, align 8
  %10 = alloca %struct.qed_bmap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.qed_rdma_destroy_srq_in_params* %1, %struct.qed_rdma_destroy_srq_in_params** %5, align 8
  %13 = bitcast %struct.qed_sp_init_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 8, i1 false)
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %15, %struct.qed_hwfn** %8, align 8
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %17 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %7, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %23 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %7, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %25 = load i32, i32* @RDMA_RAMROD_DESTROY_SRQ, align 4
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %27 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %26, i32 0, i32 0
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %24, %struct.qed_spq_entry** %9, i32 %25, i32 %30, %struct.qed_sp_init_data* %7)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %3, align 4
  br label %87

36:                                               ; preds = %2
  %37 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %38 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store %struct.rdma_srq_destroy_ramrod_data* %39, %struct.rdma_srq_destroy_ramrod_data** %6, align 8
  %40 = load %struct.qed_rdma_destroy_srq_in_params*, %struct.qed_rdma_destroy_srq_in_params** %5, align 8
  %41 = getelementptr inbounds %struct.qed_rdma_destroy_srq_in_params, %struct.qed_rdma_destroy_srq_in_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.rdma_srq_destroy_ramrod_data*, %struct.rdma_srq_destroy_ramrod_data** %6, align 8
  %45 = getelementptr inbounds %struct.rdma_srq_destroy_ramrod_data, %struct.rdma_srq_destroy_ramrod_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i8* %43, i8** %46, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i8* @cpu_to_le16(i32 %47)
  %49 = load %struct.rdma_srq_destroy_ramrod_data*, %struct.rdma_srq_destroy_ramrod_data** %6, align 8
  %50 = getelementptr inbounds %struct.rdma_srq_destroy_ramrod_data, %struct.rdma_srq_destroy_ramrod_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %53 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %54 = call i32 @qed_spq_post(%struct.qed_hwfn* %52, %struct.qed_spq_entry* %53, i32* null)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %36
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %3, align 4
  br label %87

59:                                               ; preds = %36
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %61 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  store %struct.qed_bmap* %63, %struct.qed_bmap** %10, align 8
  %64 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %65 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = call i32 @spin_lock_bh(i32* %67)
  %69 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %70 = load %struct.qed_bmap*, %struct.qed_bmap** %10, align 8
  %71 = load %struct.qed_rdma_destroy_srq_in_params*, %struct.qed_rdma_destroy_srq_in_params** %5, align 8
  %72 = getelementptr inbounds %struct.qed_rdma_destroy_srq_in_params, %struct.qed_rdma_destroy_srq_in_params* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @qed_bmap_release_id(%struct.qed_hwfn* %69, %struct.qed_bmap* %70, i32 %73)
  %75 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %76 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %75, i32 0, i32 0
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock_bh(i32* %78)
  %80 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %81 = load i32, i32* @QED_MSG_RDMA, align 4
  %82 = load %struct.qed_rdma_destroy_srq_in_params*, %struct.qed_rdma_destroy_srq_in_params** %5, align 8
  %83 = getelementptr inbounds %struct.qed_rdma_destroy_srq_in_params, %struct.qed_rdma_destroy_srq_in_params* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %80, i32 %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %12, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %59, %57, %34
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @qed_bmap_release_id(%struct.qed_hwfn*, %struct.qed_bmap*, i32) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
