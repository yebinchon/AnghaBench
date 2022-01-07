; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_alloc_tr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_alloc_tr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.res_common = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"implementation missing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.res_common* (i32, i32, i32, i32)* @alloc_tr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.res_common* @alloc_tr(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.res_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.res_common*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %45 [
    i32 130, label %12
    i32 132, label %15
    i32 131, label %19
    i32 135, label %23
    i32 136, label %26
    i32 129, label %29
    i32 133, label %32
    i32 137, label %34
    i32 128, label %38
    i32 134, label %41
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.res_common* @alloc_qp_tr(i32 %13)
  store %struct.res_common* %14, %struct.res_common** %10, align 8
  br label %46

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.res_common* @alloc_mpt_tr(i32 %16, i32 %17)
  store %struct.res_common* %18, %struct.res_common** %10, align 8
  br label %46

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call %struct.res_common* @alloc_mtt_tr(i32 %20, i32 %21)
  store %struct.res_common* %22, %struct.res_common** %10, align 8
  br label %46

23:                                               ; preds = %4
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.res_common* @alloc_eq_tr(i32 %24)
  store %struct.res_common* %25, %struct.res_common** %10, align 8
  br label %46

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.res_common* @alloc_cq_tr(i32 %27)
  store %struct.res_common* %28, %struct.res_common** %10, align 8
  br label %46

29:                                               ; preds = %4
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.res_common* @alloc_srq_tr(i32 %30)
  store %struct.res_common* %31, %struct.res_common** %10, align 8
  br label %46

32:                                               ; preds = %4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.res_common* null, %struct.res_common** %5, align 8
  br label %55

34:                                               ; preds = %4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.res_common* @alloc_counter_tr(i32 %35, i32 %36)
  store %struct.res_common* %37, %struct.res_common** %10, align 8
  br label %46

38:                                               ; preds = %4
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.res_common* @alloc_xrcdn_tr(i32 %39)
  store %struct.res_common* %40, %struct.res_common** %10, align 8
  br label %46

41:                                               ; preds = %4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call %struct.res_common* @alloc_fs_rule_tr(i32 %42, i32 %43)
  store %struct.res_common* %44, %struct.res_common** %10, align 8
  br label %46

45:                                               ; preds = %4
  store %struct.res_common* null, %struct.res_common** %5, align 8
  br label %55

46:                                               ; preds = %41, %38, %34, %29, %26, %23, %19, %15, %12
  %47 = load %struct.res_common*, %struct.res_common** %10, align 8
  %48 = icmp ne %struct.res_common* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.res_common*, %struct.res_common** %10, align 8
  %52 = getelementptr inbounds %struct.res_common, %struct.res_common* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %49, %46
  %54 = load %struct.res_common*, %struct.res_common** %10, align 8
  store %struct.res_common* %54, %struct.res_common** %5, align 8
  br label %55

55:                                               ; preds = %53, %45, %32
  %56 = load %struct.res_common*, %struct.res_common** %5, align 8
  ret %struct.res_common* %56
}

declare dso_local %struct.res_common* @alloc_qp_tr(i32) #1

declare dso_local %struct.res_common* @alloc_mpt_tr(i32, i32) #1

declare dso_local %struct.res_common* @alloc_mtt_tr(i32, i32) #1

declare dso_local %struct.res_common* @alloc_eq_tr(i32) #1

declare dso_local %struct.res_common* @alloc_cq_tr(i32) #1

declare dso_local %struct.res_common* @alloc_srq_tr(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.res_common* @alloc_counter_tr(i32, i32) #1

declare dso_local %struct.res_common* @alloc_xrcdn_tr(i32) #1

declare dso_local %struct.res_common* @alloc_fs_rule_tr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
