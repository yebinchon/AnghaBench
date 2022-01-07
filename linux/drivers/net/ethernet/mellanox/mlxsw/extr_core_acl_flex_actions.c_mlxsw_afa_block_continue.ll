; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_continue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_block = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLXSW_AFA_SET_GOTO_BINDING_CMD_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_afa_block_continue(%struct.mlxsw_afa_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_afa_block*, align 8
  store %struct.mlxsw_afa_block* %0, %struct.mlxsw_afa_block** %3, align 8
  %4 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %3, align 8
  %5 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %19

11:                                               ; preds = %1
  %12 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %3, align 8
  %13 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MLXSW_AFA_SET_GOTO_BINDING_CMD_NONE, align 4
  %16 = call i32 @mlxsw_afa_set_goto_set(i32 %14, i32 %15, i32 0)
  %17 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %3, align 8
  %18 = getelementptr inbounds %struct.mlxsw_afa_block, %struct.mlxsw_afa_block* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %11, %8
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @mlxsw_afa_set_goto_set(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
