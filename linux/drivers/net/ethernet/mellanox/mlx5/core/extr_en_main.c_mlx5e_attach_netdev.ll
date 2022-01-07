; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_attach_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_attach_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, %struct.mlx5e_profile* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5e_profile = type { i32 (%struct.mlx5e_priv.0*)*, i32 (%struct.mlx5e_priv.1*)*, i32 (%struct.mlx5e_priv.2*)*, i32 (%struct.mlx5e_priv.3*)* }
%struct.mlx5e_priv.0 = type opaque
%struct.mlx5e_priv.1 = type opaque
%struct.mlx5e_priv.2 = type opaque
%struct.mlx5e_priv.3 = type opaque

@MLX5E_STATE_DESTROYING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"MLX5E: Reducing number of channels to %d\0A\00", align 1
@MLX5E_INDIR_RQT_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_attach_netdev(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_profile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  %7 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %7, i32 0, i32 4
  %9 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %8, align 8
  store %struct.mlx5e_profile* %9, %struct.mlx5e_profile** %4, align 8
  %10 = load i32, i32* @MLX5E_STATE_DESTROYING, align 4
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 3
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mlx5e_get_max_num_channels(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %1
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @mlx5_core_warn(i32 %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MLX5E_INDIR_RQT_SIZE, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @mlx5e_build_default_indir_rqt(i32 %39, i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %25, %1
  %44 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %44, i32 0, i32 0
  %46 = load i32 (%struct.mlx5e_priv.0*)*, i32 (%struct.mlx5e_priv.0*)** %45, align 8
  %47 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %48 = bitcast %struct.mlx5e_priv* %47 to %struct.mlx5e_priv.0*
  %49 = call i32 %46(%struct.mlx5e_priv.0* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %83

53:                                               ; preds = %43
  %54 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %54, i32 0, i32 1
  %56 = load i32 (%struct.mlx5e_priv.1*)*, i32 (%struct.mlx5e_priv.1*)** %55, align 8
  %57 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %58 = bitcast %struct.mlx5e_priv* %57 to %struct.mlx5e_priv.1*
  %59 = call i32 %56(%struct.mlx5e_priv.1* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %76

63:                                               ; preds = %53
  %64 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %4, align 8
  %65 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %64, i32 0, i32 3
  %66 = load i32 (%struct.mlx5e_priv.3*)*, i32 (%struct.mlx5e_priv.3*)** %65, align 8
  %67 = icmp ne i32 (%struct.mlx5e_priv.3*)* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %4, align 8
  %70 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %69, i32 0, i32 3
  %71 = load i32 (%struct.mlx5e_priv.3*)*, i32 (%struct.mlx5e_priv.3*)** %70, align 8
  %72 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %73 = bitcast %struct.mlx5e_priv* %72 to %struct.mlx5e_priv.3*
  %74 = call i32 %71(%struct.mlx5e_priv.3* %73)
  br label %75

75:                                               ; preds = %68, %63
  store i32 0, i32* %2, align 4
  br label %85

76:                                               ; preds = %62
  %77 = load %struct.mlx5e_profile*, %struct.mlx5e_profile** %4, align 8
  %78 = getelementptr inbounds %struct.mlx5e_profile, %struct.mlx5e_profile* %77, i32 0, i32 2
  %79 = load i32 (%struct.mlx5e_priv.2*)*, i32 (%struct.mlx5e_priv.2*)** %78, align 8
  %80 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %81 = bitcast %struct.mlx5e_priv* %80 to %struct.mlx5e_priv.2*
  %82 = call i32 %79(%struct.mlx5e_priv.2* %81)
  br label %83

83:                                               ; preds = %76, %52
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %83, %75
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_get_max_num_channels(i32) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*, i32) #1

declare dso_local i32 @mlx5e_build_default_indir_rqt(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
