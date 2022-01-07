; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_mlx5dr_send_postsend_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_mlx5dr_send_postsend_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i32 }
%struct.mlx5dr_action = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.postsend_info = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_send_postsend_action(%struct.mlx5dr_domain* %0, %struct.mlx5dr_action* %1) #0 {
  %3 = alloca %struct.mlx5dr_domain*, align 8
  %4 = alloca %struct.mlx5dr_action*, align 8
  %5 = alloca %struct.postsend_info, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %3, align 8
  store %struct.mlx5dr_action* %1, %struct.mlx5dr_action** %4, align 8
  %7 = bitcast %struct.postsend_info* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 32, i1 false)
  %8 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %5, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %5, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %5, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %5, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.postsend_info, %struct.postsend_info* %5, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %38, i32 0, i32 0
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %42 = call i32 @dr_postsend_icm_data(%struct.mlx5dr_domain* %41, %struct.postsend_info* %5)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %44 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %43, i32 0, i32 0
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @dr_postsend_icm_data(%struct.mlx5dr_domain*, %struct.postsend_info*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
