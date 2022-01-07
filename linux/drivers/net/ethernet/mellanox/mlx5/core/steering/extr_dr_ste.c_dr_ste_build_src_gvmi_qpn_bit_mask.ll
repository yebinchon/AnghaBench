; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_src_gvmi_qpn_bit_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_build_src_gvmi_qpn_bit_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_param = type { %struct.mlx5dr_match_misc }
%struct.mlx5dr_match_misc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@src_gvmi_qp = common dso_local global i32 0, align 4
@source_gvmi = common dso_local global i32 0, align 4
@source_port = common dso_local global i32 0, align 4
@source_qp = common dso_local global i32 0, align 4
@source_sqn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_match_param*, i32*)* @dr_ste_build_src_gvmi_qpn_bit_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_ste_build_src_gvmi_qpn_bit_mask(%struct.mlx5dr_match_param* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5dr_match_param*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mlx5dr_match_misc*, align 8
  store %struct.mlx5dr_match_param* %0, %struct.mlx5dr_match_param** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %7, i32 0, i32 0
  store %struct.mlx5dr_match_misc* %8, %struct.mlx5dr_match_misc** %6, align 8
  %9 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %6, align 8
  %10 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 65535
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %49

21:                                               ; preds = %13, %2
  %22 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %6, align 8
  %28 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 65535
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %49

34:                                               ; preds = %26, %21
  %35 = load i32, i32* @src_gvmi_qp, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* @source_gvmi, align 4
  %38 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %6, align 8
  %39 = load i32, i32* @source_port, align 4
  %40 = call i32 @DR_STE_SET_MASK(i32 %35, i32* %36, i32 %37, %struct.mlx5dr_match_misc* %38, i32 %39)
  %41 = load i32, i32* @src_gvmi_qp, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @source_qp, align 4
  %44 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %6, align 8
  %45 = load i32, i32* @source_sqn, align 4
  %46 = call i32 @DR_STE_SET_MASK(i32 %41, i32* %42, i32 %43, %struct.mlx5dr_match_misc* %44, i32 %45)
  %47 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %6, align 8
  %48 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %34, %31, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @DR_STE_SET_MASK(i32, i32*, i32, %struct.mlx5dr_match_misc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
