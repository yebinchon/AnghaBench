; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_node_entry_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_node_entry_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib_entry = type { %struct.mlxsw_sp_fib_node* }
%struct.mlxsw_sp_fib_node = type { i32 }

@list = common dso_local global i32 0, align 4
@MLXSW_REG_RALUE_OP_WRITE_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*)* @mlxsw_sp_fib_node_entry_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fib_node_entry_del(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib_entry* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_fib_entry*, align 8
  %5 = alloca %struct.mlxsw_sp_fib_node*, align 8
  %6 = alloca %struct.mlxsw_sp_fib_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_fib_entry* %1, %struct.mlxsw_sp_fib_entry** %4, align 8
  %8 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %8, i32 0, i32 0
  %10 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %9, align 8
  store %struct.mlxsw_sp_fib_node* %10, %struct.mlxsw_sp_fib_node** %5, align 8
  %11 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %5, align 8
  %12 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %4, align 8
  %13 = call i32 @mlxsw_sp_fib_node_entry_is_first(%struct.mlxsw_sp_fib_node* %11, %struct.mlxsw_sp_fib_entry* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_node** %5, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_fib_node, %struct.mlxsw_sp_fib_node* %17, i32 0, i32 0
  %19 = call i32 @list_is_singular(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %16
  %22 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %4, align 8
  %23 = load i32, i32* @list, align 4
  %24 = call %struct.mlxsw_sp_fib_entry* @list_next_entry(%struct.mlxsw_sp_fib_entry* %22, i32 %23)
  store %struct.mlxsw_sp_fib_entry* %24, %struct.mlxsw_sp_fib_entry** %6, align 8
  %25 = load i32, i32* @MLXSW_REG_RALUE_OP_WRITE_DELETE, align 4
  store i32 %25, i32* %7, align 4
  %26 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %27 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %28 = call i32 @mlxsw_sp_fib_entry_update(%struct.mlxsw_sp* %26, %struct.mlxsw_sp_fib_entry* %27)
  %29 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %4, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @mlxsw_sp_fib_entry_offload_refresh(%struct.mlxsw_sp_fib_entry* %29, i32 %30, i32 0)
  br label %36

32:                                               ; preds = %16
  %33 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %34 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %4, align 8
  %35 = call i32 @mlxsw_sp_fib_entry_del(%struct.mlxsw_sp* %33, %struct.mlxsw_sp_fib_entry* %34)
  br label %36

36:                                               ; preds = %32, %21, %15
  ret void
}

declare dso_local i32 @mlxsw_sp_fib_node_entry_is_first(%struct.mlxsw_sp_fib_node*, %struct.mlxsw_sp_fib_entry*) #1

declare dso_local i32 @list_is_singular(i32*) #1

declare dso_local %struct.mlxsw_sp_fib_entry* @list_next_entry(%struct.mlxsw_sp_fib_entry*, i32) #1

declare dso_local i32 @mlxsw_sp_fib_entry_update(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*) #1

declare dso_local i32 @mlxsw_sp_fib_entry_offload_refresh(%struct.mlxsw_sp_fib_entry*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_fib_entry_del(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
