; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib*)* @mlxsw_sp_fib_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_fib_destroy(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_fib*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_fib* %1, %struct.mlxsw_sp_fib** %4, align 8
  %5 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %6 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %4, align 8
  %7 = call i32 @mlxsw_sp_vr_lpm_tree_unbind(%struct.mlxsw_sp* %5, %struct.mlxsw_sp_fib* %6)
  %8 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %9 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp* %8, i32 %11)
  %13 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %4, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %13, i32 0, i32 1
  %15 = call i32 @list_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_fib, %struct.mlxsw_sp_fib* %20, i32 0, i32 0
  %22 = call i32 @rhashtable_destroy(i32* %21)
  %23 = load %struct.mlxsw_sp_fib*, %struct.mlxsw_sp_fib** %4, align 8
  %24 = call i32 @kfree(%struct.mlxsw_sp_fib* %23)
  ret void
}

declare dso_local i32 @mlxsw_sp_vr_lpm_tree_unbind(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib*) #1

declare dso_local i32 @mlxsw_sp_lpm_tree_put(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
