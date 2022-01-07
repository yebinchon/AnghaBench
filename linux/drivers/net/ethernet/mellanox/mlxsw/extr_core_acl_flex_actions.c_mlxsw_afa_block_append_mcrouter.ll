; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_append_mcrouter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_acl_flex_actions.c_mlxsw_afa_block_append_mcrouter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_afa_block = type { i32 }

@MLXSW_AFA_MCROUTER_CODE = common dso_local global i32 0, align 4
@MLXSW_AFA_MCROUTER_SIZE = common dso_local global i32 0, align 4
@MLXSW_AFA_MCROUTER_RPF_ACTION_TRAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_afa_block_append_mcrouter(%struct.mlxsw_afa_block* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_afa_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.mlxsw_afa_block* %0, %struct.mlxsw_afa_block** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %7, align 8
  %14 = load i32, i32* @MLXSW_AFA_MCROUTER_CODE, align 4
  %15 = load i32, i32* @MLXSW_AFA_MCROUTER_SIZE, align 4
  %16 = call i8* @mlxsw_afa_block_append_action(%struct.mlxsw_afa_block* %13, i32 %14, i32 %15)
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = call i64 @IS_ERR(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i8*, i8** %12, align 8
  %22 = call i32 @PTR_ERR(i8* %21)
  store i32 %22, i32* %6, align 4
  br label %31

23:                                               ; preds = %5
  %24 = load i8*, i8** %12, align 8
  %25 = load i32, i32* @MLXSW_AFA_MCROUTER_RPF_ACTION_TRAP, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @mlxsw_afa_mcrouter_pack(i8* %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %23, %20
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i8* @mlxsw_afa_block_append_action(%struct.mlxsw_afa_block*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @mlxsw_afa_mcrouter_pack(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
