; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c___mlxsw_sp_fib_entry_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c___mlxsw_sp_fib_entry_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib_entry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*, i32)* @__mlxsw_sp_fib_entry_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_sp_fib_entry_op(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_fib_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_fib_entry* %1, %struct.mlxsw_sp_fib_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %41 [
    i32 129, label %11
    i32 131, label %16
    i32 128, label %21
    i32 133, label %26
    i32 132, label %31
    i32 130, label %36
  ]

11:                                               ; preds = %3
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %13 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @mlxsw_sp_fib_entry_op_remote(%struct.mlxsw_sp* %12, %struct.mlxsw_sp_fib_entry* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  br label %44

16:                                               ; preds = %3
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %18 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @mlxsw_sp_fib_entry_op_local(%struct.mlxsw_sp* %17, %struct.mlxsw_sp_fib_entry* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  br label %44

21:                                               ; preds = %3
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %23 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @mlxsw_sp_fib_entry_op_trap(%struct.mlxsw_sp* %22, %struct.mlxsw_sp_fib_entry* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %44

26:                                               ; preds = %3
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %28 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @mlxsw_sp_fib_entry_op_blackhole(%struct.mlxsw_sp* %27, %struct.mlxsw_sp_fib_entry* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %44

31:                                               ; preds = %3
  %32 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %33 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @mlxsw_sp_fib_entry_op_ipip_decap(%struct.mlxsw_sp* %32, %struct.mlxsw_sp_fib_entry* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  br label %44

36:                                               ; preds = %3
  %37 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %38 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @mlxsw_sp_fib_entry_op_nve_decap(%struct.mlxsw_sp* %37, %struct.mlxsw_sp_fib_entry* %38, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %44

41:                                               ; preds = %3
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %36, %31, %26, %21, %16, %11
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @mlxsw_sp_fib_entry_op_remote(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*, i32) #1

declare dso_local i32 @mlxsw_sp_fib_entry_op_local(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*, i32) #1

declare dso_local i32 @mlxsw_sp_fib_entry_op_trap(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*, i32) #1

declare dso_local i32 @mlxsw_sp_fib_entry_op_blackhole(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*, i32) #1

declare dso_local i32 @mlxsw_sp_fib_entry_op_ipip_decap(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*, i32) #1

declare dso_local i32 @mlxsw_sp_fib_entry_op_nve_decap(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
