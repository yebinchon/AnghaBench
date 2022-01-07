; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_qp_alloc_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_qp_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RES_QP = common dso_local global i32 0, align 4
@RES_QP_MAPPED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i32, i32*)* @qp_alloc_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qp_alloc_res(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %134 [
    i32 128, label %21
    i32 129, label %80
  ]

21:                                               ; preds = %6
  %22 = call i32 @get_param_l(i32* %12)
  %23 = and i32 %22, 16777215
  store i32 %23, i32* %15, align 4
  %24 = call i32 @get_param_l(i32* %12)
  %25 = ashr i32 %24, 24
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %27 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %25, %29
  store i32 %30, i32* %19, align 4
  %31 = call i32 @get_param_h(i32* %12)
  store i32 %31, i32* %16, align 4
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @RES_QP, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @mlx4_grant_resource(%struct.mlx4_dev* %32, i32 %33, i32 %34, i32 %35, i32 0)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %21
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %7, align 4
  br label %139

41:                                               ; preds = %21
  %42 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %19, align 4
  %46 = call i32 @__mlx4_qp_reserve_range(%struct.mlx4_dev* %42, i32 %43, i32 %44, i32* %17, i32 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %41
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @RES_QP, align 4
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @mlx4_release_resource(%struct.mlx4_dev* %50, i32 %51, i32 %52, i32 %53, i32 0)
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %7, align 4
  br label %139

56:                                               ; preds = %41
  %57 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @RES_QP, align 4
  %62 = call i32 @add_res_range(%struct.mlx4_dev* %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 0)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %56
  %66 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @RES_QP, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @mlx4_release_resource(%struct.mlx4_dev* %66, i32 %67, i32 %68, i32 %69, i32 0)
  %71 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @__mlx4_qp_release_range(%struct.mlx4_dev* %71, i32 %72, i32 %73)
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %7, align 4
  br label %139

76:                                               ; preds = %56
  %77 = load i32*, i32** %13, align 8
  %78 = load i32, i32* %17, align 4
  %79 = call i32 @set_param_l(i32* %77, i32 %78)
  br label %137

80:                                               ; preds = %6
  %81 = call i32 @get_param_l(i32* %12)
  %82 = and i32 %81, 8388607
  store i32 %82, i32* %18, align 4
  %83 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %18, align 4
  %86 = call i32 @valid_reserved(%struct.mlx4_dev* %83, i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %80
  %89 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %18, align 4
  %92 = load i32, i32* @RES_QP, align 4
  %93 = call i32 @add_res_range(%struct.mlx4_dev* %89, i32 %90, i32 %91, i32 1, i32 %92, i32 0)
  store i32 %93, i32* %14, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %7, align 4
  br label %139

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %80
  %100 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* @RES_QP_MAPPED, align 4
  %104 = call i32 @qp_res_start_move_to(%struct.mlx4_dev* %100, i32 %101, i32 %102, i32 %103, i32* null, i32 1)
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i32, i32* %14, align 4
  store i32 %108, i32* %7, align 4
  br label %139

109:                                              ; preds = %99
  %110 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %111 = load i32, i32* %18, align 4
  %112 = call i32 @fw_reserved(%struct.mlx4_dev* %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %128, label %114

114:                                              ; preds = %109
  %115 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %116 = load i32, i32* %18, align 4
  %117 = call i32 @__mlx4_qp_alloc_icm(%struct.mlx4_dev* %115, i32 %116)
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @RES_QP, align 4
  %124 = load i32, i32* %18, align 4
  %125 = call i32 @res_abort_move(%struct.mlx4_dev* %121, i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %14, align 4
  store i32 %126, i32* %7, align 4
  br label %139

127:                                              ; preds = %114
  br label %128

128:                                              ; preds = %127, %109
  %129 = load %struct.mlx4_dev*, %struct.mlx4_dev** %8, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @RES_QP, align 4
  %132 = load i32, i32* %18, align 4
  %133 = call i32 @res_end_move(%struct.mlx4_dev* %129, i32 %130, i32 %131, i32 %132)
  br label %137

134:                                              ; preds = %6
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %14, align 4
  br label %137

137:                                              ; preds = %134, %128, %76
  %138 = load i32, i32* %14, align 4
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %137, %120, %107, %96, %65, %49, %39
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local i32 @get_param_l(i32*) #1

declare dso_local i32 @get_param_h(i32*) #1

declare dso_local i32 @mlx4_grant_resource(%struct.mlx4_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @__mlx4_qp_reserve_range(%struct.mlx4_dev*, i32, i32, i32*, i32) #1

declare dso_local i32 @mlx4_release_resource(%struct.mlx4_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @add_res_range(%struct.mlx4_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__mlx4_qp_release_range(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @set_param_l(i32*, i32) #1

declare dso_local i32 @valid_reserved(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @qp_res_start_move_to(%struct.mlx4_dev*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @fw_reserved(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @__mlx4_qp_alloc_icm(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @res_abort_move(%struct.mlx4_dev*, i32, i32, i32) #1

declare dso_local i32 @res_end_move(%struct.mlx4_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
