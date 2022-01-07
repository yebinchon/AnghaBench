; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_create_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_rdma_create_srq_in_params = type { i8*, i8*, i8*, i32, i32 }
%struct.qed_rdma_create_srq_out_params = type { i8* }
%struct.rdma_srq_create_ramrod_data = type { i32, i8*, %struct.TYPE_7__, i8*, i8*, i32 }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.qed_sp_init_data = type { i32, i8* }
%struct.qed_hwfn = type { %struct.TYPE_8__*, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, %struct.qed_bmap }
%struct.qed_bmap = type { i32 }
%struct.TYPE_5__ = type { i8* }
%struct.qed_spq_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rdma_srq_create_ramrod_data }

@.str = private unnamed_addr constant [27 x i8] c"failed to allocate srq id\0A\00", align 1
@QED_ELEM_SRQ = common dso_local global i32 0, align 4
@QED_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@RDMA_RAMROD_CREATE_SRQ = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"SRQ created Id = %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.qed_rdma_create_srq_in_params*, %struct.qed_rdma_create_srq_out_params*)* @qed_rdma_create_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_rdma_create_srq(i8* %0, %struct.qed_rdma_create_srq_in_params* %1, %struct.qed_rdma_create_srq_out_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qed_rdma_create_srq_in_params*, align 8
  %7 = alloca %struct.qed_rdma_create_srq_out_params*, align 8
  %8 = alloca %struct.rdma_srq_create_ramrod_data*, align 8
  %9 = alloca %struct.qed_sp_init_data, align 8
  %10 = alloca %struct.qed_hwfn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.qed_spq_entry*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.qed_bmap*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.qed_rdma_create_srq_in_params* %1, %struct.qed_rdma_create_srq_in_params** %6, align 8
  store %struct.qed_rdma_create_srq_out_params* %2, %struct.qed_rdma_create_srq_out_params** %7, align 8
  %18 = bitcast %struct.qed_sp_init_data* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 16, i1 false)
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %20, %struct.qed_hwfn** %10, align 8
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %22 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  store %struct.qed_bmap* %24, %struct.qed_bmap** %15, align 8
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %26 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = call i32 @spin_lock_bh(i32* %28)
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %31 = load %struct.qed_bmap*, %struct.qed_bmap** %15, align 8
  %32 = call i32 @qed_rdma_bmap_alloc_id(%struct.qed_hwfn* %30, %struct.qed_bmap* %31, i64* %16)
  store i32 %32, i32* %17, align 4
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %34 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock_bh(i32* %36)
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %3
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %42 = call i32 @DP_NOTICE(%struct.qed_hwfn* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %4, align 4
  br label %158

44:                                               ; preds = %3
  %45 = load i32, i32* @QED_ELEM_SRQ, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i64, i64* %16, align 8
  %49 = call i32 @qed_cxt_dynamic_ilt_alloc(%struct.qed_hwfn* %46, i32 %47, i64 %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %142

53:                                               ; preds = %44
  %54 = load i64, i64* %16, align 8
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %14, align 8
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %57 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %13, align 8
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %61 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %13, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %9, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* @QED_SPQ_MODE_EBLOCK, align 4
  %67 = getelementptr inbounds %struct.qed_sp_init_data, %struct.qed_sp_init_data* %9, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %69 = load i32, i32* @RDMA_RAMROD_CREATE_SRQ, align 4
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %71 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @qed_sp_init_request(%struct.qed_hwfn* %68, %struct.qed_spq_entry** %12, i32 %69, i32 %74, %struct.qed_sp_init_data* %9)
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %53
  br label %142

79:                                               ; preds = %53
  %80 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %12, align 8
  %81 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store %struct.rdma_srq_create_ramrod_data* %82, %struct.rdma_srq_create_ramrod_data** %8, align 8
  %83 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %8, align 8
  %84 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.qed_rdma_create_srq_in_params*, %struct.qed_rdma_create_srq_in_params** %6, align 8
  %87 = getelementptr inbounds %struct.qed_rdma_create_srq_in_params, %struct.qed_rdma_create_srq_in_params* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @DMA_REGPAIR_LE(i32 %85, i32 %88)
  %90 = load %struct.qed_rdma_create_srq_in_params*, %struct.qed_rdma_create_srq_in_params** %6, align 8
  %91 = getelementptr inbounds %struct.qed_rdma_create_srq_in_params, %struct.qed_rdma_create_srq_in_params* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i8* @cpu_to_le16(i8* %92)
  %94 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %8, align 8
  %95 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load %struct.qed_rdma_create_srq_in_params*, %struct.qed_rdma_create_srq_in_params** %6, align 8
  %97 = getelementptr inbounds %struct.qed_rdma_create_srq_in_params, %struct.qed_rdma_create_srq_in_params* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @cpu_to_le16(i8* %98)
  %100 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %8, align 8
  %101 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %100, i32 0, i32 3
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** %14, align 8
  %103 = call i8* @cpu_to_le16(i8* %102)
  %104 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %8, align 8
  %105 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i8* %103, i8** %106, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = call i8* @cpu_to_le16(i8* %107)
  %109 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %8, align 8
  %110 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  store i8* %108, i8** %111, align 8
  %112 = load %struct.qed_rdma_create_srq_in_params*, %struct.qed_rdma_create_srq_in_params** %6, align 8
  %113 = getelementptr inbounds %struct.qed_rdma_create_srq_in_params, %struct.qed_rdma_create_srq_in_params* %112, i32 0, i32 2
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* @cpu_to_le16(i8* %114)
  %116 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %8, align 8
  %117 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %116, i32 0, i32 1
  store i8* %115, i8** %117, align 8
  %118 = load %struct.rdma_srq_create_ramrod_data*, %struct.rdma_srq_create_ramrod_data** %8, align 8
  %119 = getelementptr inbounds %struct.rdma_srq_create_ramrod_data, %struct.rdma_srq_create_ramrod_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.qed_rdma_create_srq_in_params*, %struct.qed_rdma_create_srq_in_params** %6, align 8
  %122 = getelementptr inbounds %struct.qed_rdma_create_srq_in_params, %struct.qed_rdma_create_srq_in_params* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @DMA_REGPAIR_LE(i32 %120, i32 %123)
  %125 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %126 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %12, align 8
  %127 = call i32 @qed_spq_post(%struct.qed_hwfn* %125, %struct.qed_spq_entry* %126, i32* null)
  store i32 %127, i32* %17, align 4
  %128 = load i32, i32* %17, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %79
  br label %142

131:                                              ; preds = %79
  %132 = load i8*, i8** %14, align 8
  %133 = load %struct.qed_rdma_create_srq_out_params*, %struct.qed_rdma_create_srq_out_params** %7, align 8
  %134 = getelementptr inbounds %struct.qed_rdma_create_srq_out_params, %struct.qed_rdma_create_srq_out_params* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 8
  %135 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %136 = load i32, i32* @QED_MSG_RDMA, align 4
  %137 = load %struct.qed_rdma_create_srq_out_params*, %struct.qed_rdma_create_srq_out_params** %7, align 8
  %138 = getelementptr inbounds %struct.qed_rdma_create_srq_out_params, %struct.qed_rdma_create_srq_out_params* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %135, i32 %136, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %139)
  %141 = load i32, i32* %17, align 4
  store i32 %141, i32* %4, align 4
  br label %158

142:                                              ; preds = %130, %78, %52
  %143 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %144 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %143, i32 0, i32 0
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = call i32 @spin_lock_bh(i32* %146)
  %148 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %149 = load %struct.qed_bmap*, %struct.qed_bmap** %15, align 8
  %150 = load i64, i64* %16, align 8
  %151 = call i32 @qed_bmap_release_id(%struct.qed_hwfn* %148, %struct.qed_bmap* %149, i64 %150)
  %152 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %153 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %152, i32 0, i32 0
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = call i32 @spin_unlock_bh(i32* %155)
  %157 = load i32, i32* %17, align 4
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %142, %131, %40
  %159 = load i32, i32* %4, align 4
  ret i32 %159
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @qed_rdma_bmap_alloc_id(%struct.qed_hwfn*, %struct.qed_bmap*, i64*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #2

declare dso_local i32 @qed_cxt_dynamic_ilt_alloc(%struct.qed_hwfn*, i32, i64) #2

declare dso_local i32 @qed_sp_init_request(%struct.qed_hwfn*, %struct.qed_spq_entry**, i32, i32, %struct.qed_sp_init_data*) #2

declare dso_local i32 @DMA_REGPAIR_LE(i32, i32) #2

declare dso_local i8* @cpu_to_le16(i8*) #2

declare dso_local i32 @qed_spq_post(%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*) #2

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i8*) #2

declare dso_local i32 @qed_bmap_release_id(%struct.qed_hwfn*, %struct.qed_bmap*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
