; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_node_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_node_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib_node = type { %struct.mlxsw_sp_fib* }
%struct.mlxsw_sp_fib = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib*)* @mlxsw_sp_fib_node_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fib_node_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib_node* %1, %struct.mlxsw_sp_fib* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_fib_node*, align 8
  %7 = alloca %struct.mlxsw_sp_fib*, align 8
  %8 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_fib_node* %1, %struct.mlxsw_sp_fib_node** %6, align 8
  store %struct.mlxsw_sp_fib* %2, %struct.mlxsw_sp_fib** %7, align 8
  %9 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %7, align 8
  %10 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %6, align 8
  %11 = call i32 @mlxsw_sp_fib_node_insert(%struct.mlxsw_sp_fib* %9, %struct.mlxsw_sp_fib_node* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %4, align 4
  br label %34

16:                                               ; preds = %3
  %17 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %7, align 8
  %18 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %6, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_fib_node, %struct.mlxsw_sp_fib_node* %18, i32 0, i32 0
  store %struct.mlxsw_sp_fib* %17, %struct.mlxsw_sp_fib** %19, align 8
  %20 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %21 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %6, align 8
  %22 = call i32 @mlxsw_sp_fib_lpm_tree_link(%struct.mlxsw_sp* %20, %struct.mlxsw_sp_fib_node* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %27

26:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %34

27:                                               ; preds = %25
  %28 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %6, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_fib_node, %struct.mlxsw_sp_fib_node* %28, i32 0, i32 0
  store %struct.mlxsw_sp_fib* null, %struct.mlxsw_sp_fib** %29, align 8
  %30 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %7, align 8
  %31 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %6, align 8
  %32 = call i32 @mlxsw_sp_fib_node_remove(%struct.mlxsw_sp_fib* %30, %struct.mlxsw_sp_fib_node* %31)
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %26, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @mlxsw_sp_fib_node_insert(%struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib_node*) #1

declare dso_local i32 @mlxsw_sp_fib_lpm_tree_link(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_node*) #1

declare dso_local i32 @mlxsw_sp_fib_node_remove(%struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
