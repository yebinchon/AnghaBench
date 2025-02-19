; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ipip_entry_promote_decap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_ipip_entry_promote_decap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_ipip_entry = type { i32 }
%struct.mlxsw_sp_fib_entry = type { i32 }

@MLXSW_SP_FIB_ENTRY_TYPE_IPIP_DECAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*, %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_fib_entry*)* @mlxsw_sp_ipip_entry_promote_decap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_ipip_entry_promote_decap(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_ipip_entry* %1, %struct.mlxsw_sp_fib_entry* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %6 = alloca %struct.mlxsw_sp_fib_entry*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_ipip_entry* %1, %struct.mlxsw_sp_ipip_entry** %5, align 8
  store %struct.mlxsw_sp_fib_entry* %2, %struct.mlxsw_sp_fib_entry** %6, align 8
  %7 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %8 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %9 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %5, align 8
  %10 = call i64 @mlxsw_sp_fib_entry_decap_init(%struct.mlxsw_sp* %7, %struct.mlxsw_sp_fib_entry* %8, %struct.mlxsw_sp_ipip_entry* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %25

13:                                               ; preds = %3
  %14 = load i32, i32* @MLXSW_SP_FIB_ENTRY_TYPE_IPIP_DECAP, align 4
  %15 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_fib_entry, %struct.mlxsw_sp_fib_entry* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %18 = load %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_fib_entry** %6, align 8
  %19 = call i64 @mlxsw_sp_fib_entry_update(%struct.mlxsw_sp* %17, %struct.mlxsw_sp_fib_entry* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %23 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %5, align 8
  %24 = call i32 @mlxsw_sp_ipip_entry_demote_decap(%struct.mlxsw_sp* %22, %struct.mlxsw_sp_ipip_entry* %23)
  br label %25

25:                                               ; preds = %12, %21, %13
  ret void
}

declare dso_local i64 @mlxsw_sp_fib_entry_decap_init(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*, %struct.mlxsw_sp_ipip_entry*) #1

declare dso_local i64 @mlxsw_sp_fib_entry_update(%struct.mlxsw_sp*, %struct.mlxsw_sp_fib_entry*) #1

declare dso_local i32 @mlxsw_sp_ipip_entry_demote_decap(%struct.mlxsw_sp*, %struct.mlxsw_sp_ipip_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
