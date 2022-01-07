; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_modify_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_modify_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_rdma_modify_srq_in_params = type { i32, i32 }
%struct.rdma_srq_modify_ramrod_data = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.qed_sp_init_data = type { i32, i32 }
%struct.qed_hwfn = type { %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qed_spq_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rdma_srq_modify_ramrod_data }

@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@RDMA_RAMROD_MODIFY_SRQ = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"modified SRQ id = %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.qed_rdma_modify_srq_in_params*)* @qed_rdma_modify_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_rdma_modify_srq(i8* %0, %struct.qed_rdma_modify_srq_in_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qed_rdma_modify_srq_in_params*, align 8
  %6 = alloca %struct.rdma_srq_modify_ramrod_data*, align 8
  %7 = alloca %struct.qed_sp_init_data, align 4
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_spq_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.qed_rdma_modify_srq_in_params* %1, %struct.qed_rdma_modify_srq_in_params** %5, align 8
  %12 = bitcast %struct.qed_sp_init_data* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %14, %struct.qed_hwfn** %8, align 8
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %7, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %21 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %7, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %23 = load i32, i32* @RDMA_RAMROD_MODIFY_SRQ, align 4
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %25 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %22, %struct.qed_spq_entry** %9, i32 %23, i32 %28, %struct.qed_sp_init_data* %7)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %3, align 4
  br label %75

34:                                               ; preds = %2
  %35 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %36 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store %struct.rdma_srq_modify_ramrod_data* %37, %struct.rdma_srq_modify_ramrod_data** %6, align 8
  %38 = load %struct.qed_rdma_modify_srq_in_params*, %struct.qed_rdma_modify_srq_in_params** %5, align 8
  %39 = getelementptr inbounds %struct.qed_rdma_modify_srq_in_params, %struct.qed_rdma_modify_srq_in_params* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = load %struct.rdma_srq_modify_ramrod_data*, %struct.rdma_srq_modify_ramrod_data** %6, align 8
  %43 = getelementptr inbounds %struct.rdma_srq_modify_ramrod_data, %struct.rdma_srq_modify_ramrod_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %46 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.rdma_srq_modify_ramrod_data*, %struct.rdma_srq_modify_ramrod_data** %6, align 8
  %52 = getelementptr inbounds %struct.rdma_srq_modify_ramrod_data, %struct.rdma_srq_modify_ramrod_data* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  store i8* %50, i8** %53, align 8
  %54 = load %struct.qed_rdma_modify_srq_in_params*, %struct.qed_rdma_modify_srq_in_params** %5, align 8
  %55 = getelementptr inbounds %struct.qed_rdma_modify_srq_in_params, %struct.qed_rdma_modify_srq_in_params* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @cpu_to_le32(i32 %56)
  %58 = load %struct.rdma_srq_modify_ramrod_data*, %struct.rdma_srq_modify_ramrod_data** %6, align 8
  %59 = getelementptr inbounds %struct.rdma_srq_modify_ramrod_data, %struct.rdma_srq_modify_ramrod_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %61 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %9, align 8
  %62 = call i32 @qed_spq_post(%struct.qed_hwfn* %60, %struct.qed_spq_entry* %61, i32* null)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %34
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %3, align 4
  br label %75

67:                                               ; preds = %34
  %68 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %69 = load i32, i32* @QED_MSG_RDMA, align 4
  %70 = load %struct.qed_rdma_modify_srq_in_params*, %struct.qed_rdma_modify_srq_in_params** %5, align 8
  %71 = getelementptr inbounds %struct.qed_rdma_modify_srq_in_params, %struct.qed_rdma_modify_srq_in_params* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %68, i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %11, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %67, %65, %32
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #2

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
