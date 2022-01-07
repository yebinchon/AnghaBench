; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_del_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_del_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eq = type { i32, i32, %struct.mlx5_cq_table }
%struct.mlx5_cq_table = type { i32, i32 }
%struct.mlx5_core_cq = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"cq 0x%x not found in eq 0x%x tree\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"corruption on cqn 0x%x in eq 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_eq_del_cq(%struct.mlx5_eq* %0, %struct.mlx5_core_cq* %1) #0 {
  %3 = alloca %struct.mlx5_eq*, align 8
  %4 = alloca %struct.mlx5_core_cq*, align 8
  %5 = alloca %struct.mlx5_cq_table*, align 8
  %6 = alloca %struct.mlx5_core_cq*, align 8
  store %struct.mlx5_eq* %0, %struct.mlx5_eq** %3, align 8
  store %struct.mlx5_core_cq* %1, %struct.mlx5_core_cq** %4, align 8
  %7 = load %struct.mlx5_eq*, %struct.mlx5_eq** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %7, i32 0, i32 2
  store %struct.mlx5_cq_table* %8, %struct.mlx5_cq_table** %5, align 8
  %9 = load %struct.mlx5_cq_table*, %struct.mlx5_cq_table** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5_cq_table, %struct.mlx5_cq_table* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.mlx5_cq_table*, %struct.mlx5_cq_table** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_cq_table, %struct.mlx5_cq_table* %12, i32 0, i32 1
  %14 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.mlx5_core_cq* @radix_tree_delete(i32* %13, i32 %16)
  store %struct.mlx5_core_cq* %17, %struct.mlx5_core_cq** %6, align 8
  %18 = load %struct.mlx5_cq_table*, %struct.mlx5_cq_table** %5, align 8
  %19 = getelementptr inbounds %struct.mlx5_cq_table, %struct.mlx5_cq_table* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock(i32* %19)
  %21 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %6, align 8
  %22 = icmp ne %struct.mlx5_core_cq* %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %2
  %24 = load %struct.mlx5_eq*, %struct.mlx5_eq** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx5_eq*, %struct.mlx5_eq** %3, align 8
  %28 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mlx5_core_dbg(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  br label %49

34:                                               ; preds = %2
  %35 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %6, align 8
  %36 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %4, align 8
  %37 = icmp ne %struct.mlx5_core_cq* %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.mlx5_eq*, %struct.mlx5_eq** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlx5_eq*, %struct.mlx5_eq** %3, align 8
  %43 = getelementptr inbounds %struct.mlx5_eq, %struct.mlx5_eq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %4, align 8
  %46 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mlx5_core_dbg(i32 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %23, %38, %34
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.mlx5_core_cq* @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlx5_core_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
