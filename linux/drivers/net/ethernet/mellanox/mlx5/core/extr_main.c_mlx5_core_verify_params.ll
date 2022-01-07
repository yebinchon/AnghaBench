; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_mlx5_core_verify_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_main.c_mlx5_core_verify_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prof_sel = common dso_local global i64 0, align 8
@profile = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [107 x i8] c"mlx5_core: WARNING: Invalid module parameter prof_sel %d, valid range 0-%zu, changing back to default(%d)\0A\00", align 1
@MLX5_DEFAULT_PROF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mlx5_core_verify_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_core_verify_params() #0 {
  %1 = load i64, i64* @prof_sel, align 8
  %2 = load i32, i32* @profile, align 4
  %3 = call i64 @ARRAY_SIZE(i32 %2)
  %4 = icmp sge i64 %1, %3
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = load i64, i64* @prof_sel, align 8
  %7 = load i32, i32* @profile, align 4
  %8 = call i64 @ARRAY_SIZE(i32 %7)
  %9 = sub nsw i64 %8, 1
  %10 = load i64, i64* @MLX5_DEFAULT_PROF, align 8
  %11 = call i32 @pr_warn(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0), i64 %6, i64 %9, i64 %10)
  %12 = load i64, i64* @MLX5_DEFAULT_PROF, align 8
  store i64 %12, i64* @prof_sel, align 8
  br label %13

13:                                               ; preds = %5, %0
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pr_warn(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
