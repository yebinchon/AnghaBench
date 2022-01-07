; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_block = type { i32, %struct.mlxsw_afa_set* }
%struct.mlxsw_afa_set = type { %struct.mlxsw_afa_set* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_afa_block_destroy(%struct.mlxsw_afa_block* %0) #0 {
  %2 = alloca %struct.mlxsw_afa_block*, align 8
  %3 = alloca %struct.mlxsw_afa_set*, align 8
  %4 = alloca %struct.mlxsw_afa_set*, align 8
  store %struct.mlxsw_afa_block* %0, %struct.mlxsw_afa_block** %2, align 8
  %5 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %2, align 8
  %6 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %5, i32 0, i32 1
  %7 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %6, align 8
  store %struct.mlxsw_afa_set* %7, %struct.mlxsw_afa_set** %3, align 8
  br label %8

8:                                                ; preds = %18, %1
  %9 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %3, align 8
  %10 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %9, i32 0, i32 0
  %11 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %10, align 8
  store %struct.mlxsw_afa_set* %11, %struct.mlxsw_afa_set** %4, align 8
  %12 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %2, align 8
  %13 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %3, align 8
  %16 = call i32 @mlxsw_afa_set_put(i32 %14, %struct.mlxsw_afa_set* %15)
  %17 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %4, align 8
  store %struct.mlxsw_afa_set* %17, %struct.mlxsw_afa_set** %3, align 8
  br label %18

18:                                               ; preds = %8
  %19 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %3, align 8
  %20 = icmp ne %struct.mlxsw_afa_set* %19, null
  br i1 %20, label %8, label %21

21:                                               ; preds = %18
  %22 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %2, align 8
  %23 = call i32 @mlxsw_afa_resources_destroy(%struct.mlxsw_afa_block* %22)
  %24 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %2, align 8
  %25 = call i32 @kfree(%struct.mlxsw_afa_block* %24)
  ret void
}

declare dso_local i32 @mlxsw_afa_set_put(i32, %struct.mlxsw_afa_set*) #1

declare dso_local i32 @mlxsw_afa_resources_destroy(%struct.mlxsw_afa_block*) #1

declare dso_local i32 @kfree(%struct.mlxsw_afa_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
