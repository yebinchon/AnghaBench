; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_set_next_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_set_next_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_set = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@MLXSW_AFA_SET_TYPE_NEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_afa_set*, i32)* @mlxsw_afa_set_next_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_afa_set_next_set(%struct.mlxsw_afa_set* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxsw_afa_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store %struct.mlxsw_afa_set* %0, %struct.mlxsw_afa_set** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlxsw_afa_set*, %struct.mlxsw_afa_set** %3, align 8
  %7 = getelementptr inbounds %struct.mlxsw_afa_set, %struct.mlxsw_afa_set* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @MLXSW_AFA_SET_TYPE_NEXT, align 4
  %12 = call i32 @mlxsw_afa_set_type_set(i8* %10, i32 %11)
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @mlxsw_afa_set_next_action_set_ptr_set(i8* %13, i32 %14)
  ret void
}

declare dso_local i32 @mlxsw_afa_set_type_set(i8*, i32) #1

declare dso_local i32 @mlxsw_afa_set_next_action_set_ptr_set(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
