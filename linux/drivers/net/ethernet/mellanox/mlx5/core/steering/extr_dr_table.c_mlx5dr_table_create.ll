; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_table.c_mlx5dr_table_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_table.c_mlx5dr_table_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_table = type { i32, i32, %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5dr_table* @mlx5dr_table_create(%struct.mlx5dr_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5dr_table*, align 8
  %4 = alloca %struct.mlx5dr_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5dr_table*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %8, i32 0, i32 0
  %10 = call i32 @refcount_inc(i32* %9)
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.mlx5dr_table* @kzalloc(i32 16, i32 %11)
  store %struct.mlx5dr_table* %12, %struct.mlx5dr_table** %6, align 8
  %13 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %14 = icmp ne %struct.mlx5dr_table* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %18 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %18, i32 0, i32 2
  store %struct.mlx5dr_domain* %17, %struct.mlx5dr_domain** %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %22 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %24 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %23, i32 0, i32 0
  %25 = call i32 @refcount_set(i32* %24, i32 1)
  %26 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %27 = call i32 @dr_table_init(%struct.mlx5dr_table* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  br label %42

31:                                               ; preds = %16
  %32 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %33 = call i32 @dr_table_create_sw_owned_tbl(%struct.mlx5dr_table* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %39

37:                                               ; preds = %31
  %38 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  store %struct.mlx5dr_table* %38, %struct.mlx5dr_table** %3, align 8
  br label %49

39:                                               ; preds = %36
  %40 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %41 = call i32 @dr_table_uninit(%struct.mlx5dr_table* %40)
  br label %42

42:                                               ; preds = %39, %30
  %43 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %44 = call i32 @kfree(%struct.mlx5dr_table* %43)
  br label %45

45:                                               ; preds = %42, %15
  %46 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %4, align 8
  %47 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %46, i32 0, i32 0
  %48 = call i32 @refcount_dec(i32* %47)
  store %struct.mlx5dr_table* null, %struct.mlx5dr_table** %3, align 8
  br label %49

49:                                               ; preds = %45, %37
  %50 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %3, align 8
  ret %struct.mlx5dr_table* %50
}

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local %struct.mlx5dr_table* @kzalloc(i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @dr_table_init(%struct.mlx5dr_table*) #1

declare dso_local i32 @dr_table_create_sw_owned_tbl(%struct.mlx5dr_table*) #1

declare dso_local i32 @dr_table_uninit(%struct.mlx5dr_table*) #1

declare dso_local i32 @kfree(%struct.mlx5dr_table*) #1

declare dso_local i32 @refcount_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
