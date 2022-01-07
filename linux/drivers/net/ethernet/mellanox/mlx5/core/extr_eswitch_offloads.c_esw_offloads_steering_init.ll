; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_offloads_steering_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_offloads_steering_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*)* @esw_offloads_steering_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esw_offloads_steering_init(%struct.mlx5_eswitch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  %7 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @mlx5_core_is_ecpf_esw_manager(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %18 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %5, align 4
  br label %27

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @MLX5_SPECIAL_VPORTS(i32 %24)
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %20, %16
  %28 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @memset(%struct.TYPE_6__* %30, i32 0, i32 4)
  %32 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %33 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %38 = call i32 @esw_create_offloads_acl_tables(%struct.mlx5_eswitch* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %27
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %75

43:                                               ; preds = %27
  %44 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @esw_create_offloads_fdb_tables(%struct.mlx5_eswitch* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %71

50:                                               ; preds = %43
  %51 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @esw_create_offloads_table(%struct.mlx5_eswitch* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %68

57:                                               ; preds = %50
  %58 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @esw_create_vport_rx_group(%struct.mlx5_eswitch* %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %65

64:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %75

65:                                               ; preds = %63
  %66 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %67 = call i32 @esw_destroy_offloads_table(%struct.mlx5_eswitch* %66)
  br label %68

68:                                               ; preds = %65, %56
  %69 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %70 = call i32 @esw_destroy_offloads_fdb_tables(%struct.mlx5_eswitch* %69)
  br label %71

71:                                               ; preds = %68, %49
  %72 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %73 = call i32 @esw_destroy_offloads_acl_tables(%struct.mlx5_eswitch* %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %71, %64, %41
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @mlx5_core_is_ecpf_esw_manager(i32) #1

declare dso_local i32 @MLX5_SPECIAL_VPORTS(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @esw_create_offloads_acl_tables(%struct.mlx5_eswitch*) #1

declare dso_local i32 @esw_create_offloads_fdb_tables(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @esw_create_offloads_table(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @esw_create_vport_rx_group(%struct.mlx5_eswitch*, i32) #1

declare dso_local i32 @esw_destroy_offloads_table(%struct.mlx5_eswitch*) #1

declare dso_local i32 @esw_destroy_offloads_fdb_tables(%struct.mlx5_eswitch*) #1

declare dso_local i32 @esw_destroy_offloads_acl_tables(%struct.mlx5_eswitch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
