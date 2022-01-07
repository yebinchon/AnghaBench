; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_rl.c_mlx5_rl_remove_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_rl.c_mlx5_rl_remove_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_rl_table }
%struct.mlx5_rl_table = type { i32 }
%struct.mlx5_rate_limit = type { i64, i32, i32, i32 }
%struct.mlx5_rl_entry = type { %struct.mlx5_rate_limit, i32, i32 }

@.str = private unnamed_addr constant [63 x i8] c"Rate %u, max_burst_sz %u typical_pkt_sz %u are not configured\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_rl_remove_rate(%struct.mlx5_core_dev* %0, %struct.mlx5_rate_limit* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_rate_limit*, align 8
  %5 = alloca %struct.mlx5_rl_table*, align 8
  %6 = alloca %struct.mlx5_rl_entry*, align 8
  %7 = alloca %struct.mlx5_rate_limit, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_rate_limit* %1, %struct.mlx5_rate_limit** %4, align 8
  %8 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.mlx5_rl_table* %10, %struct.mlx5_rl_table** %5, align 8
  store %struct.mlx5_rl_entry* null, %struct.mlx5_rl_entry** %6, align 8
  %11 = bitcast %struct.mlx5_rate_limit* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 24, i1 false)
  %12 = load %struct.mlx5_rate_limit*, %struct.mlx5_rate_limit** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_rate_limit, %struct.mlx5_rate_limit* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %67

17:                                               ; preds = %2
  %18 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %5, align 8
  %22 = load %struct.mlx5_rate_limit*, %struct.mlx5_rate_limit** %4, align 8
  %23 = call %struct.mlx5_rl_entry* @find_rl_entry(%struct.mlx5_rl_table* %21, %struct.mlx5_rate_limit* %22)
  store %struct.mlx5_rl_entry* %23, %struct.mlx5_rl_entry** %6, align 8
  %24 = load %struct.mlx5_rl_entry*, %struct.mlx5_rl_entry** %6, align 8
  %25 = icmp ne %struct.mlx5_rl_entry* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  %27 = load %struct.mlx5_rl_entry*, %struct.mlx5_rl_entry** %6, align 8
  %28 = getelementptr inbounds %struct.mlx5_rl_entry, %struct.mlx5_rl_entry* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %26, %17
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %33 = load %struct.mlx5_rate_limit*, %struct.mlx5_rate_limit** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5_rate_limit, %struct.mlx5_rate_limit* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mlx5_rate_limit*, %struct.mlx5_rate_limit** %4, align 8
  %37 = getelementptr inbounds %struct.mlx5_rate_limit, %struct.mlx5_rate_limit* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx5_rate_limit*, %struct.mlx5_rate_limit** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_rate_limit, %struct.mlx5_rate_limit* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %32, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %35, i32 %38, i32 %41)
  br label %63

43:                                               ; preds = %26
  %44 = load %struct.mlx5_rl_entry*, %struct.mlx5_rl_entry** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5_rl_entry, %struct.mlx5_rl_entry* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.mlx5_rl_entry*, %struct.mlx5_rl_entry** %6, align 8
  %49 = getelementptr inbounds %struct.mlx5_rl_entry, %struct.mlx5_rl_entry* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %43
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %54 = load %struct.mlx5_rl_entry*, %struct.mlx5_rl_entry** %6, align 8
  %55 = getelementptr inbounds %struct.mlx5_rl_entry, %struct.mlx5_rl_entry* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @mlx5_set_pp_rate_limit_cmd(%struct.mlx5_core_dev* %53, i32 %56, %struct.mlx5_rate_limit* %7)
  %58 = load %struct.mlx5_rl_entry*, %struct.mlx5_rl_entry** %6, align 8
  %59 = getelementptr inbounds %struct.mlx5_rl_entry, %struct.mlx5_rl_entry* %58, i32 0, i32 0
  %60 = bitcast %struct.mlx5_rate_limit* %59 to i8*
  %61 = bitcast %struct.mlx5_rate_limit* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %60, i8* align 8 %61, i64 24, i1 false)
  br label %62

62:                                               ; preds = %52, %43
  br label %63

63:                                               ; preds = %62, %31
  %64 = load %struct.mlx5_rl_table*, %struct.mlx5_rl_table** %5, align 8
  %65 = getelementptr inbounds %struct.mlx5_rl_table, %struct.mlx5_rl_table* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  br label %67

67:                                               ; preds = %63, %16
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local %struct.mlx5_rl_entry* @find_rl_entry(%struct.mlx5_rl_table*, %struct.mlx5_rate_limit*) #2

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i64, i32, i32) #2

declare dso_local i32 @mlx5_set_pp_rate_limit_cmd(%struct.mlx5_core_dev*, i32, %struct.mlx5_rate_limit*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
