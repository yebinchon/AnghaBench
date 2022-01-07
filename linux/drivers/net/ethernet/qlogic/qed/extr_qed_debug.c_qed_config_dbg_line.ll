; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_config_dbg_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_config_dbg_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_defs = type { i32, i32, i32, i32, i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@s_block_defs = common dso_local global %struct.block_defs** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32, i32, i32, i32)* @qed_config_dbg_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_config_dbg_line(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.qed_hwfn*, align 8
  %10 = alloca %struct.qed_ptt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.block_defs*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %9, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load %struct.block_defs**, %struct.block_defs*** @s_block_defs, align 8
  %19 = load i32, i32* %11, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.block_defs*, %struct.block_defs** %18, i64 %20
  %22 = load %struct.block_defs*, %struct.block_defs** %21, align 8
  store %struct.block_defs* %22, %struct.block_defs** %17, align 8
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %24 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %25 = load %struct.block_defs*, %struct.block_defs** %17, align 8
  %26 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @qed_wr(%struct.qed_hwfn* %23, %struct.qed_ptt* %24, i32 %27, i32 %28)
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %31 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %32 = load %struct.block_defs*, %struct.block_defs** %17, align 8
  %33 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @qed_wr(%struct.qed_hwfn* %30, %struct.qed_ptt* %31, i32 %34, i32 %35)
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %38 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %39 = load %struct.block_defs*, %struct.block_defs** %17, align 8
  %40 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @qed_wr(%struct.qed_hwfn* %37, %struct.qed_ptt* %38, i32 %41, i32 %42)
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %45 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %46 = load %struct.block_defs*, %struct.block_defs** %17, align 8
  %47 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %15, align 4
  %50 = call i32 @qed_wr(%struct.qed_hwfn* %44, %struct.qed_ptt* %45, i32 %48, i32 %49)
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %52 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %53 = load %struct.block_defs*, %struct.block_defs** %17, align 8
  %54 = getelementptr inbounds %struct.block_defs, %struct.block_defs* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i32 @qed_wr(%struct.qed_hwfn* %51, %struct.qed_ptt* %52, i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
