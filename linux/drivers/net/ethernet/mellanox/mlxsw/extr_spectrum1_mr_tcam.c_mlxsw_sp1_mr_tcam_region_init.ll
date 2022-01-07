; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_region_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_region_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp1_mr_tcam_region = type { i32, %struct.parman_prio*, %struct.parman*, %struct.mlxsw_sp* }
%struct.parman_prio = type { i32 }
%struct.parman = type { i32 }

@mlxsw_sp1_mr_tcam_region_parman_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_SP_MR_ROUTE_PRIO_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, %struct.mlxsw_sp1_mr_tcam_region*, i32)* @mlxsw_sp1_mr_tcam_region_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_mr_tcam_region_init(%struct.mlxsw_sp* %0, %struct.mlxsw_sp1_mr_tcam_region* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp1_mr_tcam_region*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.parman_prio*, align 8
  %9 = alloca %struct.parman*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp1_mr_tcam_region* %1, %struct.mlxsw_sp1_mr_tcam_region** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %16 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %6, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %16, i32 0, i32 3
  store %struct.mlxsw_sp* %15, %struct.mlxsw_sp** %17, align 8
  %18 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %6, align 8
  %19 = call i32 @mlxsw_sp1_mr_tcam_region_alloc(%struct.mlxsw_sp1_mr_tcam_region* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %77

24:                                               ; preds = %3
  %25 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %6, align 8
  %26 = call %struct.parman* @parman_create(i32* @mlxsw_sp1_mr_tcam_region_parman_ops, %struct.mlxsw_sp1_mr_tcam_region* %25)
  store %struct.parman* %26, %struct.parman** %9, align 8
  %27 = load %struct.parman*, %struct.parman** %9, align 8
  %28 = icmp ne %struct.parman* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %73

32:                                               ; preds = %24
  %33 = load %struct.parman*, %struct.parman** %9, align 8
  %34 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %6, align 8
  %35 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %34, i32 0, i32 2
  store %struct.parman* %33, %struct.parman** %35, align 8
  %36 = load i32, i32* @MLXSW_SP_MR_ROUTE_PRIO_MAX, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.parman_prio* @kmalloc_array(i32 %37, i32 4, i32 %38)
  store %struct.parman_prio* %39, %struct.parman_prio** %8, align 8
  %40 = load %struct.parman_prio*, %struct.parman_prio** %8, align 8
  %41 = icmp ne %struct.parman_prio* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %10, align 4
  br label %70

45:                                               ; preds = %32
  %46 = load %struct.parman_prio*, %struct.parman_prio** %8, align 8
  %47 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %6, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %47, i32 0, i32 1
  store %struct.parman_prio* %46, %struct.parman_prio** %48, align 8
  store i32 0, i32* %11, align 4
  br label %49

49:                                               ; preds = %66, %45
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @MLXSW_SP_MR_ROUTE_PRIO_MAX, align 4
  %52 = add nsw i32 %51, 1
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %6, align 8
  %56 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %55, i32 0, i32 2
  %57 = load %struct.parman*, %struct.parman** %56, align 8
  %58 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %6, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_region, %struct.mlxsw_sp1_mr_tcam_region* %58, i32 0, i32 1
  %60 = load %struct.parman_prio*, %struct.parman_prio** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.parman_prio, %struct.parman_prio* %60, i64 %62
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @parman_prio_init(%struct.parman* %57, %struct.parman_prio* %63, i32 %64)
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %49

69:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %77

70:                                               ; preds = %42
  %71 = load %struct.parman*, %struct.parman** %9, align 8
  %72 = call i32 @parman_destroy(%struct.parman* %71)
  br label %73

73:                                               ; preds = %70, %29
  %74 = load %struct.mlxsw_sp1_mr_tcam_region*, %struct.mlxsw_sp1_mr_tcam_region** %6, align 8
  %75 = call i32 @mlxsw_sp1_mr_tcam_region_free(%struct.mlxsw_sp1_mr_tcam_region* %74)
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %69, %22
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @mlxsw_sp1_mr_tcam_region_alloc(%struct.mlxsw_sp1_mr_tcam_region*) #1

declare dso_local %struct.parman* @parman_create(i32*, %struct.mlxsw_sp1_mr_tcam_region*) #1

declare dso_local %struct.parman_prio* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @parman_prio_init(%struct.parman*, %struct.parman_prio*, i32) #1

declare dso_local i32 @parman_destroy(%struct.parman*) #1

declare dso_local i32 @mlxsw_sp1_mr_tcam_region_free(%struct.mlxsw_sp1_mr_tcam_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
