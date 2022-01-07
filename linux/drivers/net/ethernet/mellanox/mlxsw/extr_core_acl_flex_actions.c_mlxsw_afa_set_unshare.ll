; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_set_unshare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_set_unshare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32, i32)* }
%struct.mlxsw_afa_set = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@mlxsw_afa_set_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_afa*, %struct.mlxsw_afa_set*)* @mlxsw_afa_set_unshare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_afa_set_unshare(%struct.mlxsw_afa* %0, %struct.mlxsw_afa_set* %1) #0 {
  %3 = alloca %struct.mlxsw_afa*, align 8
  %4 = alloca %struct.mlxsw_afa_set*, align 8
  store %struct.mlxsw_afa* %0, %struct.mlxsw_afa** %3, align 8
  store %struct.mlxsw_afa_set* %1, %struct.mlxsw_afa_set** %4, align 8
  %5 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %3, align 8
  %6 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %8, align 8
  %10 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %3, align 8
  %11 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %4, align 8
  %14 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %4, align 8
  %17 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 %9(i32 %12, i32 %15, i32 %19)
  %21 = load %struct.mlxsw_afa*, %struct.mlxsw_afa** %3, align 8
  %22 = getelementptr inbounds %struct.mlxsw_afa, %struct.mlxsw_afa* %21, i32 0, i32 0
  %23 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %4, align 8
  %24 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %23, i32 0, i32 1
  %25 = load i32, i32* @mlxsw_afa_set_ht_params, align 4
  %26 = call i32 @rhashtable_remove_fast(i32* %22, i32* %24, i32 %25)
  %27 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %4, align 8
  %28 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  ret void
}

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
