; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_block = type { i32, %struct.mlxsw_afa_set*, i32, %struct.mlxsw_afa_set* }
%struct.mlxsw_afa_set = type { i32, %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_afa_block_commit(%struct.mlxsw_afa_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_afa_block*, align 8
  %4 = alloca %struct.mlxsw_afa_set*, align 8
  %5 = alloca %struct.mlxsw_afa_set*, align 8
  store %struct.mlxsw_afa_block* %0, %struct.mlxsw_afa_block** %3, align 8
  %6 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %6, i32 0, i32 3
  %8 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %7, align 8
  store %struct.mlxsw_afa_set* %8, %struct.mlxsw_afa_set** %4, align 8
  %9 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %9, i32 0, i32 3
  store %struct.mlxsw_afa_set* null, %struct.mlxsw_afa_set** %10, align 8
  %11 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %3, align 8
  %12 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  br label %13

13:                                               ; preds = %42, %1
  %14 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %4, align 8
  %15 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %14, i32 0, i32 2
  %16 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %15, align 8
  store %struct.mlxsw_afa_set* %16, %struct.mlxsw_afa_set** %5, align 8
  %17 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %3, align 8
  %18 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %4, align 8
  %21 = call %struct.mlxsw_afa_set* @mlxsw_afa_set_get(i32 %19, %struct.mlxsw_afa_set* %20)
  store %struct.mlxsw_afa_set* %21, %struct.mlxsw_afa_set** %4, align 8
  %22 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %4, align 8
  %23 = call i64 @IS_ERR(%struct.mlxsw_afa_set* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %4, align 8
  %27 = call i32 @PTR_ERR(%struct.mlxsw_afa_set* %26)
  store i32 %27, i32* %2, align 4
  br label %49

28:                                               ; preds = %13
  %29 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %5, align 8
  %30 = icmp ne %struct.mlxsw_afa_set* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %4, align 8
  %33 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %5, align 8
  %34 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %33, i32 0, i32 1
  store %struct.mlxsw_afa_set* %32, %struct.mlxsw_afa_set** %34, align 8
  %35 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %5, align 8
  %36 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %4, align 8
  %37 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @mlxsw_afa_set_next_set(%struct.mlxsw_afa_set* %35, i32 %38)
  %40 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %5, align 8
  store %struct.mlxsw_afa_set* %40, %struct.mlxsw_afa_set** %4, align 8
  br label %41

41:                                               ; preds = %31, %28
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %5, align 8
  %44 = icmp ne %struct.mlxsw_afa_set* %43, null
  br i1 %44, label %13, label %45

45:                                               ; preds = %42
  %46 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %4, align 8
  %47 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %3, align 8
  %48 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %47, i32 0, i32 1
  store %struct.mlxsw_afa_set* %46, %struct.mlxsw_afa_set** %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %25
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.mlxsw_afa_set* @mlxsw_afa_set_get(i32, %struct.mlxsw_afa_set*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_afa_set*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_afa_set*) #1

declare dso_local i32 @mlxsw_afa_set_next_set(%struct.mlxsw_afa_set*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
