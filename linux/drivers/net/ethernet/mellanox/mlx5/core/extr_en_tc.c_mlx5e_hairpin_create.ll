; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_hairpin = type { i32, %struct.mlx5_hairpin*, %struct.mlx5e_priv*, %struct.mlx5_core_dev* }
%struct.mlx5_hairpin = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_priv = type { i32, %struct.mlx5_core_dev* }
%struct.mlx5_hairpin_params = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5e_hairpin* (%struct.mlx5e_priv*, %struct.mlx5_hairpin_params*, i32)* @mlx5e_hairpin_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5e_hairpin* @mlx5e_hairpin_create(%struct.mlx5e_priv* %0, %struct.mlx5_hairpin_params* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_hairpin*, align 8
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5_hairpin_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_core_dev*, align 8
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca %struct.mlx5e_hairpin*, align 8
  %11 = alloca %struct.mlx5_hairpin*, align 8
  %12 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.mlx5_hairpin_params* %1, %struct.mlx5_hairpin_params** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mlx5e_hairpin* @kzalloc(i32 32, i32 %13)
  store %struct.mlx5e_hairpin* %14, %struct.mlx5e_hairpin** %10, align 8
  %15 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %10, align 8
  %16 = icmp ne %struct.mlx5e_hairpin* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.mlx5e_hairpin* @ERR_PTR(i32 %19)
  store %struct.mlx5e_hairpin* %20, %struct.mlx5e_hairpin** %4, align 8
  br label %88

21:                                               ; preds = %3
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %22, i32 0, i32 1
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %23, align 8
  store %struct.mlx5_core_dev* %24, %struct.mlx5_core_dev** %8, align 8
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_net(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.mlx5_core_dev* @mlx5e_hairpin_get_mdev(i32 %28, i32 %29)
  store %struct.mlx5_core_dev* %30, %struct.mlx5_core_dev** %9, align 8
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %33 = load %struct.mlx5_hairpin_params*, %struct.mlx5_hairpin_params** %6, align 8
  %34 = call %struct.mlx5_hairpin* @mlx5_core_hairpin_create(%struct.mlx5_core_dev* %31, %struct.mlx5_core_dev* %32, %struct.mlx5_hairpin_params* %33)
  store %struct.mlx5_hairpin* %34, %struct.mlx5_hairpin** %11, align 8
  %35 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %11, align 8
  %36 = call i64 @IS_ERR(%struct.mlx5_hairpin* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %21
  %39 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %11, align 8
  %40 = call i32 @PTR_ERR(%struct.mlx5_hairpin* %39)
  store i32 %40, i32* %12, align 4
  br label %83

41:                                               ; preds = %21
  %42 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %11, align 8
  %43 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %10, align 8
  %44 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %43, i32 0, i32 1
  store %struct.mlx5_hairpin* %42, %struct.mlx5_hairpin** %44, align 8
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  %46 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %10, align 8
  %47 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %46, i32 0, i32 3
  store %struct.mlx5_core_dev* %45, %struct.mlx5_core_dev** %47, align 8
  %48 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %49 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %10, align 8
  %50 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %49, i32 0, i32 2
  store %struct.mlx5e_priv* %48, %struct.mlx5e_priv** %50, align 8
  %51 = load %struct.mlx5_hairpin_params*, %struct.mlx5_hairpin_params** %6, align 8
  %52 = getelementptr inbounds %struct.mlx5_hairpin_params, %struct.mlx5_hairpin_params* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %10, align 8
  %55 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %10, align 8
  %57 = call i32 @mlx5e_hairpin_create_transport(%struct.mlx5e_hairpin* %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %41
  br label %78

61:                                               ; preds = %41
  %62 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %10, align 8
  %63 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %10, align 8
  %68 = call i32 @mlx5e_hairpin_rss_init(%struct.mlx5e_hairpin* %67)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %75

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %61
  %74 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %10, align 8
  store %struct.mlx5e_hairpin* %74, %struct.mlx5e_hairpin** %4, align 8
  br label %88

75:                                               ; preds = %71
  %76 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %10, align 8
  %77 = call i32 @mlx5e_hairpin_destroy_transport(%struct.mlx5e_hairpin* %76)
  br label %78

78:                                               ; preds = %75, %60
  %79 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %10, align 8
  %80 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %79, i32 0, i32 1
  %81 = load %struct.mlx5_hairpin*, %struct.mlx5_hairpin** %80, align 8
  %82 = call i32 @mlx5_core_hairpin_destroy(%struct.mlx5_hairpin* %81)
  br label %83

83:                                               ; preds = %78, %38
  %84 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %10, align 8
  %85 = call i32 @kfree(%struct.mlx5e_hairpin* %84)
  %86 = load i32, i32* %12, align 4
  %87 = call %struct.mlx5e_hairpin* @ERR_PTR(i32 %86)
  store %struct.mlx5e_hairpin* %87, %struct.mlx5e_hairpin** %4, align 8
  br label %88

88:                                               ; preds = %83, %73, %17
  %89 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %4, align 8
  ret %struct.mlx5e_hairpin* %89
}

declare dso_local %struct.mlx5e_hairpin* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5e_hairpin* @ERR_PTR(i32) #1

declare dso_local %struct.mlx5_core_dev* @mlx5e_hairpin_get_mdev(i32, i32) #1

declare dso_local i32 @dev_net(i32) #1

declare dso_local %struct.mlx5_hairpin* @mlx5_core_hairpin_create(%struct.mlx5_core_dev*, %struct.mlx5_core_dev*, %struct.mlx5_hairpin_params*) #1

declare dso_local i64 @IS_ERR(%struct.mlx5_hairpin*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx5_hairpin*) #1

declare dso_local i32 @mlx5e_hairpin_create_transport(%struct.mlx5e_hairpin*) #1

declare dso_local i32 @mlx5e_hairpin_rss_init(%struct.mlx5e_hairpin*) #1

declare dso_local i32 @mlx5e_hairpin_destroy_transport(%struct.mlx5e_hairpin*) #1

declare dso_local i32 @mlx5_core_hairpin_destroy(%struct.mlx5_hairpin*) #1

declare dso_local i32 @kfree(%struct.mlx5e_hairpin*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
