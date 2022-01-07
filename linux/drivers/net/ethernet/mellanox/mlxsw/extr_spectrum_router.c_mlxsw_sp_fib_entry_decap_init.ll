; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_entry_decap_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_fib_entry_decap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_fib_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.mlxsw_sp_ipip_entry* }
%struct.mlxsw_sp_ipip_entry = type { %struct.mlxsw_sp_fib_entry* }

@MLXSW_SP_KVDL_ENTRY_TYPE_ADJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_ipip_entry*)* @mlxsw_sp_fib_entry_decap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_fib_entry_decap_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_fib_entry* %1, %struct.mlxsw_sp_ipip_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_fib_entry*, align 8
  %7 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_fib_entry* %1, %struct.mlxsw_sp_fib_entry** %6, align 8
  store %struct.mlxsw_sp_ipip_entry* %2, %struct.mlxsw_sp_ipip_entry** %7, align 8
  %10 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %11 = load i32, i32* @MLXSW_SP_KVDL_ENTRY_TYPE_ADJ, align 4
  %12 = call i32 @mlxsw_sp_kvdl_alloc(%struct.mlxsw_sp* %10, i32 %11, i32 1, i32* %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %19 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %7, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %19, i32 0, i32 0
  store %struct.mlxsw_sp_fib_entry* %18, %struct.mlxsw_sp_fib_entry** %20, align 8
  %21 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %7, align 8
  %22 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store %struct.mlxsw_sp_ipip_entry* %21, %struct.mlxsw_sp_ipip_entry** %24, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %17, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @mlxsw_sp_kvdl_alloc(%struct.mlxsw_sp*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
