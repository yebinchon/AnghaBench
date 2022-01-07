; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_qp_free_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_qp_free_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }

@RES_QP = common dso_local global i32 0, align 4
@RES_QP_RESERVED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i32)* @qp_free_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_free_res(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  switch i32 %16, label %79 [
    i32 128, label %17
    i32 129, label %40
  ]

17:                                               ; preds = %5
  %18 = call i32 @get_param_l(i32* %11)
  %19 = and i32 %18, 8388607
  store i32 %19, i32* %14, align 4
  %20 = call i32 @get_param_h(i32* %11)
  store i32 %20, i32* %13, align 4
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @RES_QP, align 4
  %26 = call i32 @rem_res_range(%struct.mlx4_dev* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %82

30:                                               ; preds = %17
  %31 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @RES_QP, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @mlx4_release_resource(%struct.mlx4_dev* %31, i32 %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @__mlx4_qp_release_range(%struct.mlx4_dev* %36, i32 %37, i32 %38)
  br label %82

40:                                               ; preds = %5
  %41 = call i32 @get_param_l(i32* %11)
  %42 = and i32 %41, 8388607
  store i32 %42, i32* %15, align 4
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* @RES_QP_RESERVED, align 4
  %47 = call i32 @qp_res_start_move_to(%struct.mlx4_dev* %43, i32 %44, i32 %45, i32 %46, i32* null, i32 0)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %6, align 4
  br label %84

52:                                               ; preds = %40
  %53 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @fw_reserved(%struct.mlx4_dev* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @__mlx4_qp_free_icm(%struct.mlx4_dev* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @RES_QP, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call i32 @res_end_move(%struct.mlx4_dev* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @valid_reserved(%struct.mlx4_dev* %67, i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @RES_QP, align 4
  %77 = call i32 @rem_res_range(%struct.mlx4_dev* %73, i32 %74, i32 %75, i32 1, i32 %76, i32 0)
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %72, %61
  br label %82

79:                                               ; preds = %5
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %79, %78, %30, %29
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %50
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @get_param_l(i32*) #1

declare dso_local i32 @get_param_h(i32*) #1

declare dso_local i32 @rem_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_release_resource(%struct.mlx4_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @__mlx4_qp_release_range(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @qp_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @fw_reserved(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @__mlx4_qp_free_icm(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @res_end_move(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @valid_reserved(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
