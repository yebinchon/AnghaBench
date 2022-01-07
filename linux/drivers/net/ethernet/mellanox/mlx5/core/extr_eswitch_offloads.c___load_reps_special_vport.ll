; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c___load_reps_special_vport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c___load_reps_special_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_eswitch_rep = type { i32 }

@MLX5_VPORT_UPLINK = common dso_local global i32 0, align 4
@MLX5_VPORT_PF = common dso_local global i32 0, align 4
@MLX5_VPORT_ECPF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*, i32)* @__load_reps_special_vport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__load_reps_special_vport(%struct.mlx5_eswitch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_eswitch_rep*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %9 = load i32, i32* @MLX5_VPORT_UPLINK, align 4
  %10 = call %struct.mlx5_eswitch_rep* @mlx5_eswitch_get_rep(%struct.mlx5_eswitch* %8, i32 %9)
  store %struct.mlx5_eswitch_rep* %10, %struct.mlx5_eswitch_rep** %6, align 8
  %11 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %12 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @__esw_offloads_load_rep(%struct.mlx5_eswitch* %11, %struct.mlx5_eswitch_rep* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %80

19:                                               ; preds = %2
  %20 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @mlx5_core_is_ecpf_esw_manager(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %27 = load i32, i32* @MLX5_VPORT_PF, align 4
  %28 = call %struct.mlx5_eswitch_rep* @mlx5_eswitch_get_rep(%struct.mlx5_eswitch* %26, i32 %27)
  store %struct.mlx5_eswitch_rep* %28, %struct.mlx5_eswitch_rep** %6, align 8
  %29 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %30 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %6, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @__esw_offloads_load_rep(%struct.mlx5_eswitch* %29, %struct.mlx5_eswitch_rep* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %71

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %39 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @mlx5_ecpf_vport_exists(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %45 = load i32, i32* @MLX5_VPORT_ECPF, align 4
  %46 = call %struct.mlx5_eswitch_rep* @mlx5_eswitch_get_rep(%struct.mlx5_eswitch* %44, i32 %45)
  store %struct.mlx5_eswitch_rep* %46, %struct.mlx5_eswitch_rep** %6, align 8
  %47 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %48 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %6, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @__esw_offloads_load_rep(%struct.mlx5_eswitch* %47, %struct.mlx5_eswitch_rep* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %56

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %37
  store i32 0, i32* %3, align 4
  br label %80

56:                                               ; preds = %53
  %57 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @mlx5_core_is_ecpf_esw_manager(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %64 = load i32, i32* @MLX5_VPORT_PF, align 4
  %65 = call %struct.mlx5_eswitch_rep* @mlx5_eswitch_get_rep(%struct.mlx5_eswitch* %63, i32 %64)
  store %struct.mlx5_eswitch_rep* %65, %struct.mlx5_eswitch_rep** %6, align 8
  %66 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %67 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @__esw_offloads_unload_rep(%struct.mlx5_eswitch* %66, %struct.mlx5_eswitch_rep* %67, i32 %68)
  br label %70

70:                                               ; preds = %62, %56
  br label %71

71:                                               ; preds = %70, %35
  %72 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %73 = load i32, i32* @MLX5_VPORT_UPLINK, align 4
  %74 = call %struct.mlx5_eswitch_rep* @mlx5_eswitch_get_rep(%struct.mlx5_eswitch* %72, i32 %73)
  store %struct.mlx5_eswitch_rep* %74, %struct.mlx5_eswitch_rep** %6, align 8
  %75 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %76 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %6, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @__esw_offloads_unload_rep(%struct.mlx5_eswitch* %75, %struct.mlx5_eswitch_rep* %76, i32 %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %71, %55, %17
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.mlx5_eswitch_rep* @mlx5_eswitch_get_rep(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @__esw_offloads_load_rep(%struct.mlx5_eswitch*, %struct.mlx5_eswitch_rep*, i32) #1

declare dso_local i64 @mlx5_core_is_ecpf_esw_manager(i32) #1

declare dso_local i64 @mlx5_ecpf_vport_exists(i32) #1

declare dso_local i32 @__esw_offloads_unload_rep(%struct.mlx5_eswitch*, %struct.mlx5_eswitch_rep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
