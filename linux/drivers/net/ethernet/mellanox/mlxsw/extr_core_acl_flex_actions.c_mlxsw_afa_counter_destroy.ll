; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_counter_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_counter_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_block = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32)* }
%struct.mlxsw_afa_counter = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_afa_block*, %struct.mlxsw_afa_counter*)* @mlxsw_afa_counter_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_afa_counter_destroy(%struct.mlxsw_afa_block* %0, %struct.mlxsw_afa_counter* %1) #0 {
  %3 = alloca %struct.mlxsw_afa_block*, align 8
  %4 = alloca %struct.mlxsw_afa_counter*, align 8
  store %struct.mlxsw_afa_block* %0, %struct.mlxsw_afa_block** %3, align 8
  store %struct.mlxsw_afa_counter* %1, %struct.mlxsw_afa_counter** %4, align 8
  %5 = load %struct.mlxsw_afa_counter*, %struct.mlxsw_afa_counter** %4, align 8
  %6 = getelementptr inbounds %struct.mlxsw_afa_counter, %struct.mlxsw_afa_counter* %5, i32 0, i32 1
  %7 = call i32 @mlxsw_afa_resource_del(i32* %6)
  %8 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %3, align 8
  %9 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %13, align 8
  %15 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %3, align 8
  %16 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mlxsw_afa_counter*, %struct.mlxsw_afa_counter** %4, align 8
  %21 = getelementptr inbounds %struct.mlxsw_afa_counter, %struct.mlxsw_afa_counter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 %14(i32 %19, i32 %22)
  %24 = load %struct.mlxsw_afa_counter*, %struct.mlxsw_afa_counter** %4, align 8
  %25 = call i32 @kfree(%struct.mlxsw_afa_counter* %24)
  ret void
}

declare dso_local i32 @mlxsw_afa_resource_del(i32*) #1

declare dso_local i32 @kfree(%struct.mlxsw_afa_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
