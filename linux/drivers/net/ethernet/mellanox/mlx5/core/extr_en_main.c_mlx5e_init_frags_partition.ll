; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_init_frags_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_init_frags_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.mlx5e_wqe_frag_info*, i32, i32* }
%struct.TYPE_3__ = type { i32, i32, %struct.mlx5e_rq_frag_info* }
%struct.mlx5e_rq_frag_info = type { i64 }
%struct.mlx5e_wqe_frag_info = type { i64, i32, i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_rq*)* @mlx5e_init_frags_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_init_frags_partition(%struct.mlx5e_rq* %0) #0 {
  %2 = alloca %struct.mlx5e_rq*, align 8
  %3 = alloca %struct.mlx5e_wqe_frag_info, align 8
  %4 = alloca %struct.mlx5e_wqe_frag_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_rq_frag_info*, align 8
  %7 = alloca %struct.mlx5e_wqe_frag_info*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %2, align 8
  %9 = bitcast %struct.mlx5e_wqe_frag_info* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  store %struct.mlx5e_wqe_frag_info* null, %struct.mlx5e_wqe_frag_info** %4, align 8
  %10 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %3, i32 0, i32 2
  store i32* %14, i32** %15, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %94, %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = call i32 @mlx5_wq_cyc_get_size(i32* %20)
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %97

23:                                               ; preds = %16
  %24 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load %struct.mlx5e_rq_frag_info*, %struct.mlx5e_rq_frag_info** %27, align 8
  %29 = getelementptr inbounds %struct.mlx5e_rq_frag_info, %struct.mlx5e_rq_frag_info* %28, i64 0
  store %struct.mlx5e_rq_frag_info* %29, %struct.mlx5e_rq_frag_info** %6, align 8
  %30 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %31 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %36 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = shl i32 %34, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %33, i64 %41
  store %struct.mlx5e_wqe_frag_info* %42, %struct.mlx5e_wqe_frag_info** %7, align 8
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %88, %23
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %46 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %44, %49
  br i1 %50, label %51, label %93

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %3, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.mlx5e_rq_frag_info*, %struct.mlx5e_rq_frag_info** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mlx5e_rq_frag_info, %struct.mlx5e_rq_frag_info* %54, i64 %56
  %58 = getelementptr inbounds %struct.mlx5e_rq_frag_info, %struct.mlx5e_rq_frag_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %53, %59
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = icmp sgt i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %51
  %64 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %3, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %64, align 8
  %67 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %3, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %4, align 8
  %69 = icmp ne %struct.mlx5e_wqe_frag_info* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %4, align 8
  %72 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %71, i32 0, i32 1
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %63
  br label %74

74:                                               ; preds = %73, %51
  %75 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %7, align 8
  %76 = bitcast %struct.mlx5e_wqe_frag_info* %75 to i8*
  %77 = bitcast %struct.mlx5e_wqe_frag_info* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 24, i1 false)
  %78 = load %struct.mlx5e_rq_frag_info*, %struct.mlx5e_rq_frag_info** %6, align 8
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.mlx5e_rq_frag_info, %struct.mlx5e_rq_frag_info* %78, i64 %80
  %82 = getelementptr inbounds %struct.mlx5e_rq_frag_info, %struct.mlx5e_rq_frag_info* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %3, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %83
  store i64 %86, i64* %84, align 8
  %87 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %7, align 8
  store %struct.mlx5e_wqe_frag_info* %87, %struct.mlx5e_wqe_frag_info** %4, align 8
  br label %88

88:                                               ; preds = %74
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  %91 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %7, align 8
  %92 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %91, i32 1
  store %struct.mlx5e_wqe_frag_info* %92, %struct.mlx5e_wqe_frag_info** %7, align 8
  br label %43

93:                                               ; preds = %43
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %16

97:                                               ; preds = %16
  %98 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %4, align 8
  %99 = icmp ne %struct.mlx5e_wqe_frag_info* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %4, align 8
  %102 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %101, i32 0, i32 1
  store i32 1, i32* %102, align 8
  br label %103

103:                                              ; preds = %100, %97
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mlx5_wq_cyc_get_size(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
