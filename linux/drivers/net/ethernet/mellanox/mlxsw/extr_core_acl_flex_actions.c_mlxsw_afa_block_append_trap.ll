; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_append_trap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_append_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_block = type { i32 }

@MLXSW_AFA_TRAPDISC_CODE = common dso_local global i32 0, align 4
@MLXSW_AFA_TRAPDISC_SIZE = common dso_local global i32 0, align 4
@MLXSW_AFA_TRAPDISC_TRAP_ACTION_TRAP = common dso_local global i32 0, align 4
@MLXSW_AFA_TRAPDISC_FORWARD_ACTION_DISCARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_afa_block_append_trap(%struct.mlxsw_afa_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_afa_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.mlxsw_afa_block* %0, %struct.mlxsw_afa_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %4, align 8
  %8 = load i32, i32* @MLXSW_AFA_TRAPDISC_CODE, align 4
  %9 = load i32, i32* @MLXSW_AFA_TRAPDISC_SIZE, align 4
  %10 = call i8* @mlxsw_afa_block_append_action(%struct.mlxsw_afa_block* %7, i32 %8, i32 %9)
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i64 @IS_ERR(i8* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @PTR_ERR(i8* %15)
  store i32 %16, i32* %3, align 4
  br label %23

17:                                               ; preds = %2
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* @MLXSW_AFA_TRAPDISC_TRAP_ACTION_TRAP, align 4
  %20 = load i32, i32* @MLXSW_AFA_TRAPDISC_FORWARD_ACTION_DISCARD, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @mlxsw_afa_trapdisc_pack(i8* %18, i32 %19, i32 %20, i32 %21)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %17, %14
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i8* @mlxsw_afa_block_append_action(%struct.mlxsw_afa_block*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @mlxsw_afa_trapdisc_pack(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
