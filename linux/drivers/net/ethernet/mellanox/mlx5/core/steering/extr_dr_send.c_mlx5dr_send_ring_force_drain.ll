; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_mlx5dr_send_ring_force_drain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_mlx5dr_send_ring_force_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { %struct.mlx5dr_send_ring* }
%struct.mlx5dr_send_ring = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.postsend_info = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i64 }

@DR_STE_SIZE = common dso_local global i32 0, align 4
@TH_NUMS_TO_DRAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_send_ring_force_drain(%struct.mlx5dr_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5dr_domain*, align 8
  %4 = alloca %struct.mlx5dr_send_ring*, align 8
  %5 = alloca %struct.postsend_info, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %3, align 8
  %12 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %12, i32 0, i32 0
  %14 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %13, align 8
  store %struct.mlx5dr_send_ring* %14, %struct.mlx5dr_send_ring** %4, align 8
  %15 = bitcast %struct.postsend_info* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 40, i1 false)
  %16 = load i32, i32* @DR_STE_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @TH_NUMS_TO_DRAIN, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sdiv i32 %24, 2
  store i32 %25, i32* %8, align 4
  %26 = ptrtoint i32* %19 to i64
  %27 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %5, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @DR_STE_SIZE, align 4
  %30 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %5, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %5, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %4, align 8
  %35 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %5, i32 0, i32 0
  store i64 %38, i64* %39, align 8
  %40 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %5, i32 0, i32 1
  store i32 %45, i32* %46, align 8
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %59, %1
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %53 = call i32 @dr_postsend_icm_data(%struct.mlx5dr_domain* %52, %struct.postsend_info* %5)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %67

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %47

62:                                               ; preds = %47
  %63 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %64 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %4, align 8
  %65 = call i32 @dr_handle_pending_wc(%struct.mlx5dr_domain* %63, %struct.mlx5dr_send_ring* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %67

67:                                               ; preds = %62, %56
  %68 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dr_postsend_icm_data(%struct.mlx5dr_domain*, %struct.postsend_info*) #3

declare dso_local i32 @dr_handle_pending_wc(%struct.mlx5dr_domain*, %struct.mlx5dr_send_ring*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
