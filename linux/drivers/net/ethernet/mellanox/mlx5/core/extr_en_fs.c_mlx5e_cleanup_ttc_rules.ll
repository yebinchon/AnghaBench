; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_cleanup_ttc_rules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_fs.c_mlx5e_cleanup_ttc_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_ttc_table = type { i32**, i32** }

@MLX5E_NUM_TT = common dso_local global i32 0, align 4
@MLX5E_NUM_TUNNEL_TT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_ttc_table*)* @mlx5e_cleanup_ttc_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_cleanup_ttc_rules(%struct.mlx5e_ttc_table* %0) #0 {
  %2 = alloca %struct.mlx5e_ttc_table*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx5e_ttc_table* %0, %struct.mlx5e_ttc_table** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %34, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MLX5E_NUM_TT, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %37

8:                                                ; preds = %4
  %9 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5e_ttc_table, %struct.mlx5e_ttc_table* %9, i32 0, i32 1
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @IS_ERR_OR_NULL(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %8
  %19 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %2, align 8
  %20 = getelementptr inbounds %struct.mlx5e_ttc_table, %struct.mlx5e_ttc_table* %19, i32 0, i32 1
  %21 = load i32**, i32*** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32*, i32** %21, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @mlx5_del_flow_rules(i32* %25)
  %27 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %2, align 8
  %28 = getelementptr inbounds %struct.mlx5e_ttc_table, %struct.mlx5e_ttc_table* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %18, %8
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %4

37:                                               ; preds = %4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %68, %37
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @MLX5E_NUM_TUNNEL_TT, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %71

42:                                               ; preds = %38
  %43 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %2, align 8
  %44 = getelementptr inbounds %struct.mlx5e_ttc_table, %struct.mlx5e_ttc_table* %43, i32 0, i32 0
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @IS_ERR_OR_NULL(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %42
  %53 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %2, align 8
  %54 = getelementptr inbounds %struct.mlx5e_ttc_table, %struct.mlx5e_ttc_table* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32*, i32** %55, i64 %57
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @mlx5_del_flow_rules(i32* %59)
  %61 = load %struct.mlx5e_ttc_table*, %struct.mlx5e_ttc_table** %2, align 8
  %62 = getelementptr inbounds %struct.mlx5e_ttc_table, %struct.mlx5e_ttc_table* %61, i32 0, i32 0
  %63 = load i32**, i32*** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %52, %42
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %38

71:                                               ; preds = %38
  ret void
}

declare dso_local i32 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @mlx5_del_flow_rules(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
